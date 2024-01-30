import 'package:fpdart/fpdart.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:magic_hat_task/data/core/model/failure/failure.dart';
import 'package:magic_hat_task/data/core/service/helper/helper_data.dart';
import 'package:magic_hat_task/data/core/utils/crashlytics.dart';
import 'package:magic_hat_task/data/extensions/fpdart/task_either.dart';

abstract class Store<Input, Data> {
  final LazyBox box;

  Store(this.box);

  Task<bool> hasData(Input input);

  TaskEither<Failure, Data> getData(Input input);

  TaskEither<Failure, Data> saveData(Input input, Data data);

  Stream<Either<Failure, Data>> watch(
    Input input, {
    TaskEither<Failure, Data> Function()? onGetFromRemote,
  });
}

abstract class ListStore<Input, Data, Helper extends HelperData<Data>> {
  final LazyBox box;

  ListStore(this.box);

  Task<bool> hasData(Input input);

  TaskEither<Failure, List<Data>> getData(Input input);

  TaskEither<Failure, List<Data>> saveData(Input input, Helper data);

  Stream<Either<Failure, List<Data>>> watch(Input input);
}

class BoxStore<Input, Data> implements Store<Input, Data> {
  final dynamic Function(Input) key;

  @override
  final LazyBox<Data> box;

  BoxStore(this.key, this.box);

  @override
  Task<bool> hasData(Input input) =>
      getData(input).match((l) => false, (r) => true);

  @override
  TaskEither<Failure, Data> getData(Input input) {
    onError(Object error, StackTrace stackTrace) => catchBoxCrash(
          error,
          stackTrace,
          ' while getting data for type $Data. Input: $input',
        );

    return TaskEither.tryCatch(
      () => box.get(key(input)),
      onError,
    ).onNull((r) => const Failure.empty());
  }

  @override
  TaskEither<Failure, Data> saveData(Input input, Data data) {
    onError(Object error, StackTrace stackTrace) => catchBoxCrash(
          error,
          stackTrace,
          ' while saving data for type $Data. Data: $data; Input: $input',
        );

    return TaskEither.tryCatch(
      () => box.put(key(input), data),
      onError,
    ).call(getData(input));
  }

  @override
  Stream<Either<Failure, Data>> watch(
    Input input, {
    TaskEither<Failure, Data> Function()? onGetFromRemote,
  }) async* {
    getRemoteOnLeft(Failure l) => onGetFromRemote == null
        ? TaskEither<Failure, Data>.left(l)
        : onGetFromRemote.call();

    final data = await getData(input)
        .orElse(getRemoteOnLeft)
        .run()
        .then((value) => value.fold((l) => null, id));

    yield data == null
        ? Either.left(const Failure.empty())
        : Either.right(data);

    yield* box
        .watch(key: key(input))
        .map((event) => event.value)
        .where((event) => event != null)
        .map((event) => Either.right(event as Data));
  }

  TaskEither<Failure, void> clear() {
    onError(Object error, StackTrace stackTrace) => catchBoxCrash(
          error,
          stackTrace,
          'while removing data for type $Data from local',
        );

    return TaskEither.tryCatch(
      () => box.clear(),
      onError,
    );
  }
}

extension BoxStoreEx<Data> on BoxStore<Unit, Data> {
  TaskEither<Failure, Data> getData0() => getData(unit);

  TaskEither<Failure, Data> saveData0(Data data) => saveData(unit, data);

  Stream<Either<Failure, Data>> watch0() => watch(unit);
}

class ListBoxStore<Input, Data, Helper extends HelperData<Data>>
    implements ListStore<Input, Data, Helper> {
  final dynamic Function(Input) key;

  @override
  final LazyBox<HelperData<Data>> box;

  ListBoxStore(this.key, this.box);

  @override
  Task<bool> hasData(Input input) =>
      getData(input).match((l) => false, (r) => true);

  @override
  TaskEither<Failure, List<Data>> getData(Input input) {
    onError(Object error, StackTrace stackTrace) => catchBoxCrash(
          error,
          stackTrace,
          ' while getting data for type $Data. Input: $input',
        );

    return TaskEither.tryCatch(
      () => box.get(key(input)),
      onError,
    ).onNull((r) => const Failure.empty()).map((r) => r.models);
  }

  @override
  TaskEither<Failure, List<Data>> saveData(
    Input input,
    Helper data,
  ) {
    onError(Object error, StackTrace stackTrace) => catchBoxCrash(
          error,
          stackTrace,
          ' while saving data for type $Data. Data: $data; Input: $input',
        );

    return TaskEither.tryCatch(
      () => box.put(key(input), data),
      onError,
    ).call(getData(input));
  }

  @override
  Stream<Either<Failure, List<Data>>> watch(
    Input input, {
    TaskEither<Failure, List<Data>> Function()? onGetFromRemote,
  }) async* {
    getRemoteOnLeft(Failure l) => onGetFromRemote == null
        ? TaskEither<Failure, List<Data>>.left(l)
        : onGetFromRemote.call();

    final data = await getData(input)
        .orElse(getRemoteOnLeft)
        .run()
        .then((value) => value.fold((l) => null, id));

    yield data == null
        ? Either.left(const Failure.empty())
        : Either.right(data);

    yield* box
        .watch(key: key(input))
        .map((event) => event.value)
        .where((event) => event != null)
        .map((event) => Either.right((event as Helper).models));
  }

  Future<void> clear() => box.clear();
}

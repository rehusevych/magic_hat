import 'package:fpdart/fpdart.dart';

extension TaskEitherExtension<L, R> on TaskEither<L, R?> {
  TaskEither<L, R> onNull(L Function(R? r) onNull) =>
      flatMap((r) => r != null ? TaskEither.of(r) : TaskEither.left(onNull(r)));

  TaskEither<TL, R> mapLeft<TL>(TL Function(L l) orElse) => TaskEither(
        () async => (await run()).match(
            (l) => TaskEither<TL, R>.left(orElse(l)).run(),
            (r) => TaskEither<TL, R>.right(r as R).run()),
      );
}

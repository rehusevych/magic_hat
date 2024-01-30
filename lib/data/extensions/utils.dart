extension LetEx<T> on T {
  R let<R>(R Function(T it) f) => f(this);
}

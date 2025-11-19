abstract class Either<L, R> {
  const Either();

  B onResult<B>(B Function(L l) ifLeft, B Function(R r) ifRight);

  dynamic get result => onResult((value) => value, (value) => value);
}

class Right<L, R> extends Either<L, R> {
  final R _r;

  Right(this._r);

  R get value => _r;

  @override
  bool operator ==(Object other) => other is Right && other._r == _r;

  @override
  int get hashCode => _r.hashCode;

  @override
  B onResult<B>(B Function(L l) ifLeft, B Function(R r) ifRight) =>
      ifRight.call(_r);
}

class Left<L, R> extends Either<L, R> {
  final L _l;

  Left(this._l);

  @override
  bool operator ==(Object other) => other is Left && other._l == _l;

  @override
  int get hashCode => _l.hashCode;

  @override
  B onResult<B>(B Function(L l) ifLeft, B Function(R r) ifRight) =>
      ifLeft.call(_l);
}

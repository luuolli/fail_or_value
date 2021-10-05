abstract class FailOrValue<F, V> {
  get value;
  bool isFail();
  bool isValue();
  bool get isEmpty => value == null;
}

class Fail<F, V> extends FailOrValue<F, V> {
  final F? _f;

  @override
  F? get value => _f;

  Fail(this._f);

  @override
  bool isFail() => true;

  @override
  bool isValue() => false;
}

class Value<F, V> extends FailOrValue<F, V> {
  final V? _v;

  @override
  V? get value => _v;

  Value(this._v);

  @override
  bool isFail() => false;

  @override
  bool isValue() => true;
}

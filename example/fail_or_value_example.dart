import 'package:fail_or_value/fail_or_value.dart';

void main() {
  var response = getResponse(isSuccess: false);

  if (response.isFail()) {
    print(response.value);
  }
  if (response.isValue()) {
    print(response.value);
  }
}

class Error implements Exception {
  String message;

  Error(this.message);

  @override
  String toString() {
    return "Error($message).";
  }
}

FailOrValue<Exception, String> getResponse({required bool isSuccess}) {
  if (!isSuccess) return Fail(Error("Isso é um erro"));
  return Value("Isso é o valor");
}

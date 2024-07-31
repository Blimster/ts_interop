class TranspilerConfig {
  final Map<String, String> libs;

  TranspilerConfig._(this.libs);

  factory TranspilerConfig({Map<String, String> libs = const {}}) {
    return TranspilerConfig._(
      Map.of(libs),
    );
  }

  String? libForType(String? typeName) {
    if (typeName == null) {
      return null;
    }
    return libs[typeName];
  }
}

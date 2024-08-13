import 'package:code_builder/code_builder.dart';

import '../../ts_interop.dart';

sealed class DartNode<S extends Spec> {
  S toSpec(Dependencies config);
}

class DartSpec<S extends Spec> extends DartNode<S> {
  final S spec;

  DartSpec(this.spec);

  @override
  S toSpec(Dependencies config) => spec;
}

class DartParameter extends DartNode<TypeReference> {
  final Parameter parameter;
  final bool isNullable;

  DartParameter(this.parameter, this.isNullable);

  @override
  TypeReference toSpec(Dependencies config) {
    return TypeReference((builder) {
      builder.symbol = parameter.type is FunctionType ? 'JSFunction' : parameter.type?.symbol;
      builder.url = config.libraryUrlForType(builder.symbol);
      builder.isNullable = parameter.required == false;
      builder.types.addAll(parameter.types);
    });
  }
}

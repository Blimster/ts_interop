import 'package:code_builder/code_builder.dart';

import '../../ts_interop.dart';

sealed class DartNode<S extends Spec> {
  final TsNodeMeta meta;

  DartNode({TsNodeMeta? meta}) : meta = meta ?? TsNodeMeta();

  S toSpec(Dependencies dependencies);
}

class DartSpec<S extends Spec> extends DartNode<S> {
  final S spec;

  DartSpec(this.spec, {super.meta});

  @override
  S toSpec(Dependencies dependencies) => spec;
}

class DartParameter extends DartNode<TypeReference> {
  final Parameter parameter;
  final bool isNullable;

  DartParameter(this.parameter, this.isNullable, {super.meta});

  @override
  TypeReference toSpec(Dependencies dependencies) {
    return TypeReference((builder) {
      builder.symbol = parameter.type is FunctionType ? 'JSFunction' : parameter.type?.symbol;
      builder.url = dependencies.libraryUrlForType(builder.symbol);
      builder.isNullable = parameter.required == false;
      builder.types.addAll(parameter.types);
    });
  }
}

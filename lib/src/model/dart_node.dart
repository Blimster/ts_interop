import 'package:code_builder/code_builder.dart';

import '../../ts_interop.dart';

sealed class DartNode<S extends Spec> {
  final TsNode tsNode;

  DartNode(this.tsNode);

  static empty<S extends Spec>(TsNode tsNode) {
    return DartFragment<S>([], tsNode);
  }

  S? toSpec(Dependencies dependencies);

  List<S> toSpecs(Dependencies dependencies);
}

class DartSpec<S extends Spec> extends DartNode<S> {
  final S spec;

  DartSpec(this.spec, super.tsNode);

  @override
  S toSpec(Dependencies dependencies) => spec;

  @override
  List<S> toSpecs(Dependencies dependencies) => [spec];
}

extension SpecToDartNode on Spec {
  DartNode<T> toDartNode<T extends Spec>(TsNode tsNode) {
    return DartSpec(this as T, tsNode);
  }
}

class DartParameter extends DartNode<TypeReference> {
  final Parameter parameter;
  final bool isNullable;

  DartParameter(this.parameter, this.isNullable, super.tsNode);

  @override
  TypeReference toSpec(Dependencies dependencies) {
    return TypeReference((builder) {
      builder.symbol = parameter.type is FunctionType ? 'JSFunction' : parameter.type?.symbol;
      builder.url = dependencies.libraryUrlForType(builder.symbol);
      builder.isNullable = isNullable;
      builder.types.addAll(parameter.types);
    });
  }

  @override
  List<TypeReference> toSpecs(Dependencies dependencies) {
    return [toSpec(dependencies)];
  }
}

extension ParameterToDartNode on Parameter {
  DartParameter toDartNode(TsNode tsNode, [bool isNullable = false]) {
    return DartParameter(this, isNullable, tsNode);
  }
}

class DartFragment<S extends Spec> extends DartNode<S> {
  final List<S> specs;

  DartFragment(this.specs, super.tsNode);

  @override
  S? toSpec(Dependencies dependencies) {
    return switch (specs.length) {
      0 => null,
      1 => specs.first,
      _ => throw StateError('Fragment must contain exactly 1 spec! specs=${specs.length}'),
    };
  }

  @override
  List<S> toSpecs(Dependencies dependencies) {
    return specs;
  }
}

extension ListToDartNode<S extends Spec> on Iterable<S> {
  DartFragment<S> toDartNode(TsNode tsNode) {
    return DartFragment<S>(List.of(this), tsNode);
  }
}

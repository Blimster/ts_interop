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

  String toCode() => tsNode.toCode();
}

final class DartUnsupported<S extends Spec> extends DartNode<S> {
  DartUnsupported(super.tsNode);

  @override
  S toSpec(Dependencies dependencies) {
    throw UnimplementedError();
  }

  @override
  List<S> toSpecs(Dependencies dependencies) {
    return [];
  }

  DartNode<S> toEmpty() => DartNode.empty<S>(tsNode);
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

class DartConstructor extends DartNode<Reference> {
  final Constructor constructor;

  DartConstructor(this.constructor, super.tsNode);

  @override
  Reference? toSpec(Dependencies dependencies) => null;

  @override
  List<Reference> toSpecs(Dependencies dependencies) => [];
}

extension ConstructorToDartNode on Constructor {
  DartConstructor toDartNode(TsNode tsNode) {
    return DartConstructor(this, tsNode);
  }
}

class DartParameter extends DartNode<Reference> {
  final Parameter parameter;
  final bool isNullable;

  DartParameter(this.parameter, this.isNullable, super.tsNode);

  @override
  Reference? toSpec(Dependencies dependencies) => null;

  @override
  List<Reference> toSpecs(Dependencies dependencies) => [];
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

# ts_interop
Creates Dart interop types for JavaScript based on TypeScript declaration files.

## Introduction

- Read TypeScript AST of a .d.ts file and write it as a JSON structure.
- Read JSON structure in Dart to a tree of `TsNode` objects.
- Sanitize the tree to fix types mappable to the Dart type system.
- Transpile tree to a tree of `DartNode` objects.
  - Mostly `Spec` objects from the `code_builder` package.
- Write Dart source to an output file.

## TODO

- `WithType` trait for `TsNode`
- Refactor mappers to use `WithTypeArguments` and `WithTypeParameters`
- Refactor mappers to interfaces/classes to support callbacks
- Notify mappers about changes in the `TsNode` tree

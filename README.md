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

- Merge types in dependencies into lib types
- Fix TODOs for merge delcaration
- Support for constructor
- Support for call Signatures
- Add docs at many types
- Scrap properties and methods from types from pub.dev and api.dart.dev
- Export sanitized TsNode tree to JSON
- Only return 1 DartNode per TsNode in Transpiler

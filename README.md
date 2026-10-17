# ts_interop
Creates Dart interop types for JavaScript based on TypeScript declaration files.

## Introduction

- Read TypeScript AST of a .d.ts file and write it as a JSON structure (done in [ts-ast-export](https://github.com/Blimster/ts-ast-export)).
- Read JSON structure in Dart to a tree of `TsNode` objects.
- Sanitize the tree to fix types not mappable to the Dart type system.
- Transpile tree to a tree of `DartNode` objects.
  - Mostly `Spec` objects from the `code_builder` package.
- Write Dart source to an output file.

## Command line interface

This packages provides the cli command `tsigen`. Install this packages globally to activate the command in your terminal.

`dart pub global activate ts_interop`

## Using this package as a dependency

If the cli tool does not provide enough features, you can use it as a dependency.

## Three.js rotating cube

Compile the minimal browser example and serve `example/web` over HTTP:

```sh
dart pub get
dart compile js example/web/main.dart -o example/web/main.dart.js
cd example/web
python3 -m http.server
```

Open `http://localhost:8000` in a browser. The page loads Three.js from jsDelivr and renders a rotating cube.

## Roadmap

- Use Dart core types like String num etc. where posible
- Create types for unions and anonymous functions like https://gist.github.com/nikeokoronkwo/dd83becbb6cee4d98f63556ba108e14b
- Replace `meta.json` by translating Dart code into input AST
- Integrate [ts-ast-export](https://github.com/Blimster/ts-ast-export) into cli tool.

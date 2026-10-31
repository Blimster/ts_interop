# ES2023

Dart bindings for the ECMAScript 2023 specification.

## Overview

ES2023 provides Dart bindings for the ECMAScript 2023 specification, enabling developers to work with the core JavaScript types and APIs from within Dart applications.

## Installation

Add this package to your `pubspec.yaml`:

```yaml
dependencies:
  es2023: ^0.1.0
```

Then run:

```bash
dart pub get
```

## Usage

### Basic Example

```dart
import 'dart:js_interop';

import 'package:es2023/es2023.dart';
import 'package:web/web.dart';

void main() {
  window.setInterval(
    (() => displayTime()).toJS,
    null,
    100,
  );
}

void displayTime() {
  final root = document.querySelector('#root');
  final now = Date.$2();
  root?.textContent =
      '${now.toLocaleDateString$2()} ${now.toLocaleTimeString$2()}';
}
```

The example above shows how to create an instance of the JavaScript type `Date` and use its methods `toLocaleDateString()` and `toLocaleTimeString()`.

In the Dart code, the methods have a suffix `$2`. This is added in case that the method is overloading in JavaScript, which is not supported in Dart.

To run the example (requires package `webdev` globally installed):

```bash
webdev serve example
```

## How the package is created

The bindings are generated using the packages
- [ts-ast-export](https://github.com/Blimster/ts-ast-export): Generates a representation of a TypeScript definition file in JSON format.
- [ts_interop](https://github.com/Blimster/ts_interop): Creates Dart bindings from the JSON file.

Both packages are work in progress. 

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

- 📖 [Documentation](https://pub.dev/documentation/es2023/latest/)
- 🐛 [Issue Tracker](https://github.com/blimster/es2023/issues)
- 💬 [Discussions](https://github.com/blimster/es2023/discussions)

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for a detailed history of changes.

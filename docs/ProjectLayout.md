# project layout

How to structure dart projects?

## overview

A dart project is called "dart package".
Each "package" should contain a pubspec.yaml file .

## example (cli app)

```
hello-cli
    bin
        main.dart
        main.exe
    lib
        hello_cli.dart
    test
        hello_cli_test.dart

    pubspec.yaml
```
```
# compile native
$ dart2native hello-cli/bin/main.dart
# Generated: hello-cli/bin/main.exe
```


## intellij
New Module ... -> "Dart" 
 - -> "Dart package" -> "OK"
 - -> "Dart Cli App" -> "OK"

## docs

- https://medium.com/learn-dart/2-how-to-structure-a-dart-project-d5a55e66bfa1
- https://dart.dev/tools/pub/package-layout
- https://dart.dev/guides/libraries/create-library-packages

# project layout

How to structure dart projects?

see:
- https://medium.com/learn-dart/2-how-to-structure-a-dart-project-d5a55e66bfa1
- https://dart.dev/tools/pub/package-layout
- https://dart.dev/guides/libraries/create-library-packages

## intro (dart package, pubspec.yaml)

- A dart project is called "dart package".
- Each "package" should contain a pubspec.yaml file .
- Use "$ pub get" to install/update dependencies defined in "pubspec.yaml" .
- dependencies are hosted here: https://pub.dev/

## package types (app - vs - library)

A package is of type:

- app 
- library

## create layout from intellij
New Module ... -> "Dart" 
 - -> "Dart package" -> "OK"
 - -> "Dart Cli App" -> "OK"

# create layout from cli (stagehand) 
- stagehand is a project generator
```
# install stagehand (global)
$ pub global activate stagehand

# use stagehand
$ mkdir foo && cd foo
$ stagehand --help
$ stagehand console-full
```

## example (hello-cli app)

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





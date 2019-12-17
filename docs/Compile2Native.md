# Compile to native

Note: Cross-platform-compile is not supported yet.

## docs
- https://dart.dev/tools/dart2native
- https://dart.dev/platforms

## example

```
$ dart2native hello-cli/bin/main.dart
# outputs: Generated: learn-dart/hello-cli/bin/main.exe

$ ./hello-cli/bin/main.exe
# outputs: Hello world: 42!

```

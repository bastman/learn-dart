import 'package:args/command_runner.dart';
import 'package:cmd_runner_cli/cmd_runner_cli.dart' as cmd_runner_cli;

import 'dart:io';

import 'package:args/args.dart';

void main(List<String> arguments) {
  var runner = CommandRunner("git", "Distributed version control.")
  ..addCommand(CommitCommand())
  ..addCommand(StashCommand())
  ;
  runner.run(arguments).catchError((error) {
    if (error is! UsageException) throw error;
    print(error);
    exit(64); // Exit code 64 indicates a usage error.
  });

}


class CommitCommand extends Command {
  // The [name] and [description] properties must be defined by every
  // subclass.
  final name = "commit";
  final description = "Record changes to the repository.";

  CommitCommand() {
    // [argParser] is automatically created by the parent class.
    argParser.addFlag('all', abbr: 'a');
  }

  // [run] may also return a Future.
  void run() {
    // [argResults] is set before [run()] is called and contains the options
    // passed to this command.
    print(argResults['all']);
  }
}

class StashCommand extends Command {
  final String name = "stash";
  final String description = "Stash changes in the working directory.";

  StashCommand() {
    // addSubcommand(StashSaveCommand());
    // addSubcommand(StashListCommand());
  }
}


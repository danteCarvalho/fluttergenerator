import 'dart:convert';
import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:flutter_generator/app/dart_templates.dart';
import 'package:path/path.dart';
import 'package:recase/recase.dart';
import 'package:simple_prompter/simple_prompter.dart';

import 'app/flutter_templates.dart';
import 'dart_init64.dart';
import 'flutter_init64.dart';

void main(List args) async {
  var current = Directory.current;

  if (args.isNotEmpty) {
    var encoder = ZipFileEncoder();
    encoder.zipDirectory(Directory("lib/app/dart_init/"), filename: 'out.zip');
    var file = File("out.zip");
    var readAsBytesSync = file.readAsBytesSync();
    var base64encode = base64Encode(readAsBytesSync);
    File file2 = File("lib/dart_init64.dart");
    file2.writeAsStringSync("String dartInit = '$base64encode';");
    file.deleteSync();

    encoder = ZipFileEncoder();
    encoder.zipDirectory(Directory("lib/app/flutter_init/"), filename: 'out.zip');
    file = File("out.zip");
    readAsBytesSync = file.readAsBytesSync();
    base64encode = base64Encode(readAsBytesSync);
    file2 = File("lib/flutter_init64.dart");
    file2.writeAsStringSync("String flutterInit = '$base64encode';");
    file.deleteSync();
    print("Arquivos gerados");
    exit(0);
  }

  pastaCorreta() async {
    var list = current.list();
    var where = list.where((event) {
      var name = basename(event.path);
      if (name == 'README.md') {
        return true;
      }
      return false;
    });
    if (await where.length != 1) {
      print('pasta errada');
      exit(0);
    }
  }

  await pastaCorreta();

  var prompter = Prompter();
  var options = <Option>[
    Option(label: 'Flutter Init', value: 'initFlutter'),
    Option(label: 'Flutter Module', value: 'module'),
    Option(label: 'Flutter Widget', value: 'widget'),
    Option(label: 'Flutter ViewModel', value: 'flutterViewModel'),
    Option(label: 'Flutter Model', value: 'flutterModel'),
    Option(label: 'Flutter Model Request', value: 'modelRequest'),
    Option(label: 'Dart Init', value: 'initDart'),
    Option(label: 'Dart Model', value: 'dartModel'),
    Option(label: 'Dart Model Endpoint', value: 'modelEndpoint'),
    Option(label: 'clean', value: 'clean'),
  ];
  String option = prompter.askMultiple('what to generate?', options);

  print('Name:');
  String? name = stdin.readLineSync()?.toLowerCase().trim();
  if (name == null) {
    exit(0);
  }
  if (name.contains(' ')) {
    exit(0);
  }
  print('Folder:');
  String? folder = stdin.readLineSync()?.toLowerCase().trim();
  if (folder == null) {
    exit(0);
  }
  if (folder.contains(' ')) {
    exit(0);
  }

  if (option == 'module') {
    var directory = Directory(current.path + '/lib/app/' + folder + '/' + name);
    await directory.create(recursive: true);
    var module = FlutterTemplates.module.replaceAll('wwww', name).replaceAll('WWWW', ReCase(name).pascalCase);
    var page = FlutterTemplates.page.replaceAll('wwww', name).replaceAll('WWWW', ReCase(name).pascalCase);
    var store = FlutterTemplates.store.replaceAll('wwww', name).replaceAll('WWWW', ReCase(name).pascalCase);
    var moduleFile = File(directory.path + '/' + name + '_module.dart');
    await moduleFile.writeAsString(module);
    var pageFile = File(directory.path + '/' + name + '_page.dart');
    await pageFile.writeAsString(page);
    var storeFile = File(directory.path + '/' + name + '_store.dart');
    await storeFile.writeAsString(store);
    print('done');
  } else if (option == 'widget') {
    var directory = Directory(current.path + '/lib/app/' + folder + '/' + name);
    await directory.create(recursive: true);
    var comStore = prompter.askBinary("With store?");
    if (comStore) {
      var widgetWithStore = FlutterTemplates.widgetWithStore.replaceAll('wwww', name).replaceAll('WWWW', ReCase(name).pascalCase);
      var widgetFile = File(directory.path + '/' + name + '_widget.dart');
      await widgetFile.writeAsString(widgetWithStore);
      var store = FlutterTemplates.store.replaceAll('wwww', name).replaceAll('WWWW', ReCase(name).pascalCase);
      var storeFile = File(directory.path + '/' + name + '_store.dart');
      await storeFile.writeAsString(store);
    } else {
      var widget = FlutterTemplates.widget.replaceAll('WWWW', ReCase(name).pascalCase);
      var widgetFile = File(directory.path + '/' + name + '_widget.dart');
      await widgetFile.writeAsString(widget);
    }
    print('done');
  } else if (option == 'flutterViewModel') {
    var directory = Directory(current.path + '/lib/app/' + folder + '/' + name);
    await directory.create(recursive: true);
    var frontModel = FlutterTemplates.flutterViewModel.replaceAll('wwww', name).replaceAll('WWWW', ReCase(name).pascalCase);
    var moduleFile = File(directory.path + '/' + name + '_view.dart');
    await moduleFile.writeAsString(frontModel);
    print('done');
  } else if (option == 'flutterModel') {
    var directory = Directory(current.path + '/lib/app/' + folder + '/' + name);
    await directory.create(recursive: true);
    var frontModel = FlutterTemplates.flutterModel.replaceAll('wwww', name).replaceAll('WWWW', ReCase(name).pascalCase);
    var moduleFile = File(directory.path + '/' + name + '.dart');
    await moduleFile.writeAsString(frontModel);
    print('done');
  } else if (option == 'dartModel') {
    var directory = Directory(current.path + '/lib/' + folder + '/' + name);
    await directory.create(recursive: true);
    var frontModel = DartTemplates.dartModel.replaceAll('wwww', name).replaceAll('WWWW', ReCase(name).pascalCase);
    var moduleFile = File(directory.path + '/' + name + '.dart');
    await moduleFile.writeAsString(frontModel);
    print('done');
  } else if (option == 'modelEndpoint') {
    var directory = Directory(current.path + '/lib/' + folder + '/' + name);
    await directory.create(recursive: true);
    var addEdPoint = DartTemplates.addEndPoint.replaceAll('wwww', name).replaceAll('WWWW', ReCase(name).pascalCase);
    var editEdPoint = DartTemplates.editEndPoint.replaceAll('wwww', name).replaceAll('WWWW', ReCase(name).pascalCase);
    File(directory.path + '/add_' + name + '.dart').writeAsString(addEdPoint);
    File(directory.path + '/edit_' + name + '.dart').writeAsString(editEdPoint);
    print('done');
  } else if (option == 'modelRequest') {
    var directory = Directory(current.path + '/lib/app/' + folder + '/' + name);
    await directory.create(recursive: true);
    var add = FlutterTemplates.modelAddRequest.replaceAll('wwww', name).replaceAll('WWWW', ReCase(name).pascalCase);
    var edit = FlutterTemplates.modelEditRequest.replaceAll('wwww', name).replaceAll('WWWW', ReCase(name).pascalCase);
    File(directory.path + '/add_' + name + '.dart').writeAsString(add);
    File(directory.path + '/edit_' + name + '.dart').writeAsString(edit);
    print('done');
  }
  else if (option == 'initFlutter') {
    var resposta = prompter.askBinary("Delete files? (lib folder)");
    if (resposta == false) {
      exit(0);
    }
    var lib = Directory(current.path + '/lib/');
    var lock = File(current.path + '/pubspec.lock');
    var yaml = File(current.path + '/pubspec.yaml');
    var packages = File(current.path + '/.packages');
    var plugins = File(current.path + '/.flutter-plugins');
    var pluginsDep = File(current.path + '/.flutter-plugins-dependencies');
    lib.existsSync() ? lib.deleteSync(recursive: true) : 0;
    lock.existsSync() ? lock.deleteSync() : 0;
    yaml.existsSync() ? yaml.deleteSync() : 0;
    packages.existsSync() ? packages.deleteSync() : 0;
    plugins.existsSync() ? plugins.deleteSync() : 0;
    pluginsDep.existsSync() ? pluginsDep.deleteSync() : 0;
    var base64decode = base64Decode(flutterInit);
    var archive = ZipDecoder().decodeBytes(base64decode);
    for (final file in archive) {
      final filename = file.name;
      if (file.isFile) {
        final data = file.content as List<int>;
        File(filename)
          ..createSync(recursive: true)
          ..writeAsBytesSync(data);
      } else {
        Directory(filename).create(recursive: true);
      }
    }
    print('done');
  } else if (option == 'initDart') {
    var resposta = prompter.askBinary("Delete files? (lib/bin folder)");
    if (resposta == false) {
      exit(0);
    }
    var lib = Directory(current.path + '/lib/');
    var bin = Directory(current.path + '/bin/');
    var lock = File(current.path + '/pubspec.lock');
    var yaml = File(current.path + '/pubspec.yaml');
    var packages = File(current.path + '/.packages');
    lib.existsSync() ? lib.deleteSync(recursive: true) : 0;
    bin.existsSync() ? bin.deleteSync(recursive: true) : 0;
    lock.existsSync() ? lock.deleteSync() : 0;
    yaml.existsSync() ? yaml.deleteSync() : 0;
    packages.existsSync() ? packages.deleteSync() : 0;
    var base64decode = base64Decode(dartInit);
    var archive = ZipDecoder().decodeBytes(base64decode);
    for (final file in archive) {
      final filename = file.name;
      if (file.isFile) {
        final data = file.content as List<int>;
        File(filename)
          ..createSync(recursive: true)
          ..writeAsBytesSync(data);
      } else {
        Directory(filename).create(recursive: true);
      }
    }
    print('done');
  } else if (option == 'clean') {
    var lock = File(current.path + '/pubspec.lock');
    var packages = File(current.path + '/.packages');
    var plugins = File(current.path + '/.flutter-plugins');
    var pluginsDep = File(current.path + '/.flutter-plugins-dependencies');
    lock.existsSync() ? lock.deleteSync() : 0;
    packages.existsSync() ? packages.deleteSync() : 0;
    plugins.existsSync() ? plugins.deleteSync() : 0;
    pluginsDep.existsSync() ? pluginsDep.deleteSync() : 0;
    print("done");
  }
}

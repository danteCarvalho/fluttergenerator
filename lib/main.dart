import 'dart:convert';
import 'dart:io';

import 'package:archive/archive_io.dart';
import 'app/dart_templates.dart';
import 'package:path/path.dart';
import 'package:recase/recase.dart';
import 'package:simple_prompter/simple_prompter.dart';

import 'app/flutter_templates.dart';
import 'dart64.dart';
import 'flutter64.dart';

void main(List args) async {
  var current = Directory.current;

  if (args.isNotEmpty) {
    var encoder = ZipFileEncoder();
    encoder.zipDirectory(Directory("lib/app/dart_init/"), filename: 'out.zip');
    var file = File("out.zip");
    var readAsBytesSync = file.readAsBytesSync();
    var base64encode = base64Encode(readAsBytesSync);
    File file2 = File("lib/dart64.dart");
    file2.writeAsStringSync("String dart64String = '$base64encode';");
    file.deleteSync();

    encoder = ZipFileEncoder();
    encoder.zipDirectory(Directory("lib/app/flutter_init/"), filename: 'out.zip');
    file = File("out.zip");
    readAsBytesSync = file.readAsBytesSync();
    base64encode = base64Encode(readAsBytesSync);
    file2 = File("lib/flutter64.dart");
    file2.writeAsStringSync("String flutter64String = '$base64encode';");
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
    Option(label: 'Flutter Init', value: 'FlutterInit'),
    Option(label: 'Flutter Module', value: 'FlutterModule'),
    Option(label: 'Flutter Widget', value: 'FlutterWidget'),
    Option(label: 'Flutter Model', value: 'FlutterModel'),
    Option(label: 'Flutter ViewModel', value: 'FlutterViewModel'),
    Option(label: 'Dart Init', value: 'DartInit'),
    Option(label: 'Dart Model', value: 'DartModel'),
    Option(label: 'Dart Model Endpoint', value: 'DartModelEndpoint'),
    Option(label: 'Dart Model Shelf Endpoint', value: 'DartModelShelfEndpoint'),
    Option(label: 'Clean', value: 'Clean'),
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

  if (option == 'FlutterInit') {
    deleteCache();
    var base64decode = base64Decode(flutter64String);
    var archive = ZipDecoder().decodeBytes(base64decode);
    for (final file in archive) {
      final data = file.content as List<int>;
      if (file.isFile) {
        File file2 = File(file.name);
        file2.createSync(recursive: true);
        file2.writeAsBytesSync(data);
      }
    }
    print('done');
  } else if (option == 'FlutterModule') {
    var directory = Directory('${current.path}/lib/app/$folder/$name');
    await directory.create(recursive: true);
    var module = FlutterTemplates.module.replaceAll('wwww', name).replaceAll('WWWW', ReCase(name).pascalCase);
    var page = FlutterTemplates.page.replaceAll('wwww', name).replaceAll('WWWW', ReCase(name).pascalCase);
    var store = FlutterTemplates.store
        .replaceAll('wwww', name)
        .replaceAll('WWWW', ReCase(name).pascalCase)
        .replaceAll("YYYY", "Page")
        .replaceAll("yyyy", "page");
    var moduleFile = File('${directory.path}/${name}_module.dart');
    await moduleFile.writeAsString(module);
    var pageFile = File('${directory.path}/${name}_page.dart');
    await pageFile.writeAsString(page);
    var storeFile = File('${directory.path}/${name}_store.dart');
    await storeFile.writeAsString(store);
    print('done');
  } else if (option == 'FlutterWidget') {
    var directory = Directory('${current.path}/lib/app/$folder/$name');
    await directory.create(recursive: true);
    var comStore = prompter.askBinary("With store?");
    if (comStore) {
      var widgetWithStore = FlutterTemplates.widgetWithStore.replaceAll('wwww', name).replaceAll('WWWW', ReCase(name).pascalCase);
      var widgetFile = File('${directory.path}/${name}_widget.dart');
      await widgetFile.writeAsString(widgetWithStore);
      var store = FlutterTemplates.store
          .replaceAll('wwww', name)
          .replaceAll('WWWW', ReCase(name).pascalCase)
          .replaceAll("YYYY", "Widget")
          .replaceAll("yyyy", "widget");
      var storeFile = File('${directory.path}/${name}_store.dart');
      await storeFile.writeAsString(store);
    } else {
      var widget = FlutterTemplates.widget.replaceAll('WWWW', ReCase(name).pascalCase);
      var widgetFile = File('${directory.path}/${name}_widget.dart');
      await widgetFile.writeAsString(widget);
    }
    print('done');
  } else if (option == 'FlutterModel') {
    var directory = Directory('${current.path}/lib/app/$folder/$name');
    await directory.create(recursive: true);
    var frontModel = FlutterTemplates.flutterModel.replaceAll('wwww', name).replaceAll('WWWW', ReCase(name).pascalCase);
    var moduleFile = File('${directory.path}/$name.dart');
    await moduleFile.writeAsString(frontModel);
    print('done');
  } else if (option == 'FlutterViewModel') {
    var directory = Directory('${current.path}/lib/app/$folder/$name');
    await directory.create(recursive: true);
    var frontModel = FlutterTemplates.flutterViewModel.replaceAll('wwww', name).replaceAll('WWWW', ReCase(name).pascalCase);
    var moduleFile = File('${directory.path}/${name}_view.dart');
    await moduleFile.writeAsString(frontModel);
    print('done');
  } else if (option == 'DartInit') {
    deleteCache();
    var base64decode = base64Decode(dart64String);
    var archive = ZipDecoder().decodeBytes(base64decode);
    for (final file in archive) {
      final data = file.content as List<int>;
      if (file.isFile) {
        File file2 = File(file.name);
        file2.createSync(recursive: true);
        file2.writeAsBytesSync(data);
      }
    }
    print('done');
  } else if (option == 'DartModel') {
    var directory = Directory('${current.path}/lib/$folder/$name');
    await directory.create(recursive: true);
    var frontModel = DartTemplates.dartModel.replaceAll('wwww', name).replaceAll('WWWW', ReCase(name).pascalCase);
    var moduleFile = File('${directory.path}/$name.dart');
    await moduleFile.writeAsString(frontModel);
    print('done');
  } else if (option == 'DartModelEndpoint') {
    var directory = Directory('${current.path}/lib/$folder/$name');
    await directory.create(recursive: true);
    var endPoint = DartTemplates.endPoint
        .replaceAll('wwww', name)
        .replaceAll('WWWW', ReCase(name).pascalCase)
        .replaceAll("aaaa", ReCase(name).camelCase);
    File('${directory.path}/$name.dart').writeAsString(endPoint);
    print('done');
  }
  else if (option == 'DartModelShelfEndpoint') {
    var directory = Directory('${current.path}/lib/$folder/$name');
    await directory.create(recursive: true);
    var endPoint = DartTemplates.shelfEndPoint
        .replaceAll('wwww', name)
        .replaceAll('WWWW', ReCase(name).pascalCase)
        .replaceAll("aaaa", ReCase(name).camelCase);
    File('${directory.path}/$name.dart').writeAsString(endPoint);
    print('done');
  }
  else if (option == 'Clean') {
    deleteCache();
    print("done");
  }
}

deleteCache() {
  var current = Directory.current;
  var idea = Directory('${current.path}/.idea');
  var dartTool = Directory('${current.path}/.dart_tool');
  var metadata = File('${current.path}/.metadata');
  var lock = File('${current.path}/pubspec.lock');
  var packages = File('${current.path}/.packages');
  var plugins = File('${current.path}/.flutter-plugins');
  var pluginsDep = File('${current.path}/.flutter-plugins-dependencies');
  idea.existsSync() ? idea.deleteSync(recursive: true) : 0;
  dartTool.existsSync() ? dartTool.deleteSync(recursive: true) : 0;
  metadata.existsSync() ? metadata.deleteSync() : 0;
  lock.existsSync() ? lock.deleteSync() : 0;
  packages.existsSync() ? packages.deleteSync() : 0;
  plugins.existsSync() ? plugins.deleteSync() : 0;
  pluginsDep.existsSync() ? pluginsDep.deleteSync() : 0;
}

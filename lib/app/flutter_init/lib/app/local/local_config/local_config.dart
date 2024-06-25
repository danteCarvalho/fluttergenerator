import 'dart:convert';

import 'package:dartutils/dartutils.dart';
import 'package:mobx/mobx.dart';
import 'package:reflection_factory/reflection_factory.dart';

import '../../outros/entidade_helper.dart';

part 'local_config.g.dart';
part 'local_config.reflection.g.dart';

@EnableReflection()
@reflector
@SerialAnnotation()
class LocalConfig extends _LocalConfigBase with _$LocalConfig, _$Serial {
  static fromJson(Map map) {
    return _$LocalConfigFromJson(map);
  }
}

abstract class _LocalConfigBase with Store {}

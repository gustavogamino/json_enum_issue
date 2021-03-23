import 'package:json_annotation/json_annotation.dart';

import 'registration_status.dart';

part 'model_child.g.dart';

@JsonSerializable(explicitToJson: true)
class ModelChild {

  final String someString;
  final String textProperty;
  final bool veryLongAndAwesomeConditionName;

  @JsonKey(unknownEnumValue: RegistrationStatus.unknownValue)
  final RegistrationStatus myStatusWithSomeIssue;

  ModelChild({
    required this.someString,
    required this.textProperty,
    required this.veryLongAndAwesomeConditionName,
    required this.myStatusWithSomeIssue,
  });

  factory ModelChild.fromJson(Map<String, dynamic> json) => _$ModelChildFromJson(json);

}

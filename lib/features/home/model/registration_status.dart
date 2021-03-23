import 'package:json_annotation/json_annotation.dart';

enum RegistrationStatus {
  @JsonValue('STAGE_1')
  stageOne,
  @JsonValue('SOME_OTHER_STAGE')
  someOtherStage,
  @JsonValue('ISSUE_HERE')
  issueHere,
  unknownValue,
}

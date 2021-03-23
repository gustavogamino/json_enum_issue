import 'package:json_annotation/json_annotation.dart';

import 'model_child.dart';
import 'registration_status.dart';

part 'model.g.dart';

@JsonSerializable()
class Model {

  @JsonKey(name: 'modelChild')
  final ModelChild child;

  Model({
    required this.child,
  });

  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);

  bool get showRegistrationInReviewCardInfo => child.myStatusWithSomeIssue == RegistrationStatus.issueHere;
}

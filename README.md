# json_enum_issue

Reproducible example of code generation issues on Dart enum classes with json_serializable.

## How to reproduce

Clone this repo and run `make it-fail` to loop the code generation step until the error occurs. 

### Error output

After running `dart run build_runner build --delete-conflicting-outputs --verbose` the following error happens on `JsonLiteralGenerator` of `model_child.dart` file:

```bash
[FINE] json_serializable:json_serializable on lib/features/home/model/model_child.dart:Running JsonSerializableGenerator - 1 of 2
[SEVERE] json_serializable:json_serializable on lib/features/home/model/model_child.dart:

line 1, column 172 of package:json_serializable_enum_issue/features/home/model/registration_status.dart: Could not resolve annotation for `RegistrationStatus issueHere`.
  ╷
1 │ @JsonValue('ISSUE_HERE')
  │ ^^^^^^^^^^^^^^^^^^^^^^^^
  ╵
package:source_gen/src/type_checker.dart 113:7             TypeChecker._computeConstantValue
package:source_gen/src/type_checker.dart 138:21            TypeChecker._annotationsWhere.sync_op
dart:core                                                  Iterable.isEmpty
package:source_gen/src/type_checker.dart 94:20             TypeChecker.firstAnnotationOfExact
package:json_serializable/src/utils.dart 142:50            enumFieldsMap._generateEntry
dart:core                                                  new Map.fromEntries
package:json_serializable/src/utils.dart 170:9             enumFieldsMap
package:json_serializable/src/utils.dart 182:5             iterateEnumFields
package:json_serializable/src/json_key_utils.dart 123:11   _from._annotationValue
package:json_serializable/src/json_key_utils.dart 183:39   _from
package:json_serializable/src/json_key_utils.dart 19:32    jsonKeyForField
package:json_serializable/src/helper_core.dart 51:47       HelperCore.jsonKeyFor
package:json_serializable/src/generator_helper.dart 71:20  GeneratorHelper.generate.sync_op.<fn>
dart:collection                                            ListMixin.fold
package:json_serializable/src/generator_helper.dart 61:43  GeneratorHelper.generate.sync_op

[INFO] Build:Running build completed, took 1.3s

[INFO] Build:Caching finalized dependency graph...
[INFO] Build:Caching finalized dependency graph completed, took 37ms

[SEVERE] Build:
Failed after 1.3s
```

### Additional information

Dart version

```bash
Dart SDK version: 2.12.2 (stable) on "macos_x64"
```

Dependencies:

```yaml
# direct
json_annotation: 4.0.1
json_serializable: 4.1.0
build_runner: 1.12.2

# transitive
analyzer: 1.2.0
source_gen: 1.0.0
```

import 'package:json_annotation/json_annotation.dart';

part 'appuser_test_literal.g.dart';

@JsonLiteral("appuser_test.json", asConst: true)
Map<String, dynamic> get appuserTestData => _$appuserTestDataJsonLiteral;
import 'package:json_annotation/json_annotation.dart';
import 'package:optional/optional.dart';

//Creates Here
part 'appuser.g.dart';

@JsonSerializable()
class AppUser {
  AppUser();

  @JsonKey(name: "id", required: true, nullable: false)
  String userId;

  @JsonKey(name: "login", required: true, nullable: false)
  String loginId;

  @JsonKey(required: true, nullable: false)
  String accountId;

  String firstName;

  @JsonKey(nullable: true)
  String lastName;

  @JsonKey(name: "photoId", nullable: true)
  String imageUrl;

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
  Map<String, dynamic> toJson() => _$AppUserToJson(this);

  // Instance functions
  String fullName() {
    String name = firstName;
    if (Optional.ofNullable(lastName).isPresent && lastName.isNotEmpty) {      
      name += " $lastName";
    }
    return name;
  }

  String getCurrentUserId() => userId;
  String getAccountId() => accountId;
}

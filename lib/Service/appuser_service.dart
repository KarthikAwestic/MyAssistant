import 'prefrence_service.dart';
import 'global_service.dart';
import 'package:my_assistant/Models/AppUser/appuser.dart';

class CurrentUserService {
  // Creating Siogleton
  CurrentUserService._privateConstructor();
  static final CurrentUserService shared = CurrentUserService._privateConstructor();

  var pref = getIt<Prefrence>();
  AppUser getCurrentUser() => pref.getAppUser;

  void saveAppUserMap(Map<String, dynamic> json) {      
    pref.saveAppUserMap(json);
  }  
  void saveAppUser(AppUser appUser) {
    pref.saveAppUser(appUser);
  }
  String getUserId() {
    return getCurrentUser().userId;
  }
}

class TestClass {
  void test() {
    var appUser = CurrentUserService.shared;
    appUser.getCurrentUser();
  }
}
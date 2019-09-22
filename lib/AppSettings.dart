import 'package:get_version/get_version.dart';
import 'AppConstants.dart';
import 'service/global_service.dart';
import 'package:my_assistant/service/prefrence_service.dart';

class Settings {
  //MARK: Private init 
  Settings._(); 

  //MARK: Environment
  static bool isDev = environment == AppEnvironment.dev;
  static AppEnvironment environment;
  static Prefrence pref = getIt<Prefrence>();
  
  //MARK: Versions 
  static String _versionName = "";
  static Future<void> initVersion() async =>
    _versionName = await GetVersion.projectVersion.catchError((dynamic e) => null);
  static String getVersion() => _versionName;
  
  //NOTE: Do not use this for checking login. 
  static bool checkIsFirstTime() {
    final state = pref.getBool(IS_FIRST_TIME);
    if (state != false) {
       pref.setBool(IS_FIRST_TIME, false);
        return true;        
    }
    return false;
  }

  //LOGIN Checks; 
  static bool checkIsFirstTimeLogin() {
    final isFirstTime = pref.getBool(IS_FIRST_TIME_LOGIN);
    return isFirstTime;
  }

  static void updateIsFirstTimeLogin() {
    pref.setBool(IS_FIRST_TIME_LOGIN, false);
  }
}
import 'package:shared_preferences/shared_preferences.dart';

class SessionManager{

  static SharedPreferences? _preferences;
    static const _isLOGIN = "is_login";
    static Future init()async=>
    _preferences = await SharedPreferences.getInstance();


    static dynamic setUserLoggedIn(bool isLogin){
      _preferences!.setBool(_isLOGIN, isLogin);
    }


     static dynamic getisLoggedIn() {
    return _preferences?.getBool(_isLOGIN) ?? false;
  }
}  
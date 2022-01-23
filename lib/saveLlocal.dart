import 'package:shared_preferences/shared_preferences.dart';

class SaveLocal {
  saveData(String key, dynamic model, dynamic data) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    // Encode and store data in SharedPreferences
    final String encodedData = model.encode(data);

    await prefs.setString(key, encodedData);
  }

  dynamic retrieve(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final String mydata = await prefs.getString(key);
    return mydata;
  }
}

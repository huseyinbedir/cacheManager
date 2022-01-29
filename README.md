# cacheManager
Flutter ile tüm projelerde kullanılabilicek cache manager. 

#List<Model> kaydetmek için 
Future<bool> saveCacheList<T>(String key, List<T> model) async {
    final _stringModel = jsonEncode(model);
    return await prefs.setString(key, _stringModel);
  }
  
#Almak için
List<T> getCacheList<T extends IBaseModel>(String key, T model) {
    final cacheData = prefs.getString(key) ?? "";
    if (cacheData.isNotEmpty) {
      return model.fromJson(cacheData).toList() as List<T>;
    }
    return [];
  }
  

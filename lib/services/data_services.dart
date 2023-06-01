import "dart:convert";

import "package:http/http.dart" as http;
import "package:travel_app/model/models.dart";

class DataServices {
  var baseUrl = "http://mark.bslmeiyu.com/api";
  Future<List<DataModels>> getInfo() async {
    var apiUrl = "/getplaces";
    http.Response res = await http.get(
      Uri.parse(baseUrl + apiUrl),
    );
    try {
      if (res.statusCode == 200) {
        List<dynamic> list = json.decode(res.body);
        print(list);
        return list.map((e) => DataModels.fromJson(e)).toList();
      } else {
        return <DataModels>[];
      }
    } catch (e) {
      return <DataModels>[];
    }
  }
}

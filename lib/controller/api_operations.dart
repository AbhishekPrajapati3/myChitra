import 'dart:convert';

import '../models/photoModel.dart';
import 'package:http/http.dart'as http;

class ApiOperations
{

 static Future<PhotoModel> getTrendingWallpaper()
  async{
            var response = await http.get(Uri.parse("https://api.pexels.com/v1/curated?per_page=80"),
            headers: {
              "Authorization" : "Auth key"
            }
            );
            var data = jsonDecode(response.body.toString());
            
            if(response.statusCode == 200)
              {
                  print("api hit sucessfully");
                  return PhotoModel.fromJson(data);
              }
            else
              {
                return PhotoModel.fromJson(data);
              }
  }
  static Future<PhotoModel> searchWallpaper(String query)
  async{

    var response = await http.get(Uri.parse("https://api.pexels.com/v1/search?query=$query&per_page=30"),
        headers: {
          "Authorization" : "auth key"
        }
    );
    var data = jsonDecode(response.body.toString());

    if(response.statusCode == 200)
    {
      print("api hit sucessfully");
      return PhotoModel.fromJson(data);
    }
    else
    {
      return PhotoModel.fromJson(data);
    }

  }


}
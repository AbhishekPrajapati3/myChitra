import 'dart:convert';

import 'package:chitra_app/controller/api_operations.dart';
import 'package:chitra_app/models/photoModel.dart';
import 'package:chitra_app/views/widgets/catBlock.dart';
import 'package:chitra_app/views/widgets/customAppBar.dart';
import 'package:chitra_app/views/widgets/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import '../widgets/gallery.dart';
import 'full_screen.dart';
class HomeScreen extends StatefulWidget {
  static final routeName = '/HomeScreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Future<PhotoModel> getData()async{
    var response = await http.get(Uri.parse("https://api.pexels.com/v1/curated?per_page=30"),
      headers: {
      "Authorization" : "Cligi0NqRG8t32vCxeuQzr92s3kvg3j2S1gzCw6GpOJDQ8nMoY3sNgoo"
      }
    );
    var data = jsonDecode(response.body.toString());
    if(response.statusCode == 200)
      {
        print("api hit");
        return PhotoModel.fromJson(data);
      }
    else
      return PhotoModel.fromJson(data);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(automaticallyImplyLeading: false,title: CustomAppBar(title: "My",),
      centerTitle: true,elevation: 0
      ,backgroundColor: Colors.white,),
      body: Padding(
        padding: const EdgeInsets.only(left: 8,right: 8),
        child: SingleChildScrollView(
          child: Column(children: [SearchBarWid(),
          SizedBox(height: 10,),
          SizedBox(height: 50,width: MediaQuery.of(context).size.width,
              child: ListView.builder(scrollDirection: Axis.horizontal,itemBuilder: (context,index)
              {return Padding(padding: EdgeInsets.only(left: 4,right: 4),child: CatBlock());})),
          SizedBox(height: 20,),
          SizedBox(height: 650,
            child: FutureBuilder(future: ApiOperations.getTrendingWallpaper(), builder:(context,snapshot){
            if(snapshot.hasData){return  Container(height: 600,
              child: GridView.builder(itemCount: snapshot.data!.photos!.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 400

                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
                      // height: 800,

                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>FullScreen(url:snapshot.data!.photos![index].src!.portrait.toString() )));
                        },
                        child: Hero(
                          tag: snapshot.data!.photos![index].src!.portrait.toString(),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(fit: BoxFit.cover,height: 600,snapshot.data!.photos![index].src!.portrait.toString()),
                          ),
                        ),
                      ),
                    );
                  }),
            );}
            else
              return Center(child: SizedBox(height: 45,child: CircularProgressIndicator(color: Colors.orange,)));
             }

             ),
          )
          ],),
        ),
      ));
  }
}


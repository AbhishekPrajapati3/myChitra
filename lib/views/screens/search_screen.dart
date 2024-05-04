import 'package:chitra_app/controller/api_operations.dart';
import 'package:chitra_app/models/photoModel.dart';
import 'package:chitra_app/views/screens/full_screen.dart';
import 'package:chitra_app/views/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
class SearchScreen extends StatefulWidget {
  String query;
  static final routeName = '/SearchScreen';
   SearchScreen({super.key,required this.query });

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  @override
  PhotoModel searchResult = PhotoModel();
  String imgUrl = "";
   getResults()async{
    searchResult = ApiOperations.searchWallpaper(widget.query) as PhotoModel;
  }
  @override
  void initState() {
    // TODO: implement initState
    getResults();

    print(imgUrl);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(automaticallyImplyLeading: false,title: CustomAppBar(title: widget.query.toUpperCase(),),
      centerTitle: true,elevation: 0
      ,backgroundColor: Colors.white,),
        body: Padding(
          padding: const EdgeInsets.only(left: 8,right: 8),
          child: SingleChildScrollView(
            child: Column(children: [
              //Container(child: ClipRRect(child: Image.network(imgUrl.toString()),),)

              SizedBox(height: 780,
                child: FutureBuilder(future: ApiOperations.searchWallpaper(widget.query), builder:(context,snapshot){
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
                                Navigator.push(context,MaterialPageRoute(builder: (context)=>FullScreen(url: snapshot.data!.photos![index].src!.portrait.toString())));
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(fit: BoxFit.cover,height: 600,snapshot.data!.photos![index].src!.portrait.toString()),
                              ),
                            ),
                          );
                        }),
                  );}
                  else
                    return Center(child: SizedBox(height: 50,child: CircularProgressIndicator(color: Colors.orange,)));
                }

                ),
              )
            ],),
          ),
        ));
  }
}


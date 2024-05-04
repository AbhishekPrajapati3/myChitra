import 'package:chitra_app/controller/api_operations.dart';
import 'package:chitra_app/models/photoModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  PhotoModel data = PhotoModel();
  getData()
  async{
    data = await ApiOperations.getTrendingWallpaper();
  }
  @override
  void initState() {
    // TODO: implement initState
    getData();
    print(data.photos.toString());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(height: 600,
      child: GridView.builder(itemCount: 7,
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

             child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(fit: BoxFit.cover,height: 600,'assets/images/gallery.jpg'),
              ),
            );
          }),
    );
  }
}

import 'package:chitra_app/views/widgets/catBlock.dart';
import 'package:chitra_app/views/widgets/customAppBar.dart';
import 'package:chitra_app/views/widgets/searchBar.dart';
import 'package:flutter/material.dart';

import '../widgets/gallery.dart';
class CategoryScreen extends StatefulWidget {
  static final routeName = '/CategoryScreen';
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(automaticallyImplyLeading: false,title: CustomAppBar(title: "My",),
      centerTitle: true,elevation: 0
      ,backgroundColor: Colors.white,),
        body: Padding(
          padding: const EdgeInsets.only(left: 8,right: 8),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: 20,),
              SizedBox(height: 765,child: Gallery(),)],),
          ),
        ));
  }
}


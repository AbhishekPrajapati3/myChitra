import 'package:chitra_app/controller/api_operations.dart';
import 'package:chitra_app/models/photoModel.dart';
import 'package:flutter/material.dart';

class CatBlock extends StatefulWidget {
  const CatBlock({super.key});

  @override
  State<CatBlock> createState() => _CatBlockState();
}

class _CatBlockState extends State<CatBlock> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child:
                Image.asset(fit:BoxFit.cover,height: 50, width: 100, 'assets/images/cat.jpg')),
        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.black26),height: 50,width: 100,)
      ],
    ));
  }
}

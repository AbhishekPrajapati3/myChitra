import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../screens/search_screen.dart';

class SearchBarWid extends StatefulWidget {
  const SearchBarWid({super.key});

  @override
  State<SearchBarWid> createState() => _SearchBarWidState();
}

class _SearchBarWidState extends State<SearchBarWid> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.black38)),
      child: Row(
        children: [
          Expanded(
              child: TextField(
            controller: searchController,
            textInputAction: TextInputAction.search,
            onSubmitted: (value){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        SearchScreen(query: searchController.text)),
              ).then((value) => () {
                setState(() {});
              });
            },
            decoration: InputDecoration(
                hintText: 'Search Wallpaper',
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 20)),
          )),
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          SearchScreen(query: searchController.text)),
                ).then((value) => () {
                      setState(() {});
                    });
              },
              child: Icon(Icons.search)),
          SizedBox(
            width: 15,
          )
        ],
      ),
    );
  }
}

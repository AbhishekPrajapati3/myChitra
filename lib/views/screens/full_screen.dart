import 'package:flutter/cupertino.dart';

class FullScreen extends StatefulWidget {
  String url;
  FullScreen({super.key,required this.url});

  @override
  State<FullScreen> createState() => _FullScreenState();
}

class _FullScreenState extends State<FullScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Image.network(fit:BoxFit.fill,widget.url.toString()),
    );
  }
}

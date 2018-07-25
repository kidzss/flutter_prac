import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('ImagePage'),
        ),
        body: new Column(
          children: <Widget>[
            _sizedContainer(
                new Image.network(
                  'https://www.baidu.com/img/bd_logo1.png',
                ),
                Colors.grey),
            _sizedContainer(
                new CachedNetworkImage(
                  placeholder: new CircularProgressIndicator(),
                  imageUrl: 'https://www.baidu.com/img/bd_logo1.png',
                  errorWidget: new Icon(Icons.error),
                ),
                Colors.green),
            new Image.asset(
              'images/dubai.JPG',
              height: 200.0,
              fit: BoxFit.cover,
            ),
          ],
        ));
  }
}

Widget _sizedContainer(Widget child, Color color) {
  return new SizedBox(
//    width: 300.0,
    height: 150.0,
    child: new Container(
      child: new Center(child: child),
      color: color,
    ),
  );
}

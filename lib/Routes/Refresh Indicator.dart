import 'package:flutter/material.dart';

List<String> images = [
  "https://www.imagesjunction.com/images/img/1920x1080_mobile_hd_wallpapers.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRKxaBUpwOB88N7iOnetGtGaCsQnkEdYj2UkA&usqp=CAU",
  "https://i.pinimg.com/originals/09/b7/73/09b7739aea965dcbd15f44d32a157029.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT6UL5VIJvsgxLLXg7nao1weNlsNuNJUOjAfg&usqp=CAU",
  "https://1.bp.blogspot.com/-mE7r3osJV_k/Xe0RhOqg4AI/AAAAAAAAKo0/NxV1tgi0u8sTuhjuFf1CrELmt7BZi2PowCPcBGAYYCw/s1600/Miles-Spiderman-Hoodie-mobile-Wallpaper.jpg0",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR6x04fjtV-aTQqgIcbIrVkDDqT-OrxUBLqJw&usqp=CAU"
];

class myRefreshIndicator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myRefreshIndicatorState();
  }
}

class myRefreshIndicatorState extends State<myRefreshIndicator> {
  String image = images[0];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Refresh Indicator'),
      ),
      body: Stack(
        children: [
          RefreshIndicator(
            child: ListView(
              children: <Widget>[
                Image.network(
                  image,
                  fit: BoxFit.fill,
                )
              ],
            ),
            onRefresh: _refreshImage,
          ),
          Text(
            'SWIPE DOWN TO SEE THE REFRESH INDICATOR',
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Future<void> _refreshImage() async {
    //Emulate 3 seconds to refresh
    await Future.delayed(Duration(seconds: 3));
    //Refresh Image
    if (index < images.length - 1) {
      index++;
    } else {
      index = 0;
    }
    setState(() {
      image = images[index];
    });
  }
}

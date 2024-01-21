import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Music_home.dart';



class Music_search extends StatefulWidget {
  const Music_search({super.key});

  @override
  State<Music_search> createState() => _Music_searchState();
}

class _Music_searchState extends State<Music_search> {
  int index = 1;

  var genre = [
    "Music",
    "Podcast",
    "Live Event",
    "Made For You",
    "New Release",
    "Hindi",
    "Punjabi",
    "Tamil",
    "Telugu",
    "Charts",
    "Pop",
    "Indie",
    "Discover",
    "Radio",
    "Mood",
    "Party",
    "Devotional",
    "Decades",
    "Hip-Hop",
    "Dance/\nElectronics"
  ];
  var image = [
    "assets/music_image/music.jpg",
    "assets/music_image/podcast.jpg",
    "assets/music_image/liveevent.jpg",
    "assets/music_image/abstractpiano.jpg",
    "assets/music_image/airpods.jpg",
    "assets/music_image/blueguitar.jpg",
    "assets/music_image/womanearsjpg.jpg",
    "assets/music_image/guitarneon.jpg",
    "assets/music_image/headphones.jpg",
    "assets/music_image/jukebox.jpg",
    "assets/music_image/manheadphones.jpg",
    "assets/music_image/musicalnotes.jpg",
    "assets/music_image/piano.jpg",
    "assets/music_image/powerinesmusicnotes.jpg",
    "assets/music_image/purplemusic.jpg",
    "assets/music_image/womanearsjpg.jpg",
    "assets/music_image/womanheadphones.jpg",
    "assets/music_image/jukebox.jpg",
    "assets/music_image/piano.jpg",
    "assets/music_image/blueguitar.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.search),
                hintText: "What do you want to listen to",
                hintStyle: TextStyle(color: Colors.black)),
          ),
        ),
      ),
      body: GridView.count(
        childAspectRatio: 1.7,
        crossAxisCount: 2,
        children: List.generate(
          genre.length,
              (index) {
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              color: Colors
                  .primaries[math.Random().nextInt(Colors.primaries.length)],
              margin: EdgeInsets.all(8),
              elevation: 10,
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 8, top: 5),
                    child: Text(
                      genre[index],
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  Positioned(
                    left: 100,
                    top: 20,
                    child: Transform.rotate(
                      angle: math.pi / 180 * 45,
                      //alignment: Alignment.center,
                      child: Container(
                        decoration: BoxDecoration(
                          //border: Border.all(),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          image[index],
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        elevation: 0,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                FontAwesomeIcons.house,
                color: Colors.purpleAccent,
              ),
              label: ""),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: Colors.purpleAccent,
              ),
              label: ""),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                FontAwesomeIcons.plus,
                color: Colors.purpleAccent,
              ),
              label: ""),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                FontAwesomeIcons.ellipsis,
                color: Colors.purpleAccent,
              ),
              label: ""),
        ],
        onTap: (tapIndex) {
          setState(() {
            index = tapIndex;
            if (index == 0) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Music_home()));
            } else if (index == 1) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Music_search()));
            }
          });
        },
      ),
    );
  }
}
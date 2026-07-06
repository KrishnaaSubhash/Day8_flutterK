import 'package:day8app/frontpage.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: [
              SizedBox(
                width: 70,
                height: 60,
                child: Image.network(
                  "https://platform.theverge.com/wp-content/uploads/sites/2/chorus/uploads/chorus_asset/file/15844974/netflixlogo.0.0.1466448626.png?quality=90&strip=all&crop=1.2535702951444%2C0%2C97.492859409711%2C100&w=1080",
                ),
              ),

              const SizedBox(width: 10),

              const Text(
                "Home",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Icon(Icons.download, color: Colors.white),
              SizedBox(width: 8),
              Icon(Icons.notifications, color: Colors.white),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    customChips("Shows"),
                    SizedBox(width: 7),
                    customChips("Movies"),
                    SizedBox(width: 7),
                    customChips("Games"),
                    SizedBox(width: 7),
                    customChips("New movies"),
                    SizedBox(width: 7),
                    customChips("Categories"),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 500,
                width: 370,
                color: Colors.black54,
                child: Stack(
                  children: [
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPzSGvx6ZggX7sELrO3ZSyI02vYo1bLPRXN2k8TfFq5LGypy_c9xdqa6yw1pXwQEmasi1T&s=10",
                      height: 500,
                      width: 390,
                    ),
                    Positioned(
                      bottom: 20,
                      left: 40,
                      child: customChips("Play now"),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 210,
                      child: ActionChip(
                        avatar: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                        label: Text(
                          "My List",
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.grey.shade800,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Recomended for new memebers",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    recomentationBoxes("Netflix Originals"),
                    SizedBox(width: 9),
                    recomentationBoxes( "Skip the Queues,Watch at home"),
                    SizedBox(width: 9),
                    recomentationBoxes("International Movies & TV"),
                    SizedBox(width: 9),
                   recomentationBoxes("Bingeworthy TV Shows"),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    recomentationBoxes("Enjoyed in India"),
                    SizedBox(width: 9),
                   recomentationBoxes("Hollywood Movies"),
                    SizedBox(width: 9),
                   recomentationBoxes( "Blockbuster Movies"),
                    SizedBox(width: 9),
                    recomentationBoxes("90-Minute Films"),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Text(
                    "Only on netflix",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Icon(Icons.chevron_right, color: Colors.white),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                   imageContainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyeqQe-8p3uXFVkLoRPYOIepVzITeepi9LNxr7cOkm8Q&s=10")
                    ,SizedBox(width: 8),
                    imageContainer("https://i.mydramalist.com/JB4ZoX_3m.jpg"),
                    SizedBox(width: 8),
                    imageContainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR44dIPjFU09JHpfnHVVEv-OWNkREhJAPBFrVaSBErndg&s"),
                    SizedBox(width: 8),
                    imageContainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZRqDOkpH4i0t6s6pOsddxKTvCr8h2nHXJAsFvGkvz64pvJo4bW_JcfqkO&s=10"),
                    SizedBox(width: 8),
                  imageContainer("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyeqQe-8p3uXFVkLoRPYOIepVzITeepi9LNxr7cOkm8Q&s=10"),
                    SizedBox(width: 8),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Top 10",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    imageContainer(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgtHf5c4q2onMD9-pn03gFXRLvPoAD1Np6RS_faygyHw&s",
                    ),
                    SizedBox(width: 8),
                    imageContainer("https://i.mydramalist.com/JB4ZoX_3m.jpg"),
                    SizedBox(width: 8),
                    imageContainer(
                      "https://m.media-amazon.com/images/M/MV5BZmZhY2ViYzYtMTQ0NS00NDcyLWIxZTYtMGUyODE0NDA0NmNkXkEyXkFqcGc@._V1_.jpg",
                    ),
                    SizedBox(width: 8),
                    imageContainer(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRReX2DKZ_FWOTzdEdASNSGJgRQIpBy3csLKcg5unV9so3fSARr_9Y986I2&s=10",
                    ),
                    SizedBox(width: 8),
                    imageContainer(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRReX2DKZ_FWOTzdEdASNSGJgRQIpBy3csLKcg5unV9so3fSARr_9Y986I2&s=10",
                    ),
                    SizedBox(width: 8),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container recomentationBoxes(String label) {
    return Container(
                    width: 150,
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.purple,
                          Colors.blue,
                        ], // change colors here
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                    label, // your text
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  );
  }

  Container imageContainer(String url) {
    return Container(
      width: 100,
      height: 100,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Image.network(
        url,
        fit: BoxFit.cover,
      ),
    );
  }

  ActionChip customChips(String customLabel) {
    return ActionChip(
      label: Text(customLabel, style: TextStyle(color: Colors.white)),
      backgroundColor: Colors.grey.shade800,
      onPressed: () {},
    );
  }
}

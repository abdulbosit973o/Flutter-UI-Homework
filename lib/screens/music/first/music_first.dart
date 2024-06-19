import 'package:flutter/material.dart';
import 'package:homework_lesson_5/screens/music/first/widgets/MusicData.dart';
import 'package:iconsax/iconsax.dart';

class MusicFirstScreen extends StatefulWidget {
  const MusicFirstScreen({super.key});

  @override
  State<MusicFirstScreen> createState() => _MusicFirstScreenState();
}

class _MusicFirstScreenState extends State<MusicFirstScreen> {
  final List<MusicData> list = [
     MusicData(
        text: 'Java or Kotlin?',
        min: '01:00:56 mins',
        imageUrl: 'assets/images/image1.jpg',
        isLiked: false,
        isChecked: false,
        isDownloaded: true),
    const MusicData(
        text: 'Android or Flutter',
        min: '00:56:56 mins',
        imageUrl: 'assets/images/image2.jpg',
        isLiked: true,
        isChecked: false,
        isDownloaded: false),
    const MusicData(
        text: 'Why choose programming?',
        imageUrl: 'assets/images/image3.jpg',
        isLiked: true,
        min: '01:33:15 mins',
        isChecked: true,
        isDownloaded: false),
    const MusicData(
        text: 'GITA Academy',
        imageUrl: 'assets/images/image4.jpg',
        isLiked: false,
        min: '02:23:09 mins',
        isChecked: false,
        isDownloaded: true),
    const MusicData(
        text: 'Why study in bootcamp?',
        imageUrl: 'assets/images/image5.jpg',
        isLiked: true,
        min: '01:06:00 mins',
        isChecked: false,
        isDownloaded: false),
    const MusicData(
        text: 'About GITA academy',
        imageUrl: 'assets/images/image6.jpg',
        isLiked: false,
        min: '02:08:02 mins',
        isChecked: false,
        isDownloaded: true),
    const MusicData(
        text: 'Gaplashamiz! mehmon: Sherzodbek Muhammadiyev',
        imageUrl: 'assets/images/image7.jpg',
        isLiked: true,
        min: '03:48:27 mins',
        isChecked: true,
        isDownloaded: true),
    const MusicData(
        text: 'GITA BOOTCAMP',
        imageUrl: 'assets/images/image8.jpg',
        isLiked: true,
        min: '02:12:17 mins',
        isChecked: false,
        isDownloaded: false),
    const MusicData(
        text: 'Founder of GITA',
        imageUrl: 'assets/images/image9.jpg',
        isLiked: true,
        min: '05:33:15 mins',
        isChecked: false,
        isDownloaded: false),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {}, icon: const Icon(Iconsax.arrow_left)),
          backgroundColor: Colors.white,
          title: const Text(
            'Notifications',
            style: TextStyle(
              fontFamily: 'PaynetB',
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Iconsax.more_circle5)),
          ],
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(text: 'Songs'),
              Tab(text: 'Podcasts'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            const Center(
              child: Text("It's cloudy here"),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'New Podcasts Realise Today!',
                      style: TextStyle(
                        fontFamily: 'PaynetB',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xFF000000),
                      ),
                    ),
                    SizedBox(
                      height: 800, // Adjust height to fit all items within the scroll view
                      child: ListView.separated(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(), // Ensure list is scrollable
                        scrollDirection: Axis.vertical,
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                              child: SizedBox(
                                width: double.infinity,
                                height: 156,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // Image
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(24),
                                      child: Image.asset(
                                        list[index].imageUrl,
                                        fit: BoxFit.cover,
                                        height: 142,
                                        width: 142,
                                      ),
                                    ),
                                    const SizedBox(width: 16),
                                    // Text and Icons
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            list[index].text,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontFamily: 'PaynetB',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              color: Colors.black,
                                            ),
                                          ),
                                           Text(
                                             list[index].min,
                                            style: TextStyle(
                                              fontFamily: 'PaynetB',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              IconButton(
                                                icon:  Icon(list[index].isLiked ? Iconsax.lovely5 : Iconsax.lovely),
                                                onPressed: () {
                                                  // Your action here
                                                },
                                              ),
                                              IconButton(
                                                icon:  Icon(list[index].isLiked ? Iconsax.document_download5 :Iconsax.document_download),
                                                onPressed: () {
                                                  // Your action here
                                                },
                                              ),
                                              IconButton(
                                                icon: const Icon(Icons.more_vert),
                                                onPressed: () {
                                                  // Your action here
                                                },
                                              ),
                                              const Spacer(),
                                              IconButton(
                                                icon: const Icon(Iconsax.play_circle5),
                                                onPressed: () {
                                                  // Your action here
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(
                            height: 4,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 128,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

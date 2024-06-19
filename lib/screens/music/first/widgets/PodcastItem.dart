import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'MusicData.dart';

class PodcastItem extends StatelessWidget {
  final MusicData musicData;
  const PodcastItem({super.key, required this.musicData});

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
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
              'assets/images/image1.jpg',
              // Replace with your image path
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
                const Text(
                  'Enjoy All Benefitagfjagdsfjagjfgkajs!',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: 'PaynetB',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  'Apple Talk • 48:26 mins',
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
                      icon: Icon(Iconsax.lovely5),
                      onPressed: () {
                        // Your action here
                      },
                    ),
                    IconButton(
                      icon: Icon(Iconsax.document_download5),
                      onPressed: () {
                        // Your action here
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.more_vert),
                      onPressed: () {
                        // Your action here
                      },
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Iconsax.play_circle5),
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
    );
  }
}


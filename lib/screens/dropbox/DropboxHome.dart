import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(Icons.menu),
                    Spacer(),
                    Icon(Iconsax.notification),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Hello,\nMr. Anthony Burke',
                  style: TextStyle(
                    fontFamily: 'PaynetB',
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      StorageCard(
                        color: Colors.blue,
                        title: 'Dropbox',
                        icon: Icons.cloud,
                        usedSpace: 60,
                        totalSpace: 100,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      DriveCard(
                        color: Colors.blue,
                        title: 'Dropbox',
                        icon: Icons.cloud,
                        usedSpace: 60,
                        totalSpace: 100,
                      ),
                      // Add more StorageCards if needed
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Co-owners',
                  style: TextStyle(
                    fontFamily: 'PaynetB',
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(6, (index) {
                    return index != 5
                        ? CircleAvatar(
                            radius: 28,
                            backgroundImage: AssetImage(
                                'assets/images/avatar${index + 1}.jpg'),
                          )
                        : const CircleAvatar(
                            radius: 28,
                            backgroundColor: Color(0xFFF6F4F4),
                            child: Icon(Iconsax.add),
                          );
                  }),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Last files',
                  style: TextStyle(
                    fontFamily: 'PaynetB',
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xFF000000).withOpacity(0.04),
                        ),
                        child: const ListTile(
                          leading: Icon(Icons.picture_as_pdf),
                          title: Text('Brandbook.PDF',
                              style: TextStyle(
                                fontFamily: 'PaynetB',
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Color(0xFF000000),
                              )),
                          subtitle: Text(
                            'Dropbox/Projects/Brandbook',
                            style: TextStyle(
                              fontFamily: 'PaynetB',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 8,
                      );
                    },
                    itemCount: 10),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class StorageCard extends StatelessWidget {
  final Color color;
  final String title;
  final IconData icon;
  final int usedSpace;
  final int totalSpace;

  StorageCard(
      {required this.color,
      required this.title,
      required this.icon,
      required this.usedSpace,
      required this.totalSpace});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 256,
          height: 250,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white.withOpacity(0.20)),
                    child: const Icon(
                      Iconsax.trash,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white.withOpacity(0.20)),
                    child: const Icon(
                      Iconsax.copy,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white.withOpacity(0.20)),
                    child: const Icon(
                      Iconsax.filter,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16),
              Text(
                title,
                style: const TextStyle(
                  fontFamily: 'PaynetB',
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                '$usedSpace GB / $totalSpace GB',
                style: const TextStyle(
                  fontFamily: 'PaynetB',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              const SizedBox(height: 8),
              LinearProgressIndicator(
                value: usedSpace / totalSpace,
                backgroundColor: Colors.white.withOpacity(0.3),
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ],
          ),
        ),
        const Positioned(
          top: -30,
          // Position the circular item
          left: 128 - 76,
          // Center the circular item horizontally (128 is half of 256 and 30 is radius)
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: Icon(Iconsax.airdrop),
          ),
        ),
      ],
    );
  }
}

class DriveCard extends StatelessWidget {
  final Color color;
  final String title;
  final IconData icon;
  final int usedSpace;
  final int totalSpace;

  DriveCard(
      {required this.color,
      required this.title,
      required this.icon,
      required this.usedSpace,
      required this.totalSpace});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 256,
          height: 250,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black.withOpacity(0.10)),
                    child: const Icon(
                      Iconsax.trash,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black.withOpacity(0.10)),
                    child: const Icon(
                      Iconsax.copy,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black.withOpacity(0.10)),
                    child: const Icon(
                      Iconsax.filter,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16),
              Text(
                title,
                style: const TextStyle(
                  fontFamily: 'PaynetB',
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Color(0xFF000000),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                '$usedSpace GB / $totalSpace GB',
                style: const TextStyle(
                  fontFamily: 'PaynetB',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFF000000),
                ),
              ),
              const SizedBox(height: 8),
              LinearProgressIndicator(
                value: usedSpace / totalSpace,
                backgroundColor: Colors.black.withOpacity(0.10),
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

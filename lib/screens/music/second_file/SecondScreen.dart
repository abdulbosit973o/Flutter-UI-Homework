import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'navigation_controller/NavigationController.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    var light = false;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Iconsax.flash_circle5)),
        backgroundColor: Colors.white,
        title: const Text(
          'Profile',
          style: TextStyle(
            fontFamily: 'PaynetB',
            fontWeight: FontWeight.w400,
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Iconsax.more_circle5)),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.all(16),
                  padding: EdgeInsets.only(top: 16),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SingleChildScrollView(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 32),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(56),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/images/avatar2.jpg',
                                  ),
                                ),
                              ),
                              child: const SizedBox(
                                width: 65,
                                height: 65,
                              ),
                            ),
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Tom Andrew',
                                  style: TextStyle(
                                    fontFamily: 'PaynetB',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ),
                              Text(
                                'tomandrew662@gmail.com',
                                style: TextStyle(
                                  fontFamily: 'PaynetB',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0x99000000),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFFFD4E4E), // Light Red
                            Color(0xFFFC4444),
                            Color(0xFFF33535),
                            Color(0xFFE83232),
                            Color(0xFFEF3B3B),
                            Color(0xFFEC1010),
                            Color(0xFFF81313),
                            Color(0xFFFF0000),
                            Color(0xFFDA0B0B), // Dark Red
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      width: double.infinity,
                      height: 176,
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Expanded(
                              child: Text(
                                'Enjoy All Benefits!',
                                style: TextStyle(
                                  fontFamily: 'PaynetB',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque quis turpis quis ligula tempus egestas.',
                                style: TextStyle(
                                  fontFamily: 'PaynetB',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xFFDED5D5),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  'Get Premium',
                                  style: TextStyle(
                                    fontFamily: 'PaynetB',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 16, 20, 25.5),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 20,
                            height: 20,
                            child: SizedBox(
                              width: 20,
                              height: 20,
                              child: Icon(Iconsax.profile_2user),
                            ),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0.5, 0, 0.5),
                            child: const Text(
                              'Profile',
                              style: TextStyle(
                                fontFamily: 'PaynetB',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          Spacer(),
                          const Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 25.5),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 20,
                            height: 20,
                            child: SizedBox(
                              width: 20,
                              height: 20,
                              child: Icon(Iconsax.notification,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0.5, 0, 0.5),
                            child: const Text(
                              'Notification',
                              style: TextStyle(
                                fontFamily: 'PaynetB',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          Spacer(),
                          const Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 25.5),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 20,
                            height: 20,
                            child: SizedBox(
                              width: 20,
                              height: 20,
                              child: Icon(Iconsax.microphone,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0.5, 0, 0.5),
                            child: const Text(
                              'Audio & Video',
                              style: TextStyle(
                                fontFamily: 'PaynetB',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          Spacer(),
                          const Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 25.5),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 20,
                            height: 20,
                            child: SizedBox(
                              width: 20,
                              height: 20,
                              child: Icon(Iconsax.video_circle,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0.5, 0, 0.5),
                            child: const Text(
                              'Playback',
                              style: TextStyle(
                                fontFamily: 'PaynetB',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          Spacer(),
                          const Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 25.5),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 20,
                            height: 20,
                            child: SizedBox(
                              width: 20,
                              height: 20,
                              child: Icon(Iconsax.check, color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0.5, 0, 0.5),
                            child: const Text(
                              'Data saver & Storage',
                              style: TextStyle(
                                fontFamily: 'PaynetB',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          Spacer(),
                          const Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 25.5),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 20,
                            height: 20,
                            child: SizedBox(
                              width: 20,
                              height: 20,
                              child: Icon(Iconsax.security_safe,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0.5, 0, 0.5),
                            child: const Text(
                              'Security',
                              style: TextStyle(
                                fontFamily: 'PaynetB',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          Spacer(),
                          const Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 25.5),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 20,
                            height: 20,
                            child: SizedBox(
                              width: 20,
                              height: 20,
                              child: Icon(Iconsax.language_circle,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0.5, 0, 0.5),
                            child: const Text(
                              'Language',
                              style: TextStyle(
                                fontFamily: 'PaynetB',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          const Spacer(),
                          const Text(
                            'English (US)',
                            style: TextStyle(
                              fontFamily: 'PaynetB',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF000000),
                            ),
                          ),
                          const Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 25.5),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 20,
                            height: 20,
                            child: SizedBox(
                              width: 20,
                              height: 20,
                              child: Icon(Iconsax.eye, color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0.5, 0, 0.5),
                            child: const Text(
                              'Dark mode',
                              style: TextStyle(
                                fontFamily: 'PaynetB',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Switch(
                            // This bool value toggles the switch.
                            value: light = false,
                            activeColor: Colors.red,
                            onChanged: (bool value) {
                              // This is called when the user toggles the switch.
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(2.7, 0, 0, 0),
                  child: const Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'Privacy Policy - Terms & conditions',
                      style: TextStyle(
                        fontFamily: 'PaynetB',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xFFB6B6B6),
                      ),
                    ),
                  ),
                ),
                const Divider(height: 1, color: Colors.grey,)
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          backgroundColor: Color(0xFFFAF8F8),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.data), label: 'Day'),
            NavigationDestination(
                icon: Icon(Iconsax.message), label: 'Message'),
            NavigationDestination(
                icon: Icon(Iconsax.profile_2user), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}

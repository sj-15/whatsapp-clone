import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/utils/colors.dart';

import '../features/chat/widget/contactlist.dart';
import '../features/community/screens/communityscreen.dart';
import '../features/contatcs/screens/select_contact_screen.dart';
import '../features/status/screens/statuscontactsscreen.dart';

class MobilelayoutScreen extends StatefulWidget {
  const MobilelayoutScreen({super.key});

  @override
  State<MobilelayoutScreen> createState() => _MobilelayoutScreenState();
}

class _MobilelayoutScreenState extends State<MobilelayoutScreen> {
  // late TabController tabBarController;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 2, 143, 120),
          elevation: 0,
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ],
          bottom: const TabBar(
            // controller: tabBarController,
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            isScrollable: true,
            unselectedLabelColor: Colors.white70,
            labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            tabs: [
              SizedBox(
                width: 25,
                child: Tab(
                  icon: Icon(Icons.groups),
                ),
              ),
              SizedBox(
                width: 70,
                child: Tab(
                  text: 'Chats',
                ),
              ),
              SizedBox(
                width: 70,
                child: Tab(
                  text: 'Status',
                ),
              ),
              SizedBox(
                width: 70,
                child: Tab(
                  text: 'Calls',
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          // controller: tabBarController,
          children: [
            CommunityScreen(),
            ContactList(),
            StatusContactsScreen(),
            Text('Calls'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, SelectContactList.routeName);
          },
          backgroundColor: tabColor,
          child: const Icon(
            Icons.comment,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

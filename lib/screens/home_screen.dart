import 'package:flutter/material.dart';
import 'package:flutter_ui02_tabmenu/screens/tabs/general_info_tab.dart';
import 'package:flutter_ui02_tabmenu/screens/tabs/student_id_tab.dart';
import 'package:flutter_ui02_tabmenu/screens/tabs/major_tab.dart';
import 'package:flutter_ui02_tabmenu/screens/tabs/contact_tab.dart';
import 'package:flutter_ui02_tabmenu/screens/tabs/photo_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Student Profile'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'ข้อมูลทั่วไป', icon: Icon(Icons.person)),
              Tab(text: 'รหัส/คณะ', icon: Icon(Icons.school)),
              Tab(text: 'สาขา', icon: Icon(Icons.book)),
              Tab(text: 'เบอร์โทร', icon: Icon(Icons.phone)),
              Tab(text: 'ความสนใจ', icon: Icon(Icons.interests)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const GeneralInfoTab(),
            const StudentIdTab(),
            const MajorTab(),
            const ContactTab(),
            const PhotoTab(),
          ],
        ),
      ),
    );
  }
}

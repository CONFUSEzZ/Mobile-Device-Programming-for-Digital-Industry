import 'package:flutter/material.dart';

class StudentIdTab extends StatelessWidget {
  const StudentIdTab({super.key});

  Widget _buildSection(String title, Widget content) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue.shade700,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: content,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // รูปภาพคณะวิศวกรรมศาสตร์
          Container(
            height: 200,
            margin: const EdgeInsets.only(bottom: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                image: AssetImage('assets/images/1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // ประวัติคณะ
          _buildSection(
            'ประวัติของคณะโดยสังเขป',
            const Text(
              'คณะวิศวกรรมศาสตร์ มหาวิทยาลัยเทคโนโลยีราชมงคลธัญบุรี จัดตั้งเมื่อปี พ.ศ. 2518 ใช้ชื่อว่า "คณะวิศวกรรมเทคโนโลยี" วิทยาลัยเทคโนโลยีและอาชีวศึกษา ต่อมาปี พ.ศ. 2532 มีพระราชบัญญัติเปลี่ยนชื่อวิทยาลัยเทคโนโลยีและอาชีวศึกษาเป็นสถาบันเทคโนโลยีราชมงคล และใช้ชื่อใหม่ว่า "คณะวิศวกรรมศาสตร์" โดยมีผลตั้งแต่วันที่ 13 ตุลาคม 2537',
              style: TextStyle(fontSize: 16, height: 1.6),
            ),
          ),

          // รูปภาพอาคารคณะ
         

          // การรับรองมาตรฐาน
          _buildSection(
            'การรับรองมาตรฐาน',
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ListTile(
                  leading: Icon(Icons.verified, color: Colors.green),
                  title: Text('ISO 9001:2000'),
                  subtitle: Text('รับรองโดย สถาบันรับรองมาตรฐานไอเอสโอ (สรอ.) เมื่อวันที่ 13 สิงหาคม พ.ศ. 2547'),
                ),
                ListTile(
                  leading: Icon(Icons.school, color: Colors.blue),
                  title: Text('สภาวิศวกร'),
                  subtitle: Text('รับรองหลักสูตรวิศวกรรมศาสตรบัณฑิต สำหรับผู้เข้าศึกษาปี 2546-2550'),
                ),
              ],
            ),
          ),

          // รูปภาพกิจกรรม
        

          // ความร่วมมือ
          _buildSection(
            'ความร่วมมือกับสถาบันอื่น',
            const Text(
              'คณะวิศวกรรมศาสตร์มีการลงนามความร่วมมือกับมหาวิทยาลัยมากกว่า 10 ประเทศทั่วโลก เช่น Kyoto University (ญี่ปุ่น), Beijing Liaotong University (จีน), Singapore Polytechnic (สิงคโปร์), Hof University of Applied Sciences (เยอรมนี), Finland University (ฟินแลนด์) และ Technical University of Liberec (เช็ก)',
              style: TextStyle(fontSize: 16, height: 1.6),
            ),
          ),

          // แผนยุทธศาสตร์
          _buildSection(
            'แผนยุทธศาสตร์เพื่อการพัฒนา',
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ListTile(
                  leading: Icon(Icons.lightbulb, color: Colors.amber),
                  title: Text('การเรียนรู้สู่การเป็นนวัตกร'),
                  subtitle: Text('Learning to be innovation'),
                ),
                ListTile(
                  leading: Icon(Icons.science, color: Colors.blue),
                  title: Text('การวิจัยเพื่อสร้างสรรค์นวัตกรรม'),
                  subtitle: Text('Research for innovation'),
                ),
                ListTile(
                  leading: Icon(Icons.people, color: Colors.green),
                  title: Text('การบริการวิชาการและเพิ่มคุณค่าด้านศิลปวัฒนธรรม'),
                  subtitle: Text('Social and culture enhance by innovation'),
                ),
                ListTile(
                  leading: Icon(Icons.settings, color: Colors.purple),
                  title: Text('การบริหารจัดการด้วยนวัตกรรม'),
                  subtitle: Text('Innovative management'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class GeneralInfoTab extends StatelessWidget {
  const GeneralInfoTab({super.key});

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, size: 24, color: Colors.blue),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // รูปโปรไฟล์แบบวงกลมพร้อมขอบ
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.blue.shade200,
                width: 3,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/me.png'),
            ),
          ),
          const SizedBox(height: 24),
          // ข้อมูลส่วนตัว
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildInfoRow(Icons.person, 'ชื่อ-นามสกุล', 'นาย ณัฐชัย ยิ้มฉาย'), 
                const Divider(),
                _buildInfoRow(Icons.cake, 'วันเกิด', '29 เมษายน 2543'),
                const Divider(),
                _buildInfoRow(Icons.male, 'เพศ', 'ชาย'),
                const Divider(),
                _buildInfoRow(Icons.calendar_today, 'อายุ', '25 ปี'),
                const Divider(),
                _buildInfoRow(Icons.height, 'ส่วนสูง', '180 ซม.'),
                const Divider(),
                _buildInfoRow(Icons.monitor_weight, 'น้ำหนัก', '85 กก.'),
                const Divider(),
                _buildInfoRow(Icons.favorite, 'สถานภาพ', 'โสด'),
                const Divider(),
                _buildInfoRow(Icons.home, 'ภูมิลำเนา', 'พิษณุโลก'),
                const Divider(),
                _buildInfoRow(Icons.language, 'สัญชาติ/เชื้อชาติ', 'ไทย/ไทย'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

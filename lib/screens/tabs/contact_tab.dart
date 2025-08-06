import 'package:flutter/material.dart';

class ContactTab extends StatelessWidget {
  const ContactTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'ข้อมูลการติดต่อ',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text('เบอร์โทรศัพท์'),
            subtitle: const Text('0834311911'),
          ),
          ListTile(
            leading: const Icon(Icons.email),
            title: const Text('อีเมล'),
            subtitle: const Text('natthachai.confuse@gmail.com'),
          ),
          ListTile(
            leading: const Icon(Icons.location_on),
            title: const Text('ที่อยู่'),
            subtitle: const Text('-'),
          ),
          ListTile(
            leading: const Icon(Icons.facebook),
            title: const Text('Facebook'),
            subtitle: const Text('https://www.facebook.com/Natthachaifuse/'),
          ),
          ListTile(
            leading: const Icon(Icons.line_axis),
            title: const Text('Line ID'),
            subtitle: const Text('confuse_ny'),
          ),
        ],
      ),
    );
  }
}

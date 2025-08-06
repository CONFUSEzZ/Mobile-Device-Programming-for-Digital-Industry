import 'package:flutter/material.dart';

class MajorTab extends StatelessWidget {
  const MajorTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.computer, color: Colors.blueAccent, size: 28),
              SizedBox(width: 8),
              Text('สาขาวิชาวิศวกรรมคอมพิวเตอร์',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blueAccent)),
            ],
          ),
          const Divider(height: 28, thickness: 1.2),
          const Text('เป้าหมายของภาควิชาวิศวกรรมคอมพิวเตอร์',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87)),
          const SizedBox(height: 8),
          _buildTargetSection(),
          const SizedBox(height: 18),
          _buildCourseSection(),
          const SizedBox(height: 12),
          _buildQualificationSection(),
          const SizedBox(height: 18),
          _buildPhilosophySection(),
          const SizedBox(height: 18),
          _buildMissionSection(),
          const SizedBox(height: 18),
          _buildInfrastructureSection(),
        ],
      ),
    );
  }

  Widget _buildTargetSection() {
    return const Padding(
      padding: EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Icon(Icons.check_circle, color: Colors.green, size: 18),
            SizedBox(width: 6),
            Expanded(
              child: Text(
                'สร้างวิศวกรคอมพิวเตอร์ที่มีความเป็นเลิศทั้งทางด้านทฤษฎีและปฏิบัติด้วยหลักสูตรที่สมัยใหม่ รวมทั้งมุ่งเน้นให้มีประสบการณ์ในการทำงานจริงจากสถานประกอบการ',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ]),
          SizedBox(height: 4),
          Row(children: [
            Icon(Icons.check_circle, color: Colors.green, size: 18),
            SizedBox(width: 6),
            Expanded(
              child: Text(
                'มุ่งเน้นในด้านงานวิจัยและการประยุกต์ใช้ในทั้งระดับประเทศและระดับโลก',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ]),
        ],
      ),
    );
  }

  Widget _buildCourseSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('หลักสูตรที่เปิดสอน',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87)),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(10),
          child: const Text(
            'ปัจจุบันภาควิชาวิศวกรรมคอมพิวเตอร์เปิดสอนระดับปริญญาตรี วุฒิวิศวกรรมศาสตรบัณฑิต (วิศวกรรมคอมพิวเตอร์) ใช้ระยะเวลาเรียน 4 ปี เรียนตามแผน และสามารถเรียนจบได้ภายใน 3 ปี กรณีเทียบโอนรายวิชา เทียบโอนหน่วยกิต',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }

  Widget _buildQualificationSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('คุณสมบัติของผู้เข้าศึกษา',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87)),
        const SizedBox(height: 8),
        const Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text(
            'เป็นผู้ที่จบการศึกษาระดับ ปวช. สายช่างอุตสาหกรรม ม.6 หรือเทียบเท่าและระดับ ปวส-เทคนิคคอมพิวเตอร์, อิเลคทรอนิกส์ ซึ่งสามารถเทียบโอนรายวิชาได้ และมีความสนใจด้านฮาร์ดแวร์ ซอฟท์แวร์ ระบบเครือข่าย และประมวลผลสัญญาณ',
            style: TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(height: 8),
        const Row(
          children: [
            Icon(Icons.star, color: Colors.orange, size: 18),
            SizedBox(width: 6),
            Text('จำนวนหน่วยกิตตลอดหลักสูตร: ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Text('143 หน่วยกิต',
                style: TextStyle(fontSize: 16, color: Colors.orange, fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    );
  }

  Widget _buildPhilosophySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('ปรัชญา ปณิธาน เอกลักษณ์ อัตลักษณ์ วิสัยทัศน์ พันธกิจ',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87)),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.green.shade50,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildRichText('ปรัชญา: ', 'นวัตกรรมสร้างชาติ ราชมงคลธัญบุรีสร้างนวัตกรรม'),
              _buildRichText('ปณิธาน: ',
                  'มุ่งมั่นจัดการศึกษาและวิจัย ผลิตนวัตกรและนวัตกรรมที่ทรงคุณค่าต่อเศรษฐกิจ สังคม และสิ่งแวดล้อมเพื่อการพัฒนาประเทศอย่างยั่งยืน'),
              _buildRichText('วิสัยทัศน์: ', 'มหาวิทยาลัยนวัตกรรมที่สร้างคุณค่าสู่สังคมและประเทศ'),
              _buildRichText('เอกลักษณ์: ', 'มหาวิทยาลัยนักปฏิบัติ พัฒนานวัตกร และสร้างสรรค์นวัตกรรม'),
              _buildRichText('อัตลักษณ์: ', 'นักปฏิบัติ นักคิด นักสร้างสรรค์นวัตกรรม'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRichText(String title, String content) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(fontSize: 16, color: Colors.black87),
        children: [
          TextSpan(
              text: title,
              style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
          TextSpan(text: content),
        ],
      ),
    );
  }

  Widget _buildMissionSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('พันธกิจ',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87)),
        const SizedBox(height: 8),
        const Padding(
          padding: EdgeInsets.only(left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Icon(Icons.arrow_right, color: Colors.teal, size: 20),
                SizedBox(width: 4),
                Expanded(
                    child: Text('ผลิตและพัฒนากำลังคนให้มีความสามารถทางวิชาการ วิชาชีพ คิดสร้างสรรค์และเรียนรู้ตลอดชีวิต',
                        style: TextStyle(fontSize: 16))),
              ]),
              Row(children: [
                Icon(Icons.arrow_right, color: Colors.teal, size: 20),
                SizedBox(width: 4),
                Expanded(
                    child: Text(
                        'สร้างงานวิจัย สิ่งประดิษฐ์ งานสร้างสรรค์ และนวัตกรรม สู่การนำไปใช้ประโยชน์ในภาคอุตสาหกรรม สังคม ชุมชน หรือสร้างมูลค่าเชิงพาณิชย์',
                        style: TextStyle(fontSize: 16))),
              ]),
              Row(children: [
                Icon(Icons.arrow_right, color: Colors.teal, size: 20),
                SizedBox(width: 4),
                Expanded(
                    child: Text(
                        'ให้บริการวิชาการแก่ชุมชนในพื้นที่เป้าหมายหรือภาคประกอบการเพื่อการพัฒนาอย่างยั่งยืน',
                        style: TextStyle(fontSize: 16))),
              ]),
              Row(children: [
                Icon(Icons.arrow_right, color: Colors.teal, size: 20),
                SizedBox(width: 4),
                Expanded(
                    child: Text('ทำนุบำรุงศาสนา ศิลปวัฒนธรรม และอนุรักษ์สิ่งแวดล้อม',
                        style: TextStyle(fontSize: 16))),
              ]),
              Row(children: [
                Icon(Icons.arrow_right, color: Colors.teal, size: 20),
                SizedBox(width: 4),
                Expanded(
                    child: Text(
                        'บริหารจัดการอย่างมีธรรมาภิบาล เพิ่มประสิทธิภาพและประสิทธิผลด้วยนวัตกรรม เพื่อการพัฒนาอย่างต่อเนื่องและยั่งยืน',
                        style: TextStyle(fontSize: 16))),
              ]),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInfrastructureSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('โครงสร้างพื้นฐานห้องเรียน',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87)),
        const SizedBox(height: 8),
        const Padding(
          padding: EdgeInsets.only(left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Icon(Icons.circle, size: 8, color: Colors.blueGrey),
                SizedBox(width: 8),
                Expanded(
                    child: Text(
                        'ห้องเรียน เครื่องมือและอุปกรณ์ในการเรียนครบครัน ทั้งห้องทฤษฎี ห้องปฏิบัติการ ห้องโครงงาน และห้องประชุม',
                        style: TextStyle(fontSize: 16))),
              ]),
              Row(children: [
                Icon(Icons.circle, size: 8, color: Colors.blueGrey),
                SizedBox(width: 8),
                Expanded(
                    child: Text(
                        'ห้องทฤษฎีมีอุปกรณ์เช่น โปรเจ็คเตอร์ ไมโครโฟน เครื่องขยายเสียง เครื่องปรับอากาศ กระดานเขียน',
                        style: TextStyle(fontSize: 16))),
              ]),
              Row(children: [
                Icon(Icons.circle, size: 8, color: Colors.blueGrey),
                SizedBox(width: 8),
                Expanded(
                    child: Text('ห้องปฏิบัติการฮาร์ดแวร์และซอฟต์แวร์ เครื่องคอมพิวเตอร์มากกว่า 150 ชุด',
                        style: TextStyle(fontSize: 16))),
              ]),
              Row(children: [
                Icon(Icons.circle, size: 8, color: Colors.blueGrey),
                SizedBox(width: 8),
                Expanded(
                    child: Text('ห้องโครงงานมีอุปกรณ์และเครื่องมือช่างพื้นฐานให้ทดลองพัฒนาต่อยอดความรู้',
                        style: TextStyle(fontSize: 16))),
              ]),
              Row(children: [
                Icon(Icons.circle, size: 8, color: Colors.blueGrey),
                SizedBox(width: 8),
                Expanded(
                    child: Text('ห้องประชุมรองรับการพูดคุยงานกลุ่มและกิจกรรมต่าง ๆ',
                        style: TextStyle(fontSize: 16))),
              ]),
            ],
          ),
        ),
      ],
    );
  }
}

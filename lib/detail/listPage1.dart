import 'package:flutter/material.dart';

// ignore: unused_import

//ต้องมีการเชื่อมดาต้าโลเคชั่น
//เพื่อค้นหาคาเฟ่ที่อยู่ตัวผู้ใช้ในระยะไม่เกิน 1 กม.
//แสดงผลเป็น ListView

//สร้างหน้าเชื่อมบทความ
// ignore: camel_case_types
class listPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ร้านกาแฟสด 989/1 coffee พะเยา"),
          backgroundColor: Colors.orangeAccent,
          centerTitle: true,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Hero(
                tag: Text("ร้านกาแฟสด 989/1 coffee พะเยา"),
                child: Image(
                  image: AssetImage('asset/images/คาเฟ่น่านั่ง-พะเยา1.jpg'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "ร้านกาแฟสด 989/1 coffee พะเยา",
                  style: TextStyle(fontSize: 36),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "สำหรับใครที่รักกาแฟ เป็นคอกาแฟตัวจริงเสียงจริงล่ะก็ ต้องตกหลุมรักร้านนี้อย่างแน่นอน เพราะว่าที่นี่เค้าใส่ใจในทุกรายละเอียด เรียกได้ว่าคุณภาพคับถ้วย ทั้งการคัดสรรเมล็ดกาแฟพันธุ์ดี มีคุณภาพจากต้นตอการผลิต ทำให้คุณสามารถเชื่อมั่นได้เลยว่ากาแฟทุกหยดที่นี่นั่นดีจริง หอมจริง กลมกล่อมเข้มข้นแบบไม่ทำให้ผิดหวังอย่างแน่นอน ส่วนบรรยากาศภายในร้ยานก็เป็นแบบสบายๆ อบอุ่นสไตล์ร้านกาแฟให้สวน ทำให้คุณรู้สึกเป็นกันเองและผ่อนคลายทุกครั้งที่ได้มาใช้บริการ และที่นี่เค้าก็ไม่ได้มีดีแค่เพียงเรื่องของกาแฟเท่านั้นนะคะ เพราะว่าทั้งอาหารคาว และของหวานที่นี่ก็มีอัดแน่นอพร้อมเสิร์ฟไม่แพ้กัน และแน่นอนว่าคุณภาพและความอร่อยนั้นให้ความประทับใจแบบเกินคาดอย่างแน่นอน",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "เวลาทำการ : เปิดทุกวัน 8.30-17.00",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "ที่ตั้ง : 989/1 หมู่ 3 ป่าแดง ตำบลท่าวังทอง อำเภอเมือง จังหวัดพะเยา",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  '  เบอร์ติดต่อ : 091 071 1011',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    child: Image(
                      image: AssetImage('asset/images/คาเฟ่น่านั่ง-พะเยา.jpg'),
                    ),
                  )),
              //เพิ่มช่องว่าง
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
  }
}

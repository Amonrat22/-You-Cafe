import 'package:flutter/material.dart';

//ต้องมีการเชื่อมดาต้าโลเคชั่น
//เพื่อค้นหาคาเฟ่ที่อยู่ตัวผู้ใช้ในระยะไม่เกิน 1 กม.
//แสดงผลเป็น ListView

//สร้างหน้าเชื่อมบทความ
// ignore: camel_case_types
class listPage5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("โฮมเวิร์ค คาเฟ่ (HomeWork Cafe)"),
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
                tag: Text("โฮมเวิร์ค คาเฟ่ (HomeWork Cafe)"),
                child: Image(
                  image: AssetImage('asset/images/Homework-768x576.jpg'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "โฮมเวิร์ค คาเฟ่ (HomeWork Cafe)",
                  style: TextStyle(fontSize: 36),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "ร้านบรรยากาศดี บรรยากาศคล้ายมาเที่ยวบ้านเพื่อน จิบเครื่องดื่มเย็นๆ ชา กาแฟ หรืออาหารจานเดียว ต่อด้วยของหวานในราคาย่อมเยาว์",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "เวลาทำการ : เปิดทุกวัน 11.00-21.00",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "ที่อยู่ :  เลียบคลองถนนแม่ต๋าสายในเทศบาลเมืองพะเยา  56000",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  '  เบอร์โทรศัพท์ :   080-834-2137',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    child: Image(
                      image: AssetImage('asset/images/Homework3-768x575.jpg'),
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

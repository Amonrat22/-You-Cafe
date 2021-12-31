import 'package:flutter/material.dart';

//ต้องมีการเชื่อมดาต้าโลเคชั่น
//เพื่อค้นหาคาเฟ่ที่อยู่ตัวผู้ใช้ในระยะไม่เกิน 1 กม.
//แสดงผลเป็น ListView

//สร้างหน้าเชื่อมบทความ
// ignore: camel_case_types
class listPage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("บ้านอิงกว๊าน Bar & Cafe’"),
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
                tag: Text("บ้านอิงกว๊าน Bar & Cafe’"),
                child: Image(
                  image: AssetImage('asset/images/คาเฟ่น่านั่ง-พะเยา5.jpg'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "บ้านอิงกว๊าน Bar & Cafe’",
                  style: TextStyle(fontSize: 36),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "แน่นอนว่าหากคุณมาถึงจังหวัดพะเยากันแล้ว ก็ต้องมาชมความสวยงามของกว๊านพะเยากัน และจะดีกว่าไหมหากคุณได้มานั่งชิวๆ พร้อมกับจิบเครื่องดื่มแก้วโปรดไปด้วย และชมความสวยงดงามของกว๊านพะเยาไปด้วยได้ในเวลาเดียวกัน  ใช่แล้วค่ะ หากคุณอยากจะสัมผัสบรรยากาศสุดฟินแบบนี้ก็ต้องมาที่นี่เลย บ้านอิงกว๊าน Bar&Cafe เพราะที่นี่ถือว่าเป็นอีกหนึ่งคาเฟ่สวยทำเลดีที่คุณไม่ควรพลาด และพร้อมเสิร์ฟด้วยเมนูที่หลากหลายให้คุณได้เลือกอย่างชา กาแฟ  Craft Beer ของหวานและอาหารคาว ที่เรียกว่าจะนั่งกันยาวๆตั้งแต่เช้าจรดเย็นเลยก็ได้เพราะเค้ามีบริการแทบทุกอย่างจริงๆ เอาเป็นว่าใครที่อยากจะมาลองใช้ชีวิตสโลวไลฟ์แบบฟินๆ ชิวๆ ก็ต้องมากันที่นี่เลยจ้า",
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
                  "ที่ตั้ง : 306 ตำบลเวียง อำเภอเมือง จังหวัดพะเยา",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  '  เบอร์ติดต่อ : 092 652 9211',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    child: Image(
                      image: AssetImage('asset/images/คาเฟ่น่านั่ง-พะเยา6.jpg'),
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

import 'package:flutter/material.dart';
//ต้องมีการเชื่อมดาต้าโลเคชั่น
//เพื่อค้นหาคาเฟ่ที่อยู่ตัวผู้ใช้ในระยะไม่เกิน 1 กม.
//แสดงผลเป็น ListView

//สร้างหน้าเชื่อมบทความ
// ignore: camel_case_types
class listPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Magic Mountain Cafe’"),
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
                tag: Text("Magic Mountain Cafe’"),
                child: Image(
                  image: AssetImage('asset/images/คาเฟ่น่านั่ง-พะเยา2.jpg'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Magic Mountain Cafe’",
                  style: TextStyle(fontSize: 36),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "หากใครอยากจะสัมผัสกับการจิบกาแฟสุดฟินก็ต้องมาที่นี่เลย Magic Mountain Cafe’ เพราะว่าที่นี่คุณจะได้มานั่งกินลมชมวิวกันบนยอดเขาสูงบนภูลังกา ซึ่งแน่นอนว่า ณ จุดนี้วิวที่คุณจะได้เห็นนั้นสวยงามจนประเมินค่าไม่ได้ ทั้งภูเขา ต้นไม้ สายหมอกและแสงแดด ที่ให้คุณได้จิบกาแฟชั้นเลิศไปพลางๆ พร้อมกับชมวิวสุดตระการตาไปพลางๆ บอกได้เลยว่าฟินแบบสุดๆอย่างแน่นอน ซึ่งความสวยของที่นี่ทำให้ Magic Mountain Cafe’ แห่งนี้กลายเป็นร้านกาแฟแห่งใหม่ขวัญใจมหาชนได้ในเวลาไม่นาน อีกทั้งที่นี่ก็ยังห้องพักไว้คอยบริการอีกด้วย สำหรับคนที่หลงรักในวิวสวยๆของที่นี่ เพราะไม่ว่าจะมาช่วงเช้า ช่วงกลางวัน หรือช่วงเย็นก็สวยฉ่ำไม่แพ้กันเลยค่ะ",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "เปิดทุกวัน 6.00-16.00 ปิดทุกวันอังคาร",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "ที่ตั้ง : 1148 อำเภอปง จังหวัดพะเยา",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  '  เบอร์ติดต่อ : 065 502 5499',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    child: Image(
                      image: AssetImage(
                          'asset/images/คาเฟ่น่านั่ง-พะเยา2 (1).jpg'),
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

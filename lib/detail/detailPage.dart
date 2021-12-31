import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../CafeNearMe.dart';
import '../TegData.dart';
import '../main.dart';
import 'course_model.dart';
import 'listPage1.dart';

// ignore: must_be_immutable
//เป็นคลาสที่เป็นแม่แบบแสดงรายการรายละเอียดเนื้อหาโดยเชื่อมกับหน้าหลัก
//ซึ่งหน้านี้จะมีรูปแบบแสดงผลที่ใช้กับทุกรายการในหน้าแรก
////ซึ่งทำให้การแสดงผลในแต่ละรายการจะมีแม่แบบของหน้าแสดงผลที่เหมือนกัน
// ignore: must_be_immutable
class DetailPage extends StatelessWidget {
  int _selectedIndex = 0;

  // ignore: unused_field
  List<Widget> _widgetOptions = <Widget>[
    MyApp(),
    Home(),
    CafeNear(),
    listPage1(),
  ];

  get onItemTap => null;

  // ignore: unused_element
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  CourseModel course;

  DetailPage({Key key, this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //ข้อความถูกเรียกใช้งานด้วยตัวกำหนดที่ตั้งไว้ โดยเชื่อมกับหน้าหลักที่ได้ทำรายการไว้
        title: Text(course.nameCafe),
        backgroundColor: Colors.orangeAccent,
        //ทำหัวข้ออยู่ตรงกลาง
        centerTitle: true,
        //เพิ่มเงาที่แถบบาร์
        elevation: 10.0,
        //เพิ่มความโค้งมนกับกับแถบบาร์
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(),
        ),
      ),
      //ตัวช่วยทำให้เนื้อหาที่เกินพื้นที่สามารถเลื่อนดูได้
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //เพิ่มช่องว่าง
            SizedBox(
              height: 10,
            ),
            Hero(
              tag: 'course_${course.nameCafe}',
              child: Image(
                image: AssetImage(course.imageLocation),
              ),
            ),
            //เพิ่มช่องว่าง
            SizedBox(
              height: 10,
            ),
            //Padding จะช่วยทำให้ข้อมูลหรือรายการมีการปรับขนาดให้พอดีไปตามที่จอแสดงผล
            //ให้พูดอย่างเข้าใจง่ายๆ ให้นึกถึงกล่องที่สามารถยืดและหดได้ตามขนาดพื้นที่ที่มีอยู่
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                course.nameCafe,
                style: TextStyle(fontSize: 36),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                course.detail,
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                course.time,
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                course.add,
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                course.tel,
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  child: Image(
                    image: AssetImage(course.pic1),
                  ),
                )),
            //เพิ่มช่องว่าง
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
              color: Colors.grey,
            ),
            label: 'bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: 'Profild',
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Colors.orangeAccent,
        selectedItemColor: Colors.amber[800],
        onTap: onItemTap,
      ),
    );
  }

  void setState(Null Function() param0) {}
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('_selectedIndex', _selectedIndex));
  }
}

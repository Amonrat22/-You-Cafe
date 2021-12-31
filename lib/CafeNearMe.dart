// ignore: avoid_web_libraries_in_flutter
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:you_cafe/main.dart';
// ignore: unused_import
import 'Style.dart';
import 'TegData.dart';
import 'detail/course_model.dart';
import 'detail/detailPage.dart';
//ต้องมีการเชื่อมดาต้าโลเคชั่น
//เพื่อค้นหาคาเฟ่ที่อยู่ตัวผู้ใช้ในระยะไม่เกิน 1 กม.
//แสดงผลเป็น ListView

//สร้างหน้าเชื่อมบทความ
class CafeNear extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'You Cafe',
      //ชื่อหน้าแอพ
      theme: ThemeData(
        //สร้างธีม
        backgroundColor: Colors.orangeAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'คาเฟ่ใกล้ตัวคุณ'),
      //หน้าหลัก หัวข้อคือ cafe in Phayao
      //MyHomePage คือคลาสคลาสหนึ่งของหน้าหลัก
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // ignore: unused_field
  List<Widget> _widgetOptions = <Widget>[
    MyApp(),
    CafeNear(),
    CafeNear(),
    CafeNear(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //List แสดงรายการ โดยดึงการแสดงผลเป็นCourseModelให้ง่ายขึ้นเมื่อมีการเรียกใช้
  List<CourseModel> courses = [
    CourseModel(
      nameCafe: 'ร้านกาแฟสด 989/1 coffee พะเยา',
      detail:
          '  สำหรับใครที่รักกาแฟ เป็นคอกาแฟตัวจริงเสียงจริงล่ะก็ ต้องตกหลุมรักร้านนี้อย่างแน่นอน เพราะว่าที่นี่เค้าใส่ใจในทุกรายละเอียด เรียกได้ว่าคุณภาพคับถ้วย ทั้งการคัดสรรเมล็ดกาแฟพันธุ์ดี มีคุณภาพจากต้นตอการผลิต ทำให้คุณสามารถเชื่อมั่นได้เลยว่ากาแฟทุกหยดที่นี่นั่นดีจริง หอมจริง กลมกล่อมเข้มข้นแบบไม่ทำให้ผิดหวังอย่างแน่นอน ส่วนบรรยากาศภายในร้ยานก็เป็นแบบสบายๆ อบอุ่นสไตล์ร้านกาแฟให้สวน ทำให้คุณรู้สึกเป็นกันเองและผ่อนคลายทุกครั้งที่ได้มาใช้บริการ และที่นี่เค้าก็ไม่ได้มีดีแค่เพียงเรื่องของกาแฟเท่านั้นนะคะ เพราะว่าทั้งอาหารคาว และของหวานที่นี่ก็มีอัดแน่นอพร้อมเสิร์ฟไม่แพ้กัน และแน่นอนว่าคุณภาพและความอร่อยนั้นให้ความประทับใจแบบเกินคาดอย่างแน่นอน',
      time: '  เวลาทำการ : เปิดทุกวัน 8.30-17.00',
      add:
          '  ที่ตั้ง : 989/1 หมู่ 3 ป่าแดง ตำบลท่าวังทอง อำเภอเมือง จังหวัดพะเยา',
      tel: '  เบอร์ติดต่อ : 091 071 1011',
      imageLocation: 'asset/images/คาเฟ่น่านั่ง-พะเยา1.jpg',
      pic1: 'asset/images/คาเฟ่น่านั่ง-พะเยา.jpg',
    ),
    CourseModel(
      nameCafe: 'Magic Mountain Cafe’',
      detail:
          '  หากใครอยากจะสัมผัสกับการจิบกาแฟสุดฟินก็ต้องมาที่นี่เลย Magic Mountain Cafe’ เพราะว่าที่นี่คุณจะได้มานั่งกินลมชมวิวกันบนยอดเขาสูงบนภูลังกา ซึ่งแน่นอนว่า ณ จุดนี้วิวที่คุณจะได้เห็นนั้นสวยงามจนประเมินค่าไม่ได้ ทั้งภูเขา ต้นไม้ สายหมอกและแสงแดด ที่ให้คุณได้จิบกาแฟชั้นเลิศไปพลางๆ พร้อมกับชมวิวสุดตระการตาไปพลางๆ บอกได้เลยว่าฟินแบบสุดๆอย่างแน่นอน ซึ่งความสวยของที่นี่ทำให้ Magic Mountain Cafe’ แห่งนี้กลายเป็นร้านกาแฟแห่งใหม่ขวัญใจมหาชนได้ในเวลาไม่นาน อีกทั้งที่นี่ก็ยังห้องพักไว้คอยบริการอีกด้วย สำหรับคนที่หลงรักในวิวสวยๆของที่นี่ เพราะไม่ว่าจะมาช่วงเช้า ช่วงกลางวัน หรือช่วงเย็นก็สวยฉ่ำไม่แพ้กันเลยค่ะ',
      time: '  เปิดทุกวัน 6.00-16.00 ปิดทุกวันอังคาร',
      add: '  ที่ตั้ง : 1148 อำเภอปง จังหวัดพะเยา',
      tel: '  เบอร์ติดต่อ : 065 502 5499',
      imageLocation: 'asset/images/คาเฟ่น่านั่ง-พะเยา2.jpg',
      pic1: 'asset/images/คาเฟ่น่านั่ง-พะเยา2 (1).jpg',
    ),
    CourseModel(
      nameCafe: 'บ้านอิงกว๊าน Bar & Cafe’',
      detail:
          '  แน่นอนว่าหากคุณมาถึงจังหวัดพะเยากันแล้ว ก็ต้องมาชมความสวยงามของกว๊านพะเยากัน และจะดีกว่าไหมหากคุณได้มานั่งชิวๆ พร้อมกับจิบเครื่องดื่มแก้วโปรดไปด้วย และชมความสวยงดงามของกว๊านพะเยาไปด้วยได้ในเวลาเดียวกัน  ใช่แล้วค่ะ หากคุณอยากจะสัมผัสบรรยากาศสุดฟินแบบนี้ก็ต้องมาที่นี่เลย บ้านอิงกว๊าน Bar&Cafe เพราะที่นี่ถือว่าเป็นอีกหนึ่งคาเฟ่สวยทำเลดีที่คุณไม่ควรพลาด และพร้อมเสิร์ฟด้วยเมนูที่หลากหลายให้คุณได้เลือกอย่างชา กาแฟ  Craft Beer ของหวานและอาหารคาว ที่เรียกว่าจะนั่งกันยาวๆตั้งแต่เช้าจรดเย็นเลยก็ได้เพราะเค้ามีบริการแทบทุกอย่างจริงๆ เอาเป็นว่าใครที่อยากจะมาลองใช้ชีวิตสโลวไลฟ์แบบฟินๆ ชิวๆ ก็ต้องมากันที่นี่เลยจ้า',
      time: '  เวลาทำการ : เปิดทุกวัน 11.00-21.00',
      add: '  ที่ตั้ง : 306 ตำบลเวียง อำเภอเมือง จังหวัดพะเยา',
      tel: '  เบอร์ติดต่อ : 092 652 9211',
      imageLocation: 'asset/images/คาเฟ่น่านั่ง-พะเยา5.jpg',
      pic1: 'asset/images/คาเฟ่น่านั่ง-พะเยา6.jpg',
    ),
    CourseModel(
      nameCafe: 'โฮมเวิร์ค คาเฟ่ (HomeWork Cafe)',
      detail:
          '  ร้านบรรยากาศดี บรรยากาศคล้ายมาเที่ยวบ้านเพื่อน จิบเครื่องดื่มเย็นๆ ชา กาแฟ หรืออาหารจานเดียว ต่อด้วยของหวานในราคาย่อมเยาว์',
      time: '  ที่อยู่ :  เลียบคลองถนนแม่ต๋าสายในเทศบาลเมืองพะเยา  56000',
      add: '  ที่ตั้ง : 306 ตำบลเวียง อำเภอเมือง จังหวัดพะเยา',
      tel: '  เบอร์โทรศัพท์ :   080-834-2137',
      imageLocation: 'asset/images/Homework-768x576.jpg',
      pic1: 'asset/images/Homework3-768x575.jpg',
    ),
    CourseModel(
      nameCafe: 'Add More Cafe’',
      detail:
          '  คาเฟ่ริมน้ำ แสนร่มรื่น ภายในตกแต่งสไตล์ลอฟท์ มีมุมให้ถ่ายรูปมากมาย ทั้งในและนอกร้าน',
      time: '  เวลาเปิดทำการ   10.00 – 18.00  น.',
      add: '  ที่อยู่    ตำบลแม่กา อำเภอเมืองพะเยา พะเยา 56000',
      tel: '  เบอร์โทรศัพท์ :  090 972 5888',
      imageLocation: 'asset/images/addmore2-768x576.jpg',
      pic1: 'asset/images/addmore1-768x512.jpg',
    ),
    CourseModel(
      nameCafe: 'The Garden',
      detail:
          '  ร้านกาแฟในสวน บรรยากาศร่มรื่น สมชื่อเดอะการ์เด้น แม้ร้านไม่ใหญ่มากนัก แต่ก็อบอวลไปด้วยความสุข',
      time: '  เวลาเปิดทำการ  10.00 – 20.00  น.',
      add:
          '  ที่อยู่  หน้ามหาวิทยาลัยพะเยา   เทศบาลเมืองพะเยา  อ.เมือง  จ.พะเยา  56000',
      tel: '  เบอร์โทรศัพท์ :  081 565 374',
      imageLocation: 'asset/images/Thegarden2-768x576.jpg',
      pic1: 'asset/images/Thegarden3-768x768.jpg',
    ),
    CourseModel(
      nameCafe: 'The Lake Cafe Phayao',
      detail:
          '  จุดเด่นของร้านนี้คือ อยู่ริมกว๊านพะเยาเลย ทำให้มีลมพัดตลอด ไม่มีร้อน และมีแสงเข้าที่สวยมาก',
      time: '  เวลาเปิดทำการ  07.00 -12.00 น.',
      add:
          '  ที่อยู่  648, 18 ถนน พหลโยธิน ตำบล เวียง อำเภอเมืองพะเยา พะเยา 56000',
      tel: '  เบอร์โทรศัพท์ : 093 237 7907',
      imageLocation: 'asset/images/thelake-768x576.jpg',
      pic1: 'asset/images/thelake2-768x512.jpg',
    ),
    CourseModel(
      nameCafe: 'ร้านต้นมะเฟือง',
      detail:
          '  ร้านเล็กแต่น่ารักมาก ชั้นบนมีที่นั่งที่ล้อมรอบไปด้วยเหล่าตุ๊กตาน่ารักมาก ส่วนเค้กก็มีหลากหลายรูปแบบให้เลือก',
      time: '  เวลาเปิดทำการ   11.00 น.  – 18.00 น.',
      add: '  ที่อยู่   ถนนราชบุตร อำเภอเมือง พะเยา56000',
      tel: '  เบอร์โทรศัพท์ :   086 394 3552',
      imageLocation: 'asset/images/Tonmafeung-768x512.jpg',
      pic1: 'asset/images/Tonmafeung3-768x512.jpg',
    ),
    CourseModel(
      nameCafe: 'Thammada',
      detail:
          '  ร้านกาแฟธรรมดาที่ไม่ธรรมดา บรรยากาศโรแมนติกมากมีเถา ดอกสร้อยอินทนิล สวยหวานอ่อนช้อยอยู่หน้าร้าน ละมุนมากยิ่งขึ้นด้วยม่านสีขาวในร้าน เครื่องดื่มก็ละมุนมากโดยเฉพาะเซทน้ำชา',
      time: '  เวลาเปิดทำการ  09.00 -16.30 น.',
      add: '  ที่อยู่  ตำบล ท่าจำปี อำเภอเมืองพะเยา พะเยา 56000',
      tel: '  เบอร์โทรศัพท์ :  081 556 2246',
      imageLocation: 'asset/images/Thammada-พะเยา-1-768x512.jpg',
      pic1: 'asset/images/Thammada-พะเยา-4-768x512.jpg',
    ),
    CourseModel(
      nameCafe: 'MO-I cake studio',
      detail:
          '  คาเฟ่ดีไซน์สะดุดตา  เน้นเค้กแนวโฮมเม้ด  เค้กนุ่ม หอม อร่อยและราคาไม่แพงเลย',
      time: '  เวลาเปิดทำการ  09.00 – 18.00 น.',
      add: '  ที่อยู่  209 ม.6 บ้านห้วยลึก ต.บ้านตุ่น อ.เมืองพะเยา พะเยา 56000',
      tel: '  เบอร์โทรศัพท์ :  093 514 2942',
      imageLocation: 'asset/images/MO-I-cake-studio-1-768x432.jpg',
      pic1: 'asset/images/MO-I-cake-studio-2-768x432.jpg',
    ),
    CourseModel(
      nameCafe: 'ชาริน คาเฟ่ (Charin Coffee)',
      detail:
          '  ร้านสวยถูกใจคนชอบถ่ายรูปเป็นแน่ มีทั้งบรรยากาศภายในร้านและนอกร้านให้ได้นั่งชิวกัน',
      time: '  เวลาเปิดทำการ  09:00 – 19:00 น.',
      add: '  ที่อยู่  727 หมู่ 16 ต.แม่กา อ เมืองพะเยา พะเยา 56000',
      tel: '  เบอร์โทรศัพท์ :  065 773 3324',
      imageLocation: 'asset/images/charin2-768x527.jpg',
      pic1: 'asset/images/charin-768x512.jpg',
    ),
    CourseModel(
      nameCafe: 'Mr. Handsome',
      detail:
          '  ร้านกาแฟไม้ สไตล์การแต่งร้านแนวแมนๆ ดิบๆ มีการวางของประกอบที่เก๋ไก๋',
      time: '  เวลาเปิดทำการ 10:00 – 18:00 น.',
      add: '  ที่อยู่  332/1  อ เมืองพะเยา พะเยา 56000',
      tel: '  เบอร์โทรศัพท์ : 086 408 6852',
      imageLocation: 'asset/images/mr.handsome-768x576.jpg',
      pic1: 'asset/images/mr.handsome2-768x512.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        //ใส่ไอคอน โดยดึงไอคอนมาจากฐานข้อมูล
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          //ยังไม่สามารถย้อนกลับไปหน้าที่นำทางมาได้!!!!
          //!!!!!!!!!!
          onPressed: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context) {
              return MyApp();
            }));
          },
        ),
        title: Text(widget.title),
        //จัดหัวข้อให้อยู่ตรงกลาง
        centerTitle: true,
        //ใส่เงาให้กับแถบบาร์
        elevation: 10.0,
        //ทำให้แถบบาร์มีความโค้งมนขึ้น
      ),

      //ListViewทำให้ข้อมูลที่แสดงเป็นแบบรายการๆ โดยมี listTile เป็นตัวทำให้รายการแต่ละรายการมีโครงสร้างที่สามารถมองเห็นได้
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (BuildContext context, int index) {
          var course = courses[index];

          return ListTile(
            contentPadding:
                //ทำให้แต่ละรายการมีระยะห่างจากขอบตามที่เรากำหนด
                const EdgeInsets.only(top: 5, bottom: 5, right: 7, left: 7),
            //เมื่อมีการแตะรายการ
            onTap: () {
              //มีการนำทางไปที่คลาส DetailPage
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return DetailPage(
                    course: course,
                  );
                },
              ));
            },
            // Hero ใช้เพื่อแสดงรายการเมื่อเราคลิกรายการ จะมีการแสดงไปหน้าต่อไปโดยเป็นเหมือนการขยายออก
            leading: Hero(
              tag: 'course_${course.nameCafe}',
              child: Image(
                image: AssetImage(course.imageLocation),
                height: 100,
                width: 100,
                //กำหนดให้ภาพนั้นขนาดเต็มพอดีกับขนาดกรอบรุปที่ได้กำหนดไว้
                fit: BoxFit.fill,
              ),
            ),
            title: Text(course.nameCafe),
          );
        },
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
        onTap: _onItemTap,
      ),
    );
  }
}

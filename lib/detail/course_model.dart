//กำหนดว่าใน CourseModel มีอะไรบ้าง
class CourseModel {
  String nameCafe;
  String detail;
  String imageLocation;
  String time;
  String add;
  String tel;
  String pic1;
//ตัวกำหนดเมื่อเกิดการเรียกใช้ CourseModel ซึ่งเมื่อเรียกใช้ ต้องเรียกใช้งานให้ครบทุกตัว
  CourseModel(
      {this.nameCafe,
      this.detail,
      this.imageLocation,
      this.time,
      this.add,
      this.tel,
      this.pic1});
}

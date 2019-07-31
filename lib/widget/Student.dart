import 'Person.dart';

class Student extends Person {
  String hobby;

  Student(String name, int age)
      : hobby = "java",
        super(name, age);
  @override
  printInfo() => '''
  信息：
  ---------------
  爱好：$hobby
  姓名：$name
  年龄：$age
  ---------------
  ''';
}

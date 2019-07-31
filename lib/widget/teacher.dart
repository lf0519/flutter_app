
class Teacher {

 String name;
 int age;

 Teacher(this.name, this.age);

 Teacher operator +(Teacher t){

   return Teacher(name+t.name,age+t.age);
 }
 bool operator == (dynamic t){
   return name == t.name && age == t.age;
 }

}
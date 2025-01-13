class Person 
{
  String name;
  int age;

  // Constructor
  Person(this.name, this.age);

  // Method
  void introduce() 
{
    print('Hello, my name is $name and I am $age years old.');
  }
}

void main() {
  Person person1 = Person('Asad', 21);
  person1.introduce();
}

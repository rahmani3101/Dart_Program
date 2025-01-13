class Animal 
{
  void speak() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal 
{
  @override
  void speak() 
  {
    print('Dog barks');
  }
}

void main() 
{
  Dog dog = Dog();
  dog.speak();  // Outputs: Dog barks
}

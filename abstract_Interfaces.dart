abstract class Animal 
{
  void speak(); 
  // Abstract method, must be implemented by subclasses
}

class Dog implements Animal 
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

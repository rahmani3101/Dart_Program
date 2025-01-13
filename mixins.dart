//mixin allows you to add functionality to classes without using inheritance.
mixin CanRun
{
  void run() 
  {
    print('Running');
  }
}

mixin CanSwim 
{
  void swim() 
  {
    print('Swimming');
  }
}

class Animal with CanRun, CanSwim {}
//Animal mixes in both CanRun and CanSwim, giving it the ability to run and swim.

void main() {
  Animal animal = Animal();
  animal.run();  // Outputs: Running
  animal.swim();  // Outputs: Swimming
}

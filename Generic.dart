class Box<T> 
{
    //Box<T> is a generic class that can store a value of any type T. You define the type when creating an instance.This allows you to write flexible code that works with various data types.

  T value;

  Box(this.value);

  void showValue() 
  {
    print('The value is: $value');
  }
}

void main() 
{
  Box<int> intBox = Box<int>(10);
  intBox.showValue();  // Outputs: The value is: 10
  
  Box<String> stringBox = Box<String>('Hello');
  stringBox.showValue();  // Outputs: The value is: Hello
}

class Shape 
{
  void draw() 
  {
    print('Drawing a shape');
  }
}

class Circle extends Shape 
{
  @override
  void draw() 
  {
    print('Drawing a circle');
  }
}

void main() 
{
  Shape shape = Shape();
  shape.draw();  // Outputs: Drawing a shape
  
  Shape circle = Circle();
  circle.draw();  // Outputs: Drawing a circle
}

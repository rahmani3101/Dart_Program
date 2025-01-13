void main()
{
  // Create a set
  Set<String> colors = {'Red', 'Green', 'Blue'};

  // Adding an element
  colors.add('Yellow');

  // Checking if a set contains an element
  print(colors.contains('Green'));  // Outputs: true

  // Iterating through a set
  for (var color in colors) 
  {
    print(color);
  }
}

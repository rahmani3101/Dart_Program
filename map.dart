void main() 
{
  // Create a map
  Map<String, int> ages = {
    'John': 25,
    'Alice': 30,
    'Bob': 22
   };

  // Accessing elements
  print(ages['John']);  // Outputs: 25

  // Adding a new entry
  ages['Charlie'] = 28;

  // Iterating through a map
  ages.forEach((name, age) {
    print('$name is $age years old');
  });
}

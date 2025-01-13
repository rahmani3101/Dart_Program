void main() 
{
  String? name;  // Nullable type
//String? denotes a nullable variable, meaning it can hold either a String value or null.
//The null safety feature ensures that nullable types are checked for null values before they are accessed.

  // Checking if the value is null
  if (name == null) 
  {
    print('Name is null');
  } 
  else 
  {
    print('Name: $name');
  }

  name = 'Asad';
  print('Name: $name');  // Outputs: Name: Alice
}

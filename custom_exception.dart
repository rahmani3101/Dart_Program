class InvalidAgeException implements Exception 
{
  String message;
  InvalidAgeException(this.message);
//InvalidAgeException is a custom exception class that extends Exception.

  @override
  String toString() 
  {
    return message;
  }
}

void checkAge(int age) 
{
  if (age < 0) 
 {
    throw InvalidAgeException('Age cannot be negative!');
    //The throw keyword is used to raise an exception when an invalid age is encountered.
  } 
  else 
   {
    print('Age is valid: $age');
  }
}

void main()  
{
  try 
  {
    checkAge(-1);
  } 
  catch (e) 
  {
    print('Caught exception: $e');  // Outputs: Caught exception: Age cannot be negative!
  }
}

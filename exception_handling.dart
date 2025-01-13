void main() 
{
  try 
  {
    int result = 10 ~/ 0;  // Division by zero
    print(result);
  } 
  catch (e) 
  {
    print('Error: $e');
  }
  finally 
  {
    print('Execution finished.');
  }
}

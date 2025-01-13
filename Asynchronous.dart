Future<void> fetchData() async 
{
  // Simulating a network call with a delay
  await Future.delayed(Duration(seconds: 2));   //Future.delayed simulates a time-consuming task (like a network request)
  //async and await are used to work with asynchronous code.
  print('Data fetched!');
}
//The program doesn't block on await, so the execution continues without waiting for fetchData to complete.
void main() 
{
  print('Fetching data...');
  fetchData();
  print('Waiting for data...');
}

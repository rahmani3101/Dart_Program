//async* is used to define a stream generator.
Stream<int> countStream() async* 
{
  for (int i = 1; i <= 5; i++) 
  {
    yield i;  // Yields values to the stream
    await Future.delayed(Duration(seconds: 1));
    //The await for loop asynchronously listens for values emitted by the stream.
  }
}

void main() async 
{
  await for (var count in countStream()) 
  {
    print(count);  // Outputs numbers 1 to 5 with 1-second delay
  }
}

Stream<int> countStream() async* 
{
  for (int i = 1; i <= 5; i++) 
  {
  
    await Future.delayed(Duration(seconds: 1));
    yield i;  // Yielding values to the stream
  }
}

void main() async 
{
  print('Stream started');

  // Awaiting values emitted by the stream
  await for (var count in countStream()) 
  {
    print('Count: $count');  // Outputs: Count: 1, Count: 2, ..., with 1-second delay
  }

  print('Stream finished');
}


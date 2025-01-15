Stream<int> errorStream() async* 
{
  yield 1;
  yield 2;
  throw 'An error occurred';  // Throw an error in the stream
}

void main() 
{
  errorStream().listen(
    (data) 
    {
      print('Received data: $data');
    },
    onError: (error) 
    {
      print('Caught error: $error');  // Handling the error from the stream
    },
    onDone: () 
    {
      print('Stream is done!');
    }
  );
}


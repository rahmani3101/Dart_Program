void main() 
{
  Stream<int> countStream() async* 
  {
    for (int i = 1; i <= 5; i++) 
    {
      await Future.delayed(Duration(seconds: 1));
      yield i;
    }
  }

  // Listen to the stream
  StreamSubscription<int> subscription = countStream().listen(
    (data) 
    {
      print('Received data: $data');
    },
    onDone: () 
    {
      print('Stream is done!');
    },
  );

  // Pause the stream after receiving the first value
  Future.delayed(Duration(seconds: 2), () 
  {
    print('Pausing the stream');
    subscription.pause();
  });

  // Resume the stream after 3 more seconds
  Future.delayed(Duration(seconds: 5), () 
  {
    print('Resuming the stream');
    subscription.resume();
  });
}


import 'dart:async';

void main() 
{
  // Create a Broadcast StreamController
  StreamController<int> controller = StreamController<int>.broadcast();

  // First listener
  controller.stream.listen((data) {
    print('Listener 1 received: $data');
  });

  // Second listener
  controller.stream.listen((data) {
    print('Listener 2 received: $data');
  });

  // Adding data to the broadcast stream
  controller.add(1);
  controller.add(2);
  controller.add(3);

  // Closing the stream
  controller.close();
}


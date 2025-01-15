import 'dart:async';

void main() 
{
  // Create a StreamController to control the stream
  StreamController<int> controller = StreamController<int>();

  // Listen to the stream
  controller.stream.listen((data) {
    print('Received data: $data');
  });

  // Adding data to the stream
  controller.add(1);
  controller.add(2);
  controller.add(3);

  // Closing the stream
  controller.close();

  // After close, any further additions will cause an error
  // controller.add(4);  // Uncommenting this will throw an error
}


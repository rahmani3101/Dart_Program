import 'dart:io';

double celsiusToFahrenheit(double celsius) 
{
  return (celsius * 9 / 5) + 32;
}

void main() 
{
  stdout.write("Enter temperature in Celsius: ");
  double celsius = double.parse(stdin.readLineSync()!);
  double fahrenheit = celsiusToFahrenheit(celsius);
  print('$celsius °C is equal to $fahrenheit °F');
}

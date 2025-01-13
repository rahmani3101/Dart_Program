class Car 
{
  String model;
  int year;

  // Constructor
  Car(this.model, this.year);

  // Getter and Setter for the model
  String get model => model;
  set model(String newModel) => model = newModel;

  // Getter and Setter for the year
  int get year => year;
  set year(int newYear) => year = newYear;
}

void main() 
{
  Car car = Car('BMW', 2025);
  print('Car model: ${car.model}, Year: ${car.year}');
  
  car.model = 'Tata';  // Changing the model using setter
  print('Updated Car model: ${car.model}');
}

import 'vehicle.dart';

class Car extends Vehicle {
  String _transmissionType;
  int _passengers;

  Car(
    super.cylinderCapacity,
    super.maxSpeed,
    super.engineType,
    super.model,
    super.manufacturer,
    super.price,
    this._transmissionType,
    this._passengers,
  );

  String get transmissionType => _transmissionType;
  int get passengers => _passengers;

  set transmissionType(String value) => _transmissionType = value;
  set passengers(int value) => _passengers = value;

  void printInfo() {
    print("Cylinder Capacity: $cylinderCapacity CC");
    print("Maximum Speed: $maxSpeed km/hr");
    print("Model: $model");
    print("Engine Type: $engineType");
    print("Manufacturer: $manufacturer");
    print("Price: $price  pounds");
    print("Transmission: $_transmissionType");
    print("Passengers: $_passengers");
  }
}

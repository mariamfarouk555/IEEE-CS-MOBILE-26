import 'vehicle.dart';

class Truck extends Vehicle {
  int _loadCapacity;

  Truck(
    super.cylinderCapacity,
    super.maxSpeed,
    super.engineType,
    super.model,
    super.manufacturer,
    super.price,
    this._loadCapacity,
  );

  int get loadCapacity => _loadCapacity;
  set loadCapacity(int value) => _loadCapacity = value;

  void printInfo() {
    print("Cylinder Capacity: $cylinderCapacity CC");
    print("Maximum Speed: $maxSpeed km/hr");
    print("Model: $model");
    print("Engine Type: $engineType");
    print("Manufacturer: $manufacturer");
    print("Price: $price pounds");
    print("Load Capacity: $_loadCapacity kg");
  }
}

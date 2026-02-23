import 'vehicle.dart';

class Motorcycle extends Vehicle {
  int _tires;
  bool _sidecar;

  Motorcycle(
    super.cylinderCapacity,
    super.maxSpeed,
    super.engineType,
    super.model,
    super.manufacturer,
    super.price,
    this._tires,
    this._sidecar,
  );

  int get tires => _tires;
  bool get sidecar => _sidecar;

  set tires(int value) => _tires = value;
  set sidecar(bool value) => _sidecar = value;

  void printInfo() {
    print("Cylinder Capacity: $cylinderCapacity CC");
    print("Maximum Speed: $maxSpeed km/hr");
    print("Model: $model");
    print("Engine Type: $engineType");
    print("Manufacturer: $manufacturer");
    print("Price: $price  ponds");
    print("Tires: $_tires");
    print("Sidecar: ${_sidecar ? "Yes" : "No"}");
  }
}

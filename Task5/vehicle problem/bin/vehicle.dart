class Vehicle {
  int _cylinderCapacity;
  int _maxSpeed;
  String _engineType;
  int _model;
  String _manufacturer;
  double _price;

  Vehicle(
    this._cylinderCapacity,
    this._maxSpeed,
    this._engineType,
    this._model,
    this._manufacturer,
    this._price,
  );
  set cylinderCapacity(int value) => _cylinderCapacity = value;
  set maxSpeed(int value) => _maxSpeed = value;
  set engineType(String value) => _engineType = value;
  set model(int value) => _model = value;
  set manufacturer(String value) => _manufacturer = value;
  set price(double value) => _price = value;
  int get cylinderCapacity => _cylinderCapacity;
  int get maxSpeed => _maxSpeed;
  String get engineType => _engineType;
  int get model => _model;
  String get manufacturer => _manufacturer;
  double get price => _price;
}

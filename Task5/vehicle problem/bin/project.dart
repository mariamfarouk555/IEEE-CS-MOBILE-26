import 'vehicle.dart';
import 'car.dart';
import 'truck.dart';
import 'motorcycle.dart';

void main() {
  Car car1 = Car(
    1600,
    215,
    "Gasoline",
    2023,
    "Peugeot",
    1250000,
    "Automatic",
    5,
  );
  Car car2 = Car(1800, 244, "Hybrid", 2022, "BMW", 2350000, "Automatic", 5);

  Truck truck1 = Truck(2000, 170, "Diesel", 2015, "Chevrolet", 1215000, 2000);
  Truck truck2 = Truck(1800, 150, "Diesel", 2024, "Daihatsu", 1720000, 1250);

  Motorcycle moto1 = Motorcycle(
    750,
    110,
    "Electric",
    2011,
    "Suzuki",
    116000,
    3,
    true,
  );
  Motorcycle moto2 = Motorcycle(
    1400,
    200,
    "Gasoline",
    2021,
    "Honda",
    1040500,
    2,
    false,
  );

  Car fastestCar = car1.maxSpeed > car2.maxSpeed ? car1 : car2;

  Truck heaviestTruck = truck1.loadCapacity > truck2.loadCapacity
      ? truck1
      : truck2;

  Motorcycle cheapestMoto = moto1.price < moto2.price ? moto1 : moto2;

  print("\n Fastest Car :");
  fastestCar.printInfo();

  print("\n Heaviest Truck :");
  heaviestTruck.printInfo();

  print("\n Cheapest Motorcycle:");
  cheapestMoto.printInfo();
}

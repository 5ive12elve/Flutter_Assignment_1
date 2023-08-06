import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  /**
   * This program calculates the area of a circle and
   * also calculates the surface area and volume of a sphere based on its radius.
   */
  print('');
  print('*********** Welcome to the Shape Calculator ***********');
  print('');
  print('Enter the radius value:');
  double radius = double.parse(stdin.readLineSync()!);

  Circle circle = Circle(radius: radius);
  print('-------------------');
  print(circle.shape);
  print('');
  print(circle.areaExplanation);
  print('');
  print('Area of the circle: ${circle.calculateAreaOfCircle()}');
  print('');
  print('-------------------');
  Sphere sphere = Sphere(radius: radius);
  print('-------------------');
  print(sphere.shape);
  print('');
  print(sphere.areaAndVolumeExplanation);
  print('');
  print('Surface area of the sphere: ${sphere.calculateSurfaceAreaOfSphere()}');
  print('');
  print('Volume of the sphere: ${sphere.calculateVolumeOfSphere()}');
  print('');
  print('-------------------');
}

class Shape {
  late String shape;
  double? radius;
  Shape({required double? radius}) {
    this.radius = radius;
  }
}

abstract class TwoDimensionalShape extends Shape {
  TwoDimensionalShape({required double? radius}) : super(radius: radius) {
    this.radius = radius;
  }
  var areaExplanation = 'Calculating the area of the 2D shape...';
  calculateAreaOfCircle() {
    return pi * pow(radius!, 2);
  }
}

abstract class ThreeDimensionalShape extends Shape {
  ThreeDimensionalShape({required double? radius}) : super(radius: radius) {
    this.radius = radius;
  }
  var areaAndVolumeExplanation = 'Calculating the surface area and volume of the 3D shape...';
  calculateSurfaceAreaOfSphere() {}

  calculateVolumeOfSphere() {}
}

class Circle implements TwoDimensionalShape {
  @override
  double? radius;
  Circle({required double? radius}) {
    this.radius = radius;
  }

  @override
  String shape = 'Calculating the area of the circle...';

  @override
  var areaExplanation = 'Calculating the area of the 2D shape...';

  @override
  calculateAreaOfCircle() {
    return pi * pow(radius!, 2);
  }
}

class Sphere implements ThreeDimensionalShape {
  @override
  double? radius;
  Sphere({required double? radius}) {
    this.radius = radius;
  }

  @override
  String shape = 'Calculating the surface area and volume of the sphere...';

  @override
  String areaAndVolumeExplanation = 'Calculating the surface area and volume of the 3D shape...';

  @override
  calculateSurfaceAreaOfSphere() {
    return 4 * pi * pow(radius!, 2);
  }

  @override
  calculateVolumeOfSphere() {
    return (4 / 3) * pi * pow(radius!, 3);
  }
}

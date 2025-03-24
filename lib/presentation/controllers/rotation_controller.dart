import 'package:flutter_block_builder/domain/entities/rotation.dart';
import 'package:flutter_block_builder/domain/usecases/get_rotation.dart';
import 'package:get/get.dart';

class RotationController extends GetxController {
  final GetRotation getRotation;

  RotationController({required this.getRotation});

  var rotation = Rotation(x: 0, y: 0, z: 0).obs;

  void updateRotation(double x, double y, double z) {
    rotation.value = getRotation.execute(x, y, z);
  }
}

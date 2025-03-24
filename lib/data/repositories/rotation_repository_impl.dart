import 'package:flutter_block_builder/domain/entities/rotation.dart';
import 'package:flutter_block_builder/domain/usecases/get_rotation.dart';

class RotationRepositoryImpl {
  final GetRotation getRotation;

  RotationRepositoryImpl({required this.getRotation});

  Rotation getRotationValues(double x, double y, double z) {
    return getRotation.execute(x, y, z);
  }
}

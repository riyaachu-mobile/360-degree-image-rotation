import 'package:flutter_block_builder/domain/entities/rotation.dart';

class GetRotation {
  Rotation execute(double x, double y, double z) {
    return Rotation(x: x, y: y, z: z);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_block_builder/domain/usecases/get_rotation.dart';
import 'package:flutter_block_builder/presentation/controllers/rotation_controller.dart';
import 'package:get/get.dart';

// ignore: use_key_in_widget_constructors
class RotationPage extends StatelessWidget {
  final RotationController controller = Get.put(
    RotationController(getRotation: GetRotation()),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('360° Rotation')),
      body: GestureDetector(
        onPanUpdate: (details) {
          double dx = details.delta.dx / 100;
          double dy = details.delta.dy / 100;
          controller.updateRotation(dx, dy, 0);
        },
        child: Center(
          child: Obx(() {
            final rotation = controller.rotation.value;
            return Transform(
              transform:
                  Matrix4.identity()
                    ..rotateX(rotation.x)
                    ..rotateY(rotation.y)
                    ..rotateZ(rotation.z),
              alignment: Alignment.center,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    "Rotate Me",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

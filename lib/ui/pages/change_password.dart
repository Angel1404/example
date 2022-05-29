import 'package:example/routes/app_pages.dart';
import 'package:example/ui/global_widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.grey,
          ),
        ),
        title: const Text(
          'Change Password',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      width: Get.width,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/señoraCarrito.png', height: 260),
            const InputGenery(
              margenVertical: 0,
              icon: Icons.lock_rounded,
              label: 'Old Password',
            ),
            const InputGenery(
              margenVertical: 20,
              icon: Icons.lock_rounded,
              label: 'New Password',
            ),
            const InputGenery(
              margenVertical: 0,
              icon: Icons.lock_rounded,
              label: 'Confirm Password',
            ),
            Botton(
              onPressed: () {
                Get.toNamed(Routes.HOME);
              },
              titulo: 'Save Now',
              marginVertical: 20,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:example/routes/app_pages.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

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
          'Forgot Password',
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
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height,
      width: size.width,
      child: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/señoraCarrito.png', height: 260),
            const Text(
              'Well will send a mail to\nthe email address you registered\nto regain your password',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            const InputGenery(),
            const Text(
              'Email sent to test****@gmail.com',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            Botton(onPressed: () {
              Get.toNamed(Routes.CHANGEPASSWORD);
            })
          ],
        ),
      ),
    );
  }
}

class Botton extends StatelessWidget {
  const Botton({
    Key? key,
    this.colorBotton,
    this.onPressed,
    this.titulo = 'Send Now',
    this.marginVertical = 30,
  }) : super(key: key);
  final String titulo;
  final Function()? onPressed;
  final Color? colorBotton;
  final double marginVertical;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: marginVertical),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: colorBotton ?? Colors.green[900],
            minimumSize: const Size(double.infinity, 45),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            titulo,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          )),
    );
  }
}

class InputGenery extends StatelessWidget {
  const InputGenery({
    Key? key,
    this.icon = Icons.email,
    this.label = 'Register Email Address',
    this.margenVertical = 30,
  }) : super(key: key);
  final IconData icon;
  final String label;
  final double margenVertical;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 70,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: margenVertical),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: TextFormField(
        cursorColor: Colors.green,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: PrefixInput(icon: icon),
          label: Text(
            label,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}

class PrefixInput extends StatelessWidget {
  const PrefixInput({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      margin: const EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 15,
            color: Color.fromRGBO(0, 0, 0, .15),
          )
        ],
      ),
      child: Icon(
        icon,
        color: Colors.green[900],
      ),
    );
  }
}

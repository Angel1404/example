import 'package:example/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:example/data/models/routes_models.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const SizedBox(),
        title: const Text(
          'Home',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          InkWell(onTap: () {}, child: const Icon(Icons.search, color: Colors.grey, size: 25)),
          InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Icon(Icons.shopping_cart_rounded, color: Colors.grey, size: 25),
            ),
          ),
        ],
      ),
      body: const _Body(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green[800],
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.local_offer,
                color: Colors.grey,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.window_outlined,
                color: Colors.grey,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.grey,
              ),
              label: ''),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      width: Get.width,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            TituloBodyHome(),
            CarruselBodyCategory(),
            BodyProducts(),
          ],
        ),
      ),
    );
  }
}

class BodyProducts extends StatelessWidget {
  const BodyProducts({
    Key? key,
    this.axis = Axis.vertical,
    this.crossAxisCount = 2,
    this.physics,
    this.crossAxisSpacing = 12.0,
    this.mainAxisSpacing = 15.0,
  }) : super(key: key);
  final Axis axis;
  final int crossAxisCount;
  final ScrollPhysics? physics;
  final double crossAxisSpacing;
  final double mainAxisSpacing;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.count(
        shrinkWrap: true,
        scrollDirection: axis,
        physics: physics ?? const NeverScrollableScrollPhysics(),
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 0.0,
        mainAxisSpacing: 15.0,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        addAutomaticKeepAlives: false,
        addRepaintBoundaries: false,
        addSemanticIndexes: false,
        childAspectRatio: 0.7,
        children: List.generate(listBody.length, (i) {
          final data = listBody[i];
          return DetailBodyProducts(data: data);
        }),
      ),
    );
  }
}

class DetailBodyProducts extends StatelessWidget {
  const DetailBodyProducts({
    Key? key,
    required this.data,
    this.isDetalle = false,
  }) : super(key: key);

  final BodyProductsModel data;
  final bool isDetalle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 200,
        width: 170,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: (!isDetalle) ? 0 : 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 1),
              blurRadius: 10,
              color: Color.fromRGBO(0, 0, 0, .25),
            ),
          ],
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Image.asset('assets/${data.img}', height: 100),
                Container(height: 1, width: double.infinity, color: Colors.grey[300]),
                Text(
                  data.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[800],
                  ),
                ),
                if (isDetalle)
                  SizedBox(
                    width: double.infinity,
                    height: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.star, color: Colors.yellow, size: 15),
                        const Icon(Icons.star, color: Colors.yellow, size: 15),
                        const Icon(Icons.star, color: Colors.yellow, size: 15),
                        const Icon(Icons.star, color: Colors.yellow, size: 15),
                        const Icon(Icons.star, color: Colors.yellow, size: 15),
                        const SizedBox(width: 5),
                        Text(
                          data.ranking,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    data.description,
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ),
                Text(
                  'Price: ' r'$' '${data.price}',
                  style: const TextStyle(color: Colors.red, fontSize: 13),
                ),
                SizedBox(
                  height: 30,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor: Colors.green[200],
                          child: const Icon(Icons.remove, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          data.amount.toString(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(),
              ],
            ),
            SizedBox(
              height: 20,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(top: 5, left: 5),
                      child: Icon(Icons.favorite, color: Colors.red),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.star, size: 15, color: Colors.yellow),
                        Text(
                          data.ranking,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CarruselBodyCategory extends StatelessWidget {
  const CarruselBodyCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * .18,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 10),
        itemCount: listAllCategory.length,
        itemBuilder: (_, i) {
          final data = listAllCategory[i];
          return InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(bottom: 25, right: 10),
              height: 100,
              width: 110,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/${data.img}', height: 60),
                  const SizedBox(height: 5.0),
                  SizedBox(
                    height: 30,
                    width: double.infinity,
                    child: Text(
                      data.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class TituloBodyHome extends StatelessWidget {
  const TituloBodyHome(
      {Key? key, this.onTap, this.title1 = 'All Category', this.title2 = 'View All'})
      : super(key: key);
  final String title1;
  final String title2;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 20, top: 10),
      height: 40,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title1,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            onTap: onTap ??
                () {
                  Get.toNamed(Routes.VIEWALLCATEGORYS);
                },
            child: Text(
              title2,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

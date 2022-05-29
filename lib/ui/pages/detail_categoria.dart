import 'package:example/data/models/routes_models.dart';
import 'package:example/ui/routes_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailCategoria extends StatelessWidget {
  const DetailCategoria({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.grey,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Category',
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
          children: [
            TituloBodyHome(title1: 'Hot Deal: ', title2: 'Limited Offer', onTap: () {}),
            Container(
              color: const Color(0xffF2F2F2),
              height: Get.height * .23,
              width: double.infinity,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 10),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: listBody.length,
                itemBuilder: (_, i) {
                  final data = listBody[i];
                  return Detail(data: data);
                },
              ),
            ),
            TituloBodyHome(title1: 'Premium Member Deal', title2: 'View All', onTap: () {}),
            Container(
                height: Get.height * .4,
                color: const Color(0xffF2F2F2),
                width: double.infinity,
                child: ListView(
                  padding: const EdgeInsets.only(left: 10),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(listBody.length, (i) {
                    final data = listBody[i];
                    return DetailBodyProducts(data: data, isDetalle: true);
                  }),
                )),
            TituloBodyHome(title1: 'Vagetable', title2: 'View All', onTap: () {}),
            const BodyProducts(),
          ],
        ),
      ),
    );
  }
}

class Detail extends StatelessWidget {
  const Detail({Key? key, required this.data}) : super(key: key);
  final BodyProductsModel data;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 200,
        width: 180,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                const SizedBox(height: 15),
                Image.asset('assets/${data.img}', height: 100),
                Container(height: 1, width: double.infinity, color: Colors.grey[300]),
                Text(
                  data.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 25,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Price: ' r'$' '${data.price}',
                        style: const TextStyle(color: Colors.red, fontSize: 13),
                      ),
                      const SizedBox(width: 5),
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.green[200],
                          child: const Icon(Icons.remove, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
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
                const SizedBox(height: 5),
              ],
            ),
            SizedBox(
              height: 20,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Colors.orange[700],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          data.ranking + '% Off',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ],
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
                        Text(
                          data.ranking + 'pcs',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
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

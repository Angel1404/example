import 'package:example/data/models/routes_models.dart';
import 'package:example/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewAllCategorys extends StatelessWidget {
  const ViewAllCategorys({Key? key}) : super(key: key);

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
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: const _CarruselBodyCategory(),
      ),
    );
  }
}

class _CarruselBodyCategory extends StatelessWidget {
  const _CarruselBodyCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 12.0,
      mainAxisSpacing: 15.0,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      addAutomaticKeepAlives: false,
      addRepaintBoundaries: false,
      addSemanticIndexes: false,
      childAspectRatio: 0.9,
      children: List.generate(listAllCategory.length, (i) {
        final data = listAllCategory[i];
        return InkWell(
          onTap: () {
            Get.toNamed(Routes.DETAILALLCATEGORYS);
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: 20, right: 10),
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
                CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey[300],
                    child: Image.asset('assets/${data.img}', height: 85)),
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
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

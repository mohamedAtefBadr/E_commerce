// ignore_for_file: sort_child_properties_last

import 'package:e_commerce/widgets/constant_colors.dart';
import 'package:e_commerce/widgets/item.dart';
import 'package:e_commerce/widgets/row_content.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  item product;
  Details({required this.product});
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  // Details({super.key});
  bool isShowMore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbargreen,
        title: const Text("Details Screen"),
        actions: const [
          Content(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Image.asset(widget.product.imgpath),
            const SizedBox(
              height: 10,
            ),
            Text(
              "\$ ${widget.product.price}",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  child: const Text(
                    "New",
                    style: TextStyle(fontSize: 15),
                  ),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 129, 129),
                      borderRadius: BorderRadius.circular(4)),
                ),
                const SizedBox(
                  width: 8,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.star,
                      size: 25,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 25,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 25,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 25,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 25,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children:  [
                      const Icon(
                        Icons.edit_location,
                        size: 25,
                        color: Color.fromARGB(168, 3, 65, 27),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        widget.product.location,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
                width: double.infinity,
                child: Text(
                  "Details",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.start,
                )),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
                child: Text(
              "A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Angiospermae). Flowers produce gametophytes, which in flowering plants consist of a few haploid cells which produce gametes. The male gametophyte, which produces non-motile sperm, is enclosed within pollen grains; the female gametophyte is contained within the",
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.start,
              maxLines: isShowMore ? 6 : null,
              overflow: TextOverflow.ellipsis,
            )),
            TextButton(
              onPressed: () {
                setState(() {
                  isShowMore = !isShowMore;
                });
              },
              child: Text(
                isShowMore ? "show less" : "show more",
                style: const TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}

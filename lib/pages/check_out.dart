import 'package:e_commerce/provider/cart.dart';
import 'package:e_commerce/widgets/row_content.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/constant_colors.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbargreen,
        title: const Text("Check Out"),
        actions: const [
          Content(),
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 600,
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: classInstancee.selectitems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        subtitle: Text(
                            "${classInstancee.selectitems[index].price} - ${classInstancee.selectitems[index].location}"),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                              classInstancee.selectitems[index].imgpath),
                        ),
                        title:
                            Text("${classInstancee.selectitems[index].name}"),
                        trailing: IconButton(
                            onPressed: () {
                              classInstancee.delete(classInstancee.selectitems[index]);
                            }, icon: const Icon(Icons.remove)),
                      ),
                    );
                  }),
            ),
          ),
          ElevatedButton(
                onPressed: (){},
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(btngreen),
                  padding: const MaterialStatePropertyAll(EdgeInsets.all(12)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius:BorderRadius.circular(10),),),
                ),
                child:
                    Text("pay ${classInstancee.coast}",
                    style: const TextStyle(fontSize: 20),
                  ),  
              ),
        ],
      ),
    );
  }
}

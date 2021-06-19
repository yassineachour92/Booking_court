import 'package:booking/componenets/CardIcon.dart';
import 'package:booking/componenets/CardItem.dart';
import 'package:booking/componenets/Models/Product.dart';
import 'package:booking/componenets/ShowIteam.dart';
import 'package:flutter/material.dart';

class ShowIteam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return

//       mainAxisAlignment:MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Card(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(10.0),
//           ),
//           color: Colors.white,
//           child: Padding(
//             padding: EdgeInsets.all(10.0),
//             child: Container(
//               alignment: Alignment.center,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   Flexible(
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(10.0),
//                       child: FadeInImage.assetNetwork(
//                         placeholder: "image",
//                         image: product.image,
//                         width: 100,
//                         height: 100,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.all(10.0),
//                     child: Text(
//                       product.title,
//                       maxLines: 1,
//                       softWrap: true,
//                       textAlign: TextAlign.center,
//                       style:TextStyle(fontSize: 20.0,
//                       fontWeight: FontWeight.w500,
//                       )
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

        // var size = MediaQuery.of(context).size;

        new Container(
      decoration: new BoxDecoration(color: Colors.white),
      child: GridView.count(
        // itemCount: products.length,
        // scrollDirection: Axis.vertical,
        // gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,

        children: products
            .map<Widget>(
              (product) => (Container(
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 50,
                  child: SizedBox(
                    height: 1000,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.network(
                          product.image,
                          height: 150.0,
                          width: 150.0,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(child: Text(product.title)),
                        Container(child: Text(product.title)),
                      ],
                    ),
                  ),
                ),
              )),
            )
            .toList(),

        // children: List.generate(6, (index){

        // return Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Container(
        //     margin: EdgeInsets.only(bottom: 50.0),
        //     decoration: BoxDecoration(
        //         color: Colors.white,
        //         borderRadius: BorderRadius.circular(15),
        //         boxShadow: [
        //           BoxShadow(
        //               color: Colors.grey.withOpacity(.5),
        //               offset: Offset(3, 2),
        //               blurRadius: 7)
        //         ]),
        //     child: Column(children: [
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: ClipRRect(
        //             borderRadius: BorderRadius.only(
        //               topLeft: Radius.circular(15),
        //               topRight: Radius.circular(15),
        //             ),
        //             child: Image.network(
        //               products[index].image,
        //               width: double.infinity,
        //             )),
        //       ),
        //       Text("\$${products[index].price}"),

        //       Text("\$${products[index].price}"),

        //       SizedBox(
        //         height: 5,
        //       ),
        //       // Row(
        //       //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       //   children: [

        //       //        Text("\$${products[index].price}"),
        //       //         // text: "\$${products[index].price}",
        //       //         // size: 22,
        //       //         // weight: FontWeight.bold,

        //       //     SizedBox(
        //       //       width: 30,
        //       //     ),
        //       //     IconButton(
        //       //         icon: Icon(Icons.add_shopping_cart),
        //       //         onPressed: () {
        //       //           // cartController.addProductToCart(product);
        //       //         })
        //       //   ],
        //       // ),

        //       // Container(
        //       //   padding: EdgeInsets.all(8.0),
        //       //   width: 200,
        //       //   decoration: BoxDecoration(
        //       //     // color: Colors.white,
        //       //     borderRadius: BorderRadius.only(),
        //       //   ),
        //       //   child: Padding(
        //       //     padding: const EdgeInsets.only(top: 40.0),
        //       //     child: Column(
        //       //       crossAxisAlignment: CrossAxisAlignment.stretch, // add this
        //       //       children: <Widget>[
        //       //         Container(
        //       //           height: 140,
        //       //           decoration: BoxDecoration(
        //       //             boxShadow: [
        //       //               new BoxShadow(
        //       //                 color: Colors.grey,
        //       //                 blurRadius: 2.0,
        //       //               ),
        //       //             ],
        //       //             image: DecorationImage(
        //       //                 image: NetworkImage(products[index].image),
        //       //                 fit: BoxFit.fill),
        //       //             // ),
        //       //           ),
        //       //         ),
        //       //       ],
        //       //     ),
        //       //   ),
        //       // );
        //     ]),
        //   ),
        // );
      ),
    );
  }
}

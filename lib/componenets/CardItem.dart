import 'package:flutter/material.dart';

Widget CardItem(String imgUrl, String Name, String description, String Location,
     int rating) {
  var x;
  (description != "" ? (x = 200.0) : (x = 64.0));
  print(x);
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        margin: EdgeInsets.only(right: 10.0),
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          
        ),
        elevation: 0.0,
        child: InkWell(
        
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(imgUrl),
                fit: BoxFit.cover,
                scale: 2.0,
              )),
              width: x,
              child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Row(
                      //   children: [
                      //     for (var i = 0; i < rating; i++)
                      //       Icon(
                      //         Icons.star,
                      //         color: Color(0xFFFE8C68),
                      //       ),
                      //   ],
                      // ),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Name,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            description,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          (description != ""
                              ? Row(
                                  children: [
                                    Icon(
                                      Icons.room,
                                      color: Color(0xFF26beb5),
                                    ),
                                    Text(
                                      Location,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                )
                              : Text("")),
                        ],
                      ))
                    ],
                  )),
            )),
      
      ),
    ),
  );
}

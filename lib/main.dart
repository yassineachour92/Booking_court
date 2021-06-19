import 'package:booking/componenets/CardIcon.dart';
import 'package:booking/componenets/CardItem.dart';
import 'package:booking/componenets/Models/Product.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BookingApp(),
  ));
}

class BookingApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _BookingAppState createState() => _BookingAppState();
}

class _BookingAppState extends State<BookingApp> {
  List<String> urls = [
    "https://png.pngtree.com/png-vector/20190521/ourlarge/pngtree-hotel-icon-for-personal-and-commercial-use-png-image_1044892.jpg",
    "https://image.flaticon.com/icons/png/512/2379/2379628.png",
    "https://cdn.icon-icons.com/icons2/1261/PNG/512/1496676733-rounded-high-ultra-colour09-soccer-pitch_84623.png",
    "https://www.parisinfo.com/var/otcp/sites/images/media/1.-photos/03.-hebergement-630-x-405/hotel-enseigne-neon-630x405-c-thinkstock/31513-1-fre-FR/Hotel-enseigne-neon-630x405-C-Thinkstock.jpg",
    "https://www.hatkosport.com/wp-content/uploads/2020/06/norvec-cageball-field.jpg",
    // "https://tunisientreprendre.co/wp-content/uploads/2019/04/level-1.png",
    "https://q-xx.bstatic.com/xdata/images/hotel/max500/216968639.jpg?k=a65c7ca7141416ffec244cbc1175bf3bae188d1b4919d5fb294fab5ec8ee2fd2&o=",
    "https://hubinstitute.com/sites/default/files/styles/1200x500_crop/public/2018-06/photo-1439130490301-25e322d88054.jpeg?h=f720410d&itok=HI5-oD_g",
    "https://cdn.contexttravel.com/image/upload/c_fill,q_60,w_2600/v1549318570/production/city/hero_image_2_1549318566.jpg",
    "https://www.shieldsgazette.com/images-i.jpimedia.uk/imagefetch/https://jpgreatcontent.co.uk/wp-content/uploads/2020/04/spain.jpg",
    "https://www.telegraph.co.uk/content/dam/Travel/2017/November/tunisia-sidi-bou-GettyImages-575664325.jpg",
    "https://lp-cms-production.imgix.net/features/2018/06/byrsa-hill-carthage-tunis-tunisia-2d96efe7b9bf.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    var y = MediaQuery.of(context).size.height;
    print(products[1]);
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFF6F7FF),
        title: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: ListView(padding: const EdgeInsets.all(8),

            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Pick what you like',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Material(
                elevation: 10.0,
                borderRadius: BorderRadius.circular(30.0),
                shadowColor: Color(0x55434343),
                child: TextField(
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    hintText: "Search for Terrain,Salle...",
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black54,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              DefaultTabController(
                length: 3,
                child: Expanded(
                  child: Column(
                    children: [
                      TabBar(
                        indicatorColor: Color(0xFFE8C68),
                        unselectedLabelColor: Color(0xFF555555),
                        labelColor: Color(0xFF26beb5),
                        labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                        tabs: [
                          Tab(
                            text: "Trending",
                          ),
                          Tab(
                            text: "Promotions",
                          ),
                          Tab(
                            text: "Favorites",
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom:
                                  BorderSide(width: 1.0, color: Colors.grey),
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                "Location",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 26.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 140.0,
                        // width: 640.0,
                        child: TabBarView(
                          children: [
                            Container(
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  CardIcon(urls[0], context, "Hotel", "", ""),
                                  SizedBox(width: 5.0),
                                  CardIcon(urls[1], context, "Tennis", "", ""),
                                  SizedBox(width: 5.0),
                                  CardIcon(
                                      urls[2], context, "FootBall", "", ""),
                                  SizedBox(width: 5.0),
                                  CardIcon(urls[1], context, "Tennis", "", ""),
                                  SizedBox(width: 5.0),
                                  CardIcon(
                                      urls[2], context, "FootBall", "", ""),
                                ],
                              ),
                            ),
                            Container(
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  //    CardItem(urls[6], "Visit Rome", "Italy", 4),
                                  // CardItem(urls[8], "Visit Sidi bou Said",
                                  //     "Tunsia", 4),
                                ],
                              ),
                            ),
                            Container(
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom:
                                  BorderSide(width: 1.0, color: Colors.grey),
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                "Sports",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 26.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 135.0,
                        child: TabBarView(
                          children: [
                            Container(
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  CardIcon(urls[0], context, "Hotel", "", ""),
                                  SizedBox(width: 5.0),
                                  CardIcon(urls[1], context, "Tennis", "", ""),
                                  SizedBox(width: 5.0),
                                  CardIcon(
                                      urls[2], context, "FootBall", "", ""),
                                  SizedBox(width: 5.0),
                                  CardIcon(urls[1], context, "Tennis", "", ""),
                                  SizedBox(width: 5.0),
                                  CardIcon(
                                      urls[2], context, "FootBall", "", ""),
                                  // CardItem(
                                  //     urls[1], "","", "Terrain", 3),
                                ],
                              ),
                            ),
                            Container(
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  // CardItem(urls[0], "", "", "Hotel", 3),
                                ],
                              ),
                            ),
                            Container(
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 50.0),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom:
                                  BorderSide(width: 1.0, color: Colors.grey),
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                "Sports",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 26.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 300.0,
                        child: TabBarView(
                          children: [
                            Container(
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  CardIcon(urls[3], context, "Hotel",
                                      "Caroline", "Caroline"),
                                  CardIcon(urls[1], context, "Hotel",
                                      "Caroline", "Caroline"),
                                ],
                              ),
                            ),
                            Container(
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  //    CardItem(urls[6], "Visit Rome", "Italy", 4),
                                  // CardItem(urls[8], "Visit Sidi bou Said",
                                  //     "Tunsia", 4),
                                ],
                              ),
                            ),
                            Container(
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}

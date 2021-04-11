import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class VishramSpot extends StatefulWidget {
  static String id = 'vishram_spot';

  @override
  _VishramSpotState createState() => _VishramSpotState();
}

class _VishramSpotState extends State<VishramSpot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.blue,
                      ),
                      Text(
                        " Back",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(250)),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x54000000),
                              spreadRadius: 4,
                              blurRadius: 20,
                            ),
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'images/s1map.jpg',
                          width: 350.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Vishram Spot 1',
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                //   child: Text(
                //     'Owner Details',
                //     style: TextStyle(fontSize: 20.0),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse a magna nulla. Fusce eleifend, felis id rutrum convallis, nunc diam aliquam risus, vitae pretium purus neque nec lorem. Integer luctus ligula enim, convallis accumsan metus venenatis at. Praesent porta neque et mauris blandit, sit amet ultricies urna feugiat.',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Center(
                  child: Text(
                    'services available',
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.local_dining,
                      color: Colors.blue,
                    ),
                    Icon(
                      Icons.wc,
                      color: Colors.blue,
                    ),
                    Icon(
                      Icons.local_parking,
                      color: Colors.blue,
                    ),
                    Icon(
                      Icons.local_grocery_store,
                      color: Colors.blue,
                    ),
                    Icon(
                      Icons.local_gas_station,
                      color: Colors.blue,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

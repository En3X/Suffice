import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:suffice/services/professionals.dart';

class ProfessionalsCard extends StatefulWidget {
  const ProfessionalsCard({Key? key, required this.professionals})
      : super(key: key);
  final Professionals professionals;

  @override
  _ProfessionalsCardState createState() => _ProfessionalsCardState();
}

class _ProfessionalsCardState extends State<ProfessionalsCard> {
  @override
  Widget build(BuildContext context) {
    Professionals professionals = widget.professionals;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image(
              image: AssetImage('images/portrait.jpg'),
              width: 100,
              height: 160,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 1),
                        child: Text(
                          professionals.name,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      // Container(
                      //   padding: EdgeInsets.all(5),
                      //   child: Text(
                      //     professionals.profession,
                      //     style: TextStyle(
                      //         color: Color.fromRGBO(244, 244, 248, 1)),
                      //   ),
                      //   decoration: BoxDecoration(
                      //       color: Color.fromRGBO(82, 67, 194, 1),
                      //       borderRadius: BorderRadius.circular(6)),
                      // ),
                    ],
                  ),
                  // Container(
                  //   child: Row(
                  //     children: [
                  //       Container(
                  //         child: Icon(Icons.account_box_outlined),
                  //         margin: EdgeInsets.only(right: 4),
                  //       ),
                  //       Text(professionals.numOfCustomers.toString()),
                  //       Container(
                  //         margin: EdgeInsets.only(left: 14),
                  //         child: getProfessionalsAvailability(professionals),
                  //       )
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //   margin: EdgeInsets.symmetric(vertical: 4),
                  //   child: RatingBarIndicator(
                  //     itemBuilder: (context, index) => Icon(Icons.star,
                  //         color: Color.fromRGBO(82, 67, 194, 1)),
                  //     rating: professionals.rating,
                  //     itemSize: 23,
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            professionals.profession,
                            style: TextStyle(
                                color: Color.fromRGBO(244, 244, 248, 1)),
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(82, 67, 194, 1),
                              borderRadius: BorderRadius.circular(6)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            child: Row(
                              children: [
                                Icon(Icons.star_rate),
                                Text(
                                  "${professionals.rating}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.call),
                      label: Text("Call now", style: TextStyle(fontSize: 14)),
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(82, 67, 194, 1)),
                          foregroundColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(244, 244, 248, 1)))),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

getProfessionalsAvailability(Professionals p) {
  if (p.availability.toLowerCase() == "busy")
    return new Text("Busy", style: TextStyle(color: Colors.red[400]));
  return new Text("Available", style: TextStyle(color: Colors.green[400]));
}

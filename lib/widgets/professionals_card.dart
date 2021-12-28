import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:suffice/pages/profile.dart';
import 'package:suffice/services/professionals.dart';
import 'package:suffice/services/user_service.dart';

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
              image: AssetImage('images/defaultUserIcon.png'),
              width: 100,
              height: 160,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        professionals.profession,
                        style:
                            TextStyle(color: Color.fromRGBO(244, 244, 248, 1)),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(82, 67, 194, 1),
                          borderRadius: BorderRadius.circular(6)),
                    ),
                  ),
                  Container(
                    child: RatingBarIndicator(
                      rating: professionals.rating,
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Color(0xffF71662),
                      ),
                      itemCount: 5,
                      itemSize: 35.0,
                      direction: Axis.horizontal,
                    ),
                  )
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

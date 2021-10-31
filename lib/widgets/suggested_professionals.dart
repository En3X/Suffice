import 'package:flutter/material.dart';
import 'package:suffice/services/professionals.dart';
import 'package:suffice/widgets/professionals_card.dart';

class SuggestedProfessionals extends StatefulWidget {
  const SuggestedProfessionals({Key? key}) : super(key: key);

  @override
  _SuggestedProfessionalsState createState() => _SuggestedProfessionalsState();
}

class _SuggestedProfessionalsState extends State<SuggestedProfessionals> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text("Suggested Professionals",
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                ),
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: ProfessionalsCard(
                              professionals: new Professionals("Maneesh Pandey",
                                  "Technician", 4.3, 71, "", "Busy")),
                        ),
                        Container(
                          child: ProfessionalsCard(
                              professionals: new Professionals(
                                  "Sahil Prajapati",
                                  "Plumber",
                                  3.9,
                                  100,
                                  "",
                                  "Available")),
                        ),
                        Container(
                          child: ProfessionalsCard(
                              professionals: new Professionals(
                                  "Rijan Rajopadhyay",
                                  "Electrician",
                                  4.1,
                                  90,
                                  "",
                                  "Available")),
                        ),
                        Container(
                          child: ProfessionalsCard(
                              professionals: new Professionals(
                                  "Ayush Manandhar",
                                  "Maid",
                                  4.5,
                                  123,
                                  "",
                                  "Busy")),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}

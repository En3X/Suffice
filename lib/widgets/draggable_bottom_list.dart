import 'package:flutter/material.dart';
import 'package:suffice/services/demo_professional.dart';
import 'package:suffice/widgets/professionals_card.dart';

class DraggableBottomList extends StatefulWidget {
  const DraggableBottomList({Key? key}) : super(key: key);

  @override
  _DraggableBottomListState createState() => _DraggableBottomListState();
}

class _DraggableBottomListState extends State<DraggableBottomList> {
  @override
  Widget build(BuildContext context) {
    List pro = get_pro();
    return DraggableScrollableSheet(
        initialChildSize: 0.1,
        minChildSize: 0.1,
        maxChildSize: 0.5,
        snap: true,
        expand: true,
        builder: (context, controller) => Scaffold(
              body: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 3),
                child: Container(
                  color: Colors.white,
                  child: ListView.builder(
                    controller: controller,
                    itemCount: pro.length,
                    itemBuilder: (BuildContext context, int index) {
                      if (index == 0) {
                        return new Column(
                          children: [
                            ListTile(
                              trailing: Icon(Icons.expand_less_sharp),
                              title: Text(
                                "Famous Professionals",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              subtitle: Text(
                                  "Some of our highly rated professionals"),
                            ),
                            Container(
                                child: ProfessionalsCard(
                              professionals: pro[index],
                            ))
                          ],
                        );
                      }
                      return Container(
                          child: ProfessionalsCard(
                        professionals: pro[index],
                      ));
                    },
                  ),
                ),
              ),
            ));
  }
}

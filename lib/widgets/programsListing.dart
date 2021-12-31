import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_app_sample/others/constants.dart';
import 'package:study_app_sample/widgets/dottedLine.dart';

class ProgramListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 50),
      itemBuilder: (_, index) {
        final pro = programsList[index];
        return SizedBox(
          height: 160,
          child: Card(
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          pro.date,
                          style: const TextStyle(
                              fontFamily: 'Nunito_sans', fontSize: 15),
                        ),
                        Text(
                          pro.time,
                          style: const TextStyle(
                              fontFamily: 'Poppins', fontSize: 11),
                        ),
                        Text(pro.location)
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: CustomPaint(
                  painter: LineDashedPainter(),
                )),
                Expanded(
                  flex: 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        pro.description,
                        style: TextStyle(color: Colors.red[300], fontSize: 10),
                      ),
                      Text(pro.title,
                          style: const TextStyle(
                              fontFamily: 'Nunito_sans', fontSize: 15)),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(pro.imageUrl),
                        ),
                        title: Text(pro.tutor,
                            style: const TextStyle(
                                fontFamily: 'Nunito_sans', fontSize: 12)),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'Enroll Now',
                              style: TextStyle(fontSize: 13),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red[300],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: programsList.length,
    );
  }
}

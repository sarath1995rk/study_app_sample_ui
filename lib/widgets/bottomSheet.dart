import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_app_sample/others/constants.dart';
import 'package:study_app_sample/widgets/customSearchField.dart';

class FilteringBottomSheet {
  void modalBottomSheetMenu(BuildContext context) {
    String selected = 'Location';
    var list = locationList;

    List<bool> _isChecked = List<bool>.filled(4, false);
    Size size = MediaQuery.of(context).size;
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return StatefulBuilder(
              builder: (BuildContext c, StateSetter setState) {
            return Container(
              height: 400.0,
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sort and Filters',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.close,
                            color: Colors.grey,
                          ),
                          onPressed: () => Navigator.of(ctx).pop(),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                    height: 0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: size.width * .35,
                                decoration:
                                    BoxDecoration(color: Colors.grey[300]),
                                child: Text('Sort by',
                                    style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700))),
                            SizedBox(
                              width: size.width * .35,
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: 3,
                                  itemBuilder: (_, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          selected = sortList[index];
                                          switch (selected) {
                                            case 'Location':
                                              list = locationList;
                                              break;
                                            case 'Training Name':
                                              list = trainingNameList;
                                              break;
                                            case 'Trainer':
                                              list = trainerList;
                                              break;
                                          }
                                          _isChecked =
                                              List<bool>.filled(4, false);
                                        });
                                      },
                                      child: Container(
                                          alignment: Alignment.center,
                                          height: 50,
                                          width: size.width * .3,
                                          decoration: BoxDecoration(
                                              color: selected == sortList[index]
                                                  ? Colors.white
                                                  : Colors.grey[300]),
                                          child: Text(sortList[index],
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: selected ==
                                                          sortList[index]
                                                      ? FontWeight.w700
                                                      : FontWeight.w200))),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomSearchField(),
                                SizedBox(
                                  width: size.width * .55,
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: 4,
                                      itemBuilder: (_, index) {
                                        return Container(
                                            alignment: Alignment.center,
                                            height: 50,
                                            width: size.width * .3,
                                            child: Row(
                                              children: [
                                                Checkbox(
                                                    hoverColor: Colors.red[300],
                                                    value: _isChecked[index],
                                                    onChanged: (val) {
                                                      setState(() {
                                                        _isChecked[index] =
                                                            val!;
                                                      });
                                                    }),
                                                Text(list[index])
                                              ],
                                            ));
                                      }),
                                ),
                              ],
                            ),
                          ))
                    ],
                  )
                ],
              ),
            );
          });
        });
  }
}

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:telfili/utils/hex_color.dart';
import 'package:intl/intl.dart';
import 'package:telfili/utils/methods.dart';
import 'package:telfili/views/select_tasks.dart';

class MakeAppointment extends StatefulWidget {

  const MakeAppointment({Key key}) : super(key: key);

  @override
  State<MakeAppointment> createState() => _MakeAppointmentState();

}

class _MakeAppointmentState extends State<MakeAppointment> {

  var fromController = TextEditingController(text: "02:27 PM");
  var toController = TextEditingController(text: "05:00 PM");

  String startDay = "8";
  String startMonth = "May 2023";

  String endDay = "22";
  String endMonth = "August 2023";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F0F0F0"),
      appBar: AppBar(
        backgroundColor: HexColor("#F0F0F0"),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Image.asset("assets/images/back button.png"),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(32)),
                    color: HexColor("#707070"),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "1",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'futura-regular',
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(width: 5,),
                Image.asset("assets/images/ellipsis.png"),
                Container(width: 5,),
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(32)),
                    color: HexColor("#E0E0E0"),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "2",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: HexColor("#707070"),
                      fontFamily: 'futura-regular',
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(width: 5,),
                Image.asset("assets/images/ellipsis.png"),
                Container(width: 5,),
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(32)),
                    color: HexColor("#E0E0E0"),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "3",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: HexColor("#707070"),
                      fontFamily: 'futura-regular',
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(width: 5,),
                Image.asset("assets/images/ellipsis.png"),
                Container(width: 5,),
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(32)),
                    color: HexColor("#E0E0E0"),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "4",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: HexColor("#707070"),
                      fontFamily: 'futura-regular',
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(width: 5,),
              ],
            ),
            Container(height: 8,),
            Text("Choose date and time", style: TextStyle(
              fontSize: 16,
              fontFamily: 'futura-medium',
              color: HexColor("#707070"),
            ),),
            Container(height: 8,),
            Card(
              color: Colors.white,
              elevation: 5,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Container(
                margin: const EdgeInsets.all(10),
                child: SfDateRangePicker(
                  rangeSelectionColor: HexColor("#FFD9F0"),
                  onSelectionChanged: _onSelectionChanged,
                  selectionMode: DateRangePickerSelectionMode.range,
                  initialSelectedRange: PickerDateRange(
                      DateTime.now().subtract(const Duration(days: 4)),
                      DateTime.now().add(const Duration(days: 3))),
                ),
              ),
            ),
            Container(height: 8,),
            Card(
              color: Colors.white,
              elevation: 5,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("From", style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'futura-regular',
                          fontSize: 12,
                        ),),
                        Container(height: 3,),
                        RichText(
                          text: TextSpan(
                            text: startDay,
                            style: TextStyle(
                              color: HexColor("#1784F1"),
                              fontSize: 18,
                              fontFamily: 'futura-medium',
                            ),
                            children: [
                              TextSpan(
                                text: startMonth,
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                  fontFamily: 'futura-regular',
                                ),
                              )
                            ]
                          )
                        ),
                        Container(height: 3,),
                        Container(
                          alignment: Alignment.center,
                          width: 65,
                          height: 25,
                          child: TextFormField(
                            scrollPadding: const EdgeInsets.all(0),
                            controller: fromController,
                            readOnly: true,
                            style: const TextStyle(
                              color: Colors.black,
                              fontFamily: 'futura-regular',
                              fontSize: 9,
                            ),
                            onTap: () async {
                              final TimeOfDay time = await showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay.now());
                              final formatter = DateFormat('hh:mm a');
                              String formattedTime = formatter.format(DateTime(2023, 1, 1, time.hour, time.minute));
                              setState(() {
                                fromController.text = formattedTime;
                              });
                            },
                            keyboardType: TextInputType. number,
                            textAlign: TextAlign.center,
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                                counterText: "",
                                hintText: "Time",
                                hintStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'futura-regular',
                                  fontSize: 9,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("To", style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'futura-regular',
                          fontSize: 12,
                        ),),
                        Container(height: 3,),
                        RichText(
                            text: TextSpan(
                                text: endDay,
                                style: TextStyle(
                                  color: HexColor("#1784F1"),
                                  fontSize: 18,
                                  fontFamily: 'futura-medium',
                                ),
                                children: [
                                  TextSpan(
                                    text: endMonth,
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                      fontFamily: 'futura-regular',
                                    ),
                                  )
                                ]
                            )
                        ),
                        Container(height: 3,),
                        Container(
                          alignment: Alignment.center,
                          width: 65,
                          height: 25,
                          child: TextFormField(
                            scrollPadding: const EdgeInsets.all(0),
                            controller: toController,
                            readOnly: true,
                            style: const TextStyle(
                              color: Colors.black,
                              fontFamily: 'futura-regular',
                              fontSize: 9,
                            ),
                            onTap: () async {
                              final TimeOfDay time = await showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay.now());
                              final formatter = DateFormat('hh:mm a');
                              String formattedTime = formatter.format(DateTime(2023, 1, 1, time.hour, time.minute));
                              setState(() {
                                toController.text = formattedTime;
                              });
                            },
                            keyboardType: TextInputType. number,
                            textAlign: TextAlign.center,
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                                counterText: "",
                                hintText: "Time",
                                hintStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'futura-regular',
                                  fontSize: 9,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                )
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: HexColor("#F0F0F0"),
        height: 90,
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              width: 300,
              height: 50,
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, slideLeft(const SelectTask()));
                },
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                color: HexColor("#FF66C4"),
                child: Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Mark step as completed",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontFamily: 'futura-medium'
                          ),
                        ),
                      ],
                    )

                ),
              ),
            ),
            Container(height: 15,),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel", style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'futura-regular',
                  fontSize: 16
              ),),
            )
          ],
        ),
      ),
    );
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    if (args.value is PickerDateRange) {

      var startDate = args.value.startDate;
      var endDate = args.value.endDate;

      final formatter = DateFormat('MMMM yyyy');

      if (startDate != null) {
        final formatted = formatter.format(startDate);
        startDay = startDate.day.toString();
        startMonth = formatted;
      }

      if (endDate != null) {
        final _formatted = formatter.format(endDate);
        endDay = endDate.day.toString();
        endMonth = _formatted;
      }
    }
    setState(() {

    });
  }

}

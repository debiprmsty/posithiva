import 'package:flutter/material.dart';
import 'package:posithiva/component/myappBar.dart';
import 'package:posithiva/theme.dart';
import 'package:table_calendar/table_calendar.dart';

class KalenderBerobat extends StatefulWidget {
  const KalenderBerobat({super.key});

  @override
  State<KalenderBerobat> createState() => _KalenderBerobatState();
}

class _KalenderBerobatState extends State<KalenderBerobat> {
  DateTime today = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
      _focusedDay = focusedDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return GestureDetector(
              onTap: () {
                Scaffold.of(context)
                    .openDrawer(); // Membuka Drawer saat leading gambar diklik
              },
              child: Image.asset(
                "assets/images/drawer.png",
                width: 30,
                height: 30,
                scale: 1.5,
              ),
            );
          },
        ),
        title: Column(
          children: [
            Text(
              "Lokasi Terkini",
              style: poppins.copyWith(color: Colors.grey, fontSize: 12),
            ),
            Text(
              "Singaraja",
              style: poppins.copyWith(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: Builder(builder: (context) {
              return GestureDetector(
                  onTap: () {
                    Scaffold.of(context)
                        .openEndDrawer(); // Membuka Drawer saat leading gambar diklik
                  },
                  child: Image.asset("assets/images/avatar.png",
                      width: 30, height: 30));
            }),
          ),
        ],
        centerTitle: true,
      ),
      drawer: AppDrawer(),
      endDrawer : EndDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: 15),
            color: Colors.white,
            width: 360,
            height: height * 1.05,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, 
                  child: Row(
                    children: [
                      Image.asset("assets/images/back.png",width: 15,height: 15,),
                      const SizedBox(
                        width: 6,
                      ),
                      Text("Kembali",style: poppins.copyWith(color: Colors.white),)
                    ],
                  ),
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(birutua)),)
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Kalender Berobat",
                  style: loraItalic.copyWith(fontSize: 35, color: birutua),
                ),
                SizedBox(
                  width: width,
                  height: 300,
                  child: TableCalendar(
                    headerStyle: const HeaderStyle(
                        formatButtonVisible: false, titleCentered: true),
                    rowHeight: 43,
                    availableGestures: AvailableGestures.all,
                    selectedDayPredicate: (day) => isSameDay(day, today),
                    focusedDay: today,
                    firstDay: DateTime.utc(1972, 10, 16),
                    lastDay: DateTime.utc(2050, 3, 8),
                    onDaySelected: _onDaySelected,
                    calendarStyle: CalendarStyle(
                        selectedDecoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.pink[200]),
                        selectedTextStyle: TextStyle(color: Colors.pink),
                        holidayTextStyle: TextStyle(color: Colors.red),
                        todayDecoration: BoxDecoration(
                            color: Colors.blue[500], shape: BoxShape.circle)),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          margin: const EdgeInsets.only(right: 4),
                          decoration: BoxDecoration(
                              color: Colors.blue[200],
                              borderRadius: BorderRadius.circular(20 / 2)),
                        ),
                        Text(
                          "Tanggal Ambil Terakhir",
                          style: lato.copyWith(fontSize: 14),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          margin: const EdgeInsets.only(right: 4),
                          decoration: BoxDecoration(
                              color: Colors.pink[200],
                              borderRadius: BorderRadius.circular(20 / 2)),
                        ),
                        Text(
                          "Tanggal Habis Obat",
                          style: lato.copyWith(fontSize: 14),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 50, left: 5),
                      width: 170,
                      height: 100,
                      decoration: BoxDecoration(
                          color: birutua, borderRadius: BorderRadius.circular(8)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 50, right: 5),
                      width: 170,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(8)),
                    ),
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

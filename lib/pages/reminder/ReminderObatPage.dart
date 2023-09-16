import 'package:flutter/material.dart';
import 'package:posithiva/component/myappBar.dart';
import 'package:posithiva/pages/reminder/NotifReminderPage.dart';
import 'package:posithiva/theme.dart';
import 'package:table_calendar/table_calendar.dart';

class ReminderObatPage extends StatefulWidget {
  const ReminderObatPage({super.key});

  @override
  State<ReminderObatPage> createState() => _ReminderObatPageState();
}

class _ReminderObatPageState extends State<ReminderObatPage> {
  DateTime _selectedDay = DateTime.now(); // Memberi nilai awal ke _selectedDay
    DateTime _focusedDay = DateTime.now(); // T
    void _onDaySelected(DateTime day, DateTime focusedDay) {
      setState(() {
        _selectedDay = day;
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
                Scaffold.of(context).openDrawer(); // Membuka Drawer saat leading gambar diklik
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
            Text("Lokasi Terkini",style: poppins.copyWith(color: Colors.grey,fontSize: 12),),
            Text("Singaraja",style: poppins.copyWith(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)
          ],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: Builder(
              builder: (context) {
                return GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openEndDrawer(); // Membuka Drawer saat leading gambar diklik
                  },
                  child: Image.asset("assets/images/avatar.png", width: 30, height: 30));
              }
            ),
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
                Text("Ingatkan Saya Ambil Obat", style: loraItalic.copyWith(color: Colors.black, fontSize: 25),),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: birutua,
                        borderRadius: BorderRadius.circular(35/2)
                      ),
                      child: Text("i", style: loraItalic.copyWith(fontSize: 20, color: Colors.white),),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text("Sesuaikan Tanggal Ambil Obat", style: lato.copyWith(fontSize: 18, color: Colors.black),)
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: width,
                  alignment: Alignment.center,
                  child: TableCalendar(
                    firstDay: DateTime.utc(1999, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: _selectedDay,
                    headerStyle: HeaderStyle(
                      formatButtonVisible: false,
                      titleCentered: true
                    ),
                    rowHeight: 43,
                    selectedDayPredicate: (day) => isSameDay(day, _selectedDay),
                    onDaySelected: _onDaySelected,
                    availableGestures: AvailableGestures.all,
                    calendarStyle: CalendarStyle(
                      selectedTextStyle: TextStyle(color: Colors.pink),
                      todayDecoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue[200]
                      ),
                      selectedDecoration: BoxDecoration(
                        color: Colors.pink[200], // Ganti warna sesuai kebutuhan Anda
                        shape: BoxShape.circle,
                        
                      ),
                      
                    ),
                    // Menampilkan hanya format bulanan
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            margin: const EdgeInsets.only(right: 2),
                            decoration: BoxDecoration(
                              color: Colors.blue[200],
                              borderRadius: BorderRadius.circular(20/2)
                            ),
                          ),
                          Text(": Tanggal Ambil Terakhir",style: lato.copyWith(fontSize: 12,fontWeight: FontWeight.w600),)
                        ],
                      ),
                       Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            margin: const EdgeInsets.only(right: 2),
                            decoration: BoxDecoration(
                              color: Colors.pink[200],
                              borderRadius: BorderRadius.circular(20/2)
                            ),
                          ),
                          Text(": Tanggal Habis Obat",style: lato.copyWith(fontSize: 12,fontWeight: FontWeight.w600),)
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 180),
                  width: width,
                  height: 60,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.orange[700]),
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const NotifReminderPage();
                      }));
                    },
                    child: Text('Ingatkan Saya!', style: loraItalic.copyWith(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25),)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
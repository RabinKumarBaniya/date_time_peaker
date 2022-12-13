import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

      
        primarySwatch: Colors.grey,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:  AppBar(
        title: Text('Date_Time_Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: () async {
                DateTime? datePicked =  await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2020),
                    lastDate:DateTime(2023),
                );
                if(datePicked!= null) {
                  print('Date selected : ${datePicked.day}-${datePicked.month}-${datePicked.year}');

                }

            }, child:Text('Show Date'),),

            ElevatedButton(
              onPressed: () async {
              TimeOfDay? pickedTime =  await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),);
                  initialEntryMode: TimePickerEntryMode.input ;

              if(pickedTime!= null) {
                print('Time selected : ${pickedTime.hour}:${pickedTime.minute}');

              }

            }, child:Text('Show Time'),),

          ],
        ),
      ),
    );
  }
}

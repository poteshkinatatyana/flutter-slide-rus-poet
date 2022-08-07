import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey),
      ),
      darkTheme: ThemeData.dark(),
      title: 'Hello',
      home: GetStarted(),
    );
  }
}

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          children: [
            GetSlide(
                image: "assets/images/one.jpg",
                firstText: 'Марина Цветаева',
                secondText: 'Повесть о Сонечке',
                year: '1937'),
            GetSlide(
                image: "assets/images/two.jpg",
                firstText: 'Лев Толстой',
                secondText: 'Анна Каренина',
                year: '1937'),
            GetSlide(
                image: "assets/images/three.jpg",
                firstText: 'Анна Ахматова',
                secondText: 'Реквием',
                year: '1937'),
            GetSlide(
                image: "assets/images/four.jpg",
                firstText: 'Федор Достоевский',
                secondText: 'Преступление и наказание',
                year: '1966'),
          ],
        ),
      ),
    );
  }
}

Widget GetSlide({image, firstText, secondText, year}) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
    ),
    child: Container(
      child: Container(
        alignment: Alignment.bottomLeft,
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
            0.3,
            0.9
          ], colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.2),
          ]),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 35.0, bottom: 35.0, right: 35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                firstText,
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    secondText,
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                  Text(
                    year,
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 29,
                        color: Color.fromARGB(255, 224, 15, 0),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

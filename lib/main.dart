import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(
            Icons.arrow_back,
            size: 30,
          ),
          actions: [
            Icon(
              Icons.search,
              size: 30,
            ),
            SizedBox(
              width: 25,
            ),
            Icon(
              Icons.more_vert,
              size: 30,
            ),
            SizedBox(
              width: 15,
            )
          ],
          title: Text(
            "Pay",
            style: (TextStyle(fontWeight: FontWeight.bold)),
          ),
        ),
        body: HomePage(),
      ),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Choice> choices = const <Choice>[
    const Choice(title: 'ELECTRICITY', icon: Icons.electric_bolt),
    const Choice(title: 'WATER', icon: Icons.water_drop),
    const Choice(title: 'MOBILE', icon: Icons.phone_android),
    const Choice(title: 'LANDLINE', icon: Icons.phone),
    const Choice(title: 'CABLE TV', icon: Icons.tv),
    const Choice(title: 'INTERNET', icon: Icons.network_cell),
  ];
  List<Choice> choices1 = const <Choice>[
    const Choice(title: 'MOVIE', icon: Icons.theaters_outlined),
    const Choice(title: 'EVENT', icon: Icons.event_note_outlined),
    const Choice(title: 'SPORT', icon: Icons.sports_football_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text("Pay Your Bills",
                style:
                    TextStyle(fontSize: 30, fontFamily: 'Righteous-Regular')),
          ),
        ),
        GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 10,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          shrinkWrap: true,
          children: List.generate(choices.length, (index) {
            return Center(
              child: Selectcard(
                choice: choices[index],
              ),
            );
          }),
        ),
        Center(
          child: Column(
            children: [
              Container(
                child: Text("Purchase Tickets",
                    style:
                        TextStyle(fontFamily: 'Dancing_Script', fontSize: 30)),
                padding: EdgeInsets.only(top: 30),
              ),
            ],
          ),
        ),
        GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 10,
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          children: List.generate(choices1.length, (index) {
            return Center(
              child: Selectcard1(
                choice1: choices1[index],
              ),
            );
          }),
        ),
      ],
    );
  }
}

class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

class Selectcard extends StatelessWidget {
  const Selectcard({required this.choice});
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle();
    return Card(
      color: Color(0xffe0e0e0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    child: Icon(
                      choice.icon,
                      size: 36,
                      color: Color(0xff283593),
                    ),
                    padding: EdgeInsets.only(top: 25),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 25),
              child: Text(
                choice.title,
                style: textStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Selectcard1 extends StatelessWidget {
  const Selectcard1({required this.choice1});
  final Choice choice1;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle();
    return Card(
      color: Color(0xffe0e0e0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    child: Icon(
                      choice1.icon,
                      size: 36,
                      color: Color(0xff283593),
                    ),
                    padding: EdgeInsets.only(top: 25),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 25),
              child: Text(
                choice1.title,
                style: textStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isPersonaActive = false;
  bool isTimerActive = false;
  bool isTel1Active = false;
  bool isTel2Active = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mc Flutter'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [ 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.account_circle,
                      size: 40.0,
                    )
                  ]
                ),
                Column(
                  children: [
                    Text(
                      "Flutter McFlutter",
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                      "Experienced App Developer",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ]
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("123 Main Street"),
              Text("(415) 555-0198"),
                ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                          SnackBar(
                            content: Text("Únete a un club con otras personas"),
                          )
                        );
                        isPersonaActive =! isPersonaActive;
                        setState(() {});
                      }, 
                      icon: Icon(
                        Icons.accessibility,
                        color: isPersonaActive ? Colors.indigo : Colors.black,
                        )
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                          SnackBar(
                            content: Text("Cuenta regresivapara el evento: 31 días"),
                          )
                        );
                        isTimerActive =! isTimerActive;
                        setState(() {});
                      }, 
                      icon: Icon(
                        Icons.timer,
                        color: isTimerActive ? Colors.indigo : Colors.black,
                        )
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                          SnackBar(
                            content: Text("Llama al número 4155550198"),
                          )
                        );
                        isTel1Active =! isTel1Active;
                        setState(() {});
                      }, 
                      icon: Icon(
                        Icons.phone_android,
                        color: isTel1Active ? Colors.indigo : Colors.black,
                        )
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                          SnackBar(
                            content: Text("Llama al celular 3317865113"),
                          )
                        );
                        isTel2Active =! isTel2Active;
                        setState(() {});
                      }, 
                      icon: Icon(
                        Icons.phone_iphone,
                        color: isTel2Active ? Colors.indigo : Colors.black,
                        )
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void changeColor() {

}
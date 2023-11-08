import 'package:flutter/material.dart';
import 'package:untitled/Components%20(desktop)/EventCard.dart';
import 'package:untitled/Components/EventCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List eventList = [
    ["Fashion District - 3.5", 'A shopping mall'],
    ["The Foundry - 4.1", 'A concert venue'],
    ["Franklin Park - 4.6", 'A public park'],
    ["MoMA - 4.6", 'A museum for modern art'],
    ["Dos Hermanos - 4.9", 'A food truck'],
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      eventList[index][1] = !eventList[index][1];
      print(eventList[index][1]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth < 672) {
        return SingleChildScrollView(
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, top: 48.0, right: 20.0, bottom: 20.0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Center(
                      child: Text(
                        'Trips',
                        style: TextStyle(
                          fontFamily: 'Ranille',
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        'Sadly, you have no plans...',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 24.0),
                    padding: const EdgeInsets.only(
                        left: 36.0, top: 12.0, right: 36.0, bottom: 12.0),
                    decoration: BoxDecoration(
                      color: Color(0xffD6A1FF),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'Build an itinerary',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    color: Color(0xFFFFFDF7),
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: eventList.length,
                      itemBuilder: (context, index) {
                        return EventCard(
                          eventName: eventList[index][0],
                          eventDesc: eventList[index][1],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      } else {
        return ListView(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                left: 20.0, top: 48.0, right: 20.0, bottom: 20.0),
            child: Column(
              children: <Widget>[
                Container(
                  color: Color(0xFFFFFDF7),
                  child: Center(
                    child: Text(
                      'Trips',
                      style: TextStyle(
                        fontFamily: 'Ranille',
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  color: Color(0xFFFFFDF7),
                  child: Center(
                    child: Text(
                      'Sadly, you have no plans...',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 24.0),
                  padding: const EdgeInsets.only(
                      left: 36.0, top: 12.0, right: 36.0, bottom: 12.0),
                  decoration: BoxDecoration(
                    color: Color(0xffD6A1FF),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Build an itinerary',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 24.0),
                  padding: const EdgeInsets.only(
                      left: 36.0, top: 12.0, right: 36.0, bottom: 12.0),
                  child: const Text(
                    'Highly rated',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  color: Color(0xFFFFFDF7),
                  height: 200,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return EventCardD(
                        eventName: eventList[index][0],
                        eventDesc: eventList[index][1],
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 24.0),
                  padding: const EdgeInsets.only(
                      left: 36.0, top: 12.0, right: 36.0, bottom: 12.0),
                  child: const Text(
                    'Popular',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  color: Color(0xFFFFFDF7),
                  height: 200,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return EventCardD(
                        eventName: eventList[index][0],
                        eventDesc: eventList[index][1],
                      );
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 24.0),
                  padding: const EdgeInsets.only(
                      left: 36.0, top: 12.0, right: 36.0, bottom: 12.0),
                  child: const Text(
                    'Underrated',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  color: Color(0xFFFFFDF7),
                  height: 200,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return EventCardD(
                        eventName: eventList[index][0],
                        eventDesc: eventList[index][1],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ]);
      }
    });
  }
}

import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final String eventName;
  final String eventDesc;

  EventCard({
    super.key,
    required this.eventName,
    required this.eventDesc,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff6DA8FF),
          borderRadius: BorderRadius.circular(4),
        ),
        child: IntrinsicHeight(
          child: Row(
            children: [
              Container(
                height: double.infinity,
                width: 80,
                color: Colors.grey[600],
                child: Text(''),
              ),
              Container(
                  padding:
                      EdgeInsets.only(left: 16, top: 20, right: 16, bottom: 20),
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(eventName,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400)),
                      Text(
                        eventDesc,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

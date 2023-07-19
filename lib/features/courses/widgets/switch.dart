import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchEx extends StatefulWidget {
  const SwitchEx({Key? key}) : super(key: key);

  @override
  State<SwitchEx> createState() => _SwitchExState();
}

class _SwitchExState extends State<SwitchEx> {
  bool light1 = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              light1 = !light1;
            });
          },
          child: Stack(
            alignment: light1 ? Alignment.centerLeft : Alignment.centerRight,
            children: [
              Container(
                width: 30,
                height: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: light1 ? Colors.grey : Colors.green,
                ),
              ),
              light1
                  ? const Padding(
                      padding: EdgeInsets.only(left: 1.0),
                      child: Icon(
                        Icons.circle,
                        color: Colors.black,
                        size: 13,
                      ),
                    )
                  : const Padding(
                      padding: EdgeInsets.only(right: 1.0),
                      child: Icon(
                        Icons.circle,
                        color: Colors.black,
                        size: 13,
                      ),
                    ),
            ],
          ),
        ),
      ],
    );
  }
}

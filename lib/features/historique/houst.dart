import 'package:flutter/material.dart';

class Historique extends StatefulWidget {
  @override
  State<Historique> createState() => _HistoriqueState();
}

class _HistoriqueState extends State<Historique> {
  bool tap = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(1.27, 1.54),
            end: Alignment(0, 0),
            colors: [
              Colors.green.shade200,
              Color.fromARGB(255, 51, 51, 51),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          tap = true;
                        });
                      },
                      child: Text("En cours"),
                    ),
                    color: tap ? Colors.deepOrangeAccent : Colors.grey[400],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          tap = false;
                        });
                      },
                      child: Text("Passées"),
                    ),
                    color: !tap ? Colors.deepOrangeAccent : Colors.grey[400],
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

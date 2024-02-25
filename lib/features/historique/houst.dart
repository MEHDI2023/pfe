import 'package:flutter/material.dart';
import 'encour.dart';
import 'passee.dart';

class Historique extends StatefulWidget {
  Historique({Key? key}) : super(key: key);

  @override
  _HistoriqueState createState() => _HistoriqueState();
}

class _HistoriqueState extends State<Historique> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: 2,
          child: Container(
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
            child: Column(
              children: [
                TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors. deepPurple,


                  enableFeedback: true,
                  tabs: [

                    Tab(text: 'Now'),
                    Tab(text: 'Past'),
                  ],
                  controller: _tabController,
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      CommandeEncour(),
                      CartencourScreen(),
                    ],
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

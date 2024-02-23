import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newburger/features/historique/passee.dart';

import '../../shared/CUBIT/cubitHistoriq.dart';
import '../../shared/CUBIT/historiqueState.dart';
import 'encour.dart';

class Historique extends StatelessWidget {
  Historique({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoriqueCubit, AppState>(
      builder: (context, state) {
        var cubit = HistoriqueCubit.get(context);

        // Function to determine button background color
        Color buttonBackgroundColor(int index) {
          return cubit.Cindex == index ? Colors.orangeAccent : Colors.grey.shade500;
        }

        // Function to determine text color based on button background color
        Color textColor(int index) {
          return cubit.Cindex == index ? Colors.white : Colors.black;
        }

        return Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: const Alignment(1.27, 1.54),
                end: const Alignment(0, 0),
                colors: [
                  Colors.green.shade200,
                  const Color.fromARGB(255, 51, 51, 51)
                ],
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            color: buttonBackgroundColor(0),
                            child: TextButton(
                              onPressed: () {
                                cubit.ChangeIndex(0);
                              },
                              child: Text(
                                "Ongoing",
                                style: TextStyle(color: textColor(0)),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: buttonBackgroundColor(1),
                            child: TextButton(
                              onPressed: () {
                                cubit.ChangeIndex(1);
                              },
                              child: Text(
                                "Past",
                                style: TextStyle(color: textColor(1)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(child: cubit.screens[cubit.Cindex]),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

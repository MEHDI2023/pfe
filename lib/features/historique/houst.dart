import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newburger/features/historique/passee.dart';

import '../../shared/CUBIT/cubitHistoriq.dart';
import '../../shared/CUBIT/historiqueState.dart';
import 'encour.dart';

class Historique extends StatelessWidget {
  bool tap = true;


  Widget build(BuildContext context) {
  return BlocBuilder<historiqueCubit, AppState>(
  builder: (context, state) {
  var cubit = historiqueCubit.get(context);

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
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          child: TextButton(
                            onPressed: () {
                              historiqueCubit.get(context).ChangeIndex(0);
                            },
                            child: Text("En cours"),
                          ),
                          color: cubit.Cindex==0 ? Colors.deepOrangeAccent : Colors.grey[400],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextButton(
                            onPressed: () {
                              historiqueCubit.get(context).ChangeIndex(1);
                            },
                            child: Text("Passées"),
                          ),
                          color: cubit.Cindex==1? Colors.deepOrangeAccent : Colors.grey[400],
                        ),
                      ),
                    ],
                  ),

                  Expanded(child: cubit.screens[cubit.Cindex]
                  )
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
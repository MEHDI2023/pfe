import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../shared/CUBIT/cubit.dart';
import '../shared/CUBIT/state.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:iconly/iconly.dart';


class HomeLayout extends StatelessWidget {

  var scaffoldkey = GlobalKey<ScaffoldState>();
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext context, AppStates state) {
          if (state is AppInsertDBState) {
            Navigator.pop(context);
          }
        },
        builder: (BuildContext context, AppStates state) {
          AppCubit cubit = AppCubit.get(context);

          return Scaffold(
            key: scaffoldkey,

            body: cubit.screen[cubit.Cindex],
            bottomNavigationBar: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(47, 84, 59, 100),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    CustomButtonBottomNavigationBar(
                      iconlyLight: IconlyLight.home,
                      isActive:  cubit.Cindex==0,
                      onPressed: () {
                        cubit.ChangeIndex(0);


                      },
                    ),
                    const Spacer(),
                    CustomButtonBottomNavigationBar(
                      iconlyLight: IconlyLight.notification,
                      isActive: cubit.Cindex==1,
                      onPressed: () {
                        cubit.ChangeIndex(1);


                      },
                    ),
                    const Spacer(),
                    CustomButtonBottomNavigationBar(
                      iconlyLight: IconlyLight.profile,
                      isActive:  cubit.Cindex==2,
                      onPressed: () {
                        cubit.ChangeIndex(2);

                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  //}
}

class CustomButtonBottomNavigationBar extends StatelessWidget {
  final IconData iconlyLight;
  final bool isActive;
  final VoidCallback onPressed;
  const CustomButtonBottomNavigationBar({
    super.key, required this.iconlyLight, required this.isActive, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return isActive ? GlassmorphicContainer(
        borderGradient: LinearGradient(colors: [
          Colors.white.withOpacity(0.2),
          Colors.white.withOpacity(0.2)
        ]),
        blur: 100,
        border: 0,
        linearGradient: LinearGradient(colors: [
          Colors.white.withOpacity(0.3),
          Colors.white.withOpacity(0.3)
        ]),
        height: 50,
        width: MediaQuery.sizeOf(context).width * 0.2,
        borderRadius: 20,
        child: Center(
          child: IconButton(

              onPressed: onPressed,
              icon:  Icon(iconlyLight, color: Colors.white, size: 30)),
        ))
        :IconButton(

        onPressed: onPressed,
        icon:  Icon(iconlyLight, color: Colors.white, size: 30));
  }
}

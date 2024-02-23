import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 10.0,
  required VoidCallback function,
  required String text,
}) =>
    Container(
      height: 40.0,
      width: width,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function? onSubmit,
  Function? onChange,
  Function? onTap,
  required Function validate,
  required String label,
  required IconData prefix,
  IconData? sufix,
  bool isPassword = false,
  VoidCallback? sufixPressed,
  bool isClikable =true,
}) =>
    TextFormField(
      obscureText: isPassword,
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: (value) {
        if (onSubmit != null) {
          onSubmit();
        }
      },
      enabled:isClikable ,
      onChanged: (value) {
        if (onChange != null) {
          onChange();
        }
      },
      validator: (value) {
        return validate(value);
      },
      onTap: onTap as void Function()? ?? null,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(prefix),
        border: OutlineInputBorder(),
        suffixIcon: sufix != null ? IconButton(onPressed:sufixPressed,

        icon:Icon(sufix)) : null,
      ),
    );

Widget  defaultitemtasks (Map model )=>  Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(

    children: [
      CircleAvatar(
        radius: 40.0,
        child: Text(
          "${ model['time']}",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),

        ),
      ),
      SizedBox(
        width: 20.0,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("${ model['title']}",

            style: TextStyle(
                fontWeight: FontWeight.bold
            ),),
          SizedBox(
            height: 7.0,
          ),
          Text( "${ model['date']}",

            style: TextStyle(
              color: Colors.grey,
            ),
          ),

        ],
      )
    ],

  ),
);
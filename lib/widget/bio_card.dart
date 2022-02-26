import 'package:flutter/material.dart';
class BioCared extends StatelessWidget {
  const BioCared({
    Key? key,
     required this.leading,
    required this.title,
    required this.subtitle,
    required this.traling,
     this.bottom = 30,
    required this.function,

  }) : super(key: key);

  final  IconData leading;
  final String title;
  final String subtitle;
  final IconData traling;
  final double bottom;
  final void Function() function;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 30,right: 30,bottom: bottom),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(leading),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: IconButton(onPressed: function,icon: Icon(traling)),

      ),
    );
  }
}

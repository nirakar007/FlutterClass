// common widget to reuse the code
// ? = null aware


import 'package:flutter/cupertino.dart';


class HeaderText extends StatelessWidget {
  String ? value;  // "?" - awaring that the value can be null or not null
  String ? label;
  HeaderText({super.key, this.value, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      ///
      /// if(label == null){
      /// Text("label")
      /// }else{
      /// Text("n/a")
      /// }
      children: [
        Text(label ?? "n/a"), Text("Posts"), // ?? = shortcut for ternery if else
      ],
    );
  }
}

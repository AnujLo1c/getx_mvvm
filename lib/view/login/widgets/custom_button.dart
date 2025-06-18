import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Theme/r.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style:
      ElevatedButton.styleFrom(minimumSize: Size(315, 60),
          backgroundColor: R.colors.primary),
      onPressed: () {  },
      child: Text("VERIFY",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white),),
    ) ;
  }
}

import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key, this.labelText, this.topText, this.icon,
  });
final String? labelText;
final String? topText;
final Icon? icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left:8.0, bottom: 5),
          child: Row(
            spacing: 5,
            children: [ icon ??
              Icon(Icons.mail_outline, size: 19, color: Colors.white,),
              Text( topText ??"Email Address",style: TextStyle(
                color: Colors.white
              )),
            ],
          ),
        ),
        TextField(
          decoration: InputDecoration(
             errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(
                color: Colors.red,
                width: 2,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(
                color: Colors.purple,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            label: Text(labelText ??"johndoe@gmail.com", style: TextStyle(
              color: Colors.grey
            ),),
            fillColor: const Color.fromARGB(
              255,
              59,
              57,
              57,
            ),
          ),
        ),
      ],
    );
  }
}

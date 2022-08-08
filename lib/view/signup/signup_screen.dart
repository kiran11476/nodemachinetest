import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

import 'package:machinetest/view/signup/sign_up.dart';
import 'package:machinetest/view/signup/widget/background_image.dart';
import 'package:machinetest/view/signup/widget/constriants.dart';

import 'widget/background_image.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(170, 30, 30, 30),
        title: const Text('Delivery'),
      ),
      body: Stack(children: [
        BackgroundImage(
            image: 'lib/asset/photo-1567620905732-2d1ec7ab7445.jpeg'),
        SingleChildScrollView(
          child: Column(
            children: [
              FormFeilds(
                size: 20,
                obscureText: false,
                name: 'Name',
              ),
              FormFeilds(
                keyboardType: TextInputType.phone,
                size: 20,
                obscureText: false,
                name: 'Contact Number',
              ),
              FormFeilds(
                keyboardType: TextInputType.number,
                size: 20,
                obscureText: false,
                name: 'FSSAI Code',
              ),
              FormFeilds(
                size: 20,
                obscureText: false,
                name: 'Adress',
              ),
              const Formfield(),
              kHeigt20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 100,
                    height: 30,
                    child: SignInButton(
                      Buttons.Google,
                      text: " Google",
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 30,
                    child: SignInButton(
                      Buttons.Facebook,
                      text: " Google",
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              kHeigt20,
              SizedBox(
                width: 300.0,
                height: 50.0,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(157, 5, 31, 87)),
                  ),
                  child: const Text('Submit'),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

//Description
class Formfield extends StatelessWidget {
  const Formfield({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 15.0, right: 15, top: 20, bottom: 10),
      child: CupertinoTextField(
          prefix: const Padding(
            padding: EdgeInsets.all(10),
          ),
          placeholder: 'Description',
          placeholderStyle: const TextStyle(
            color: Color.fromARGB(145, 255, 255, 255),
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.4),
            borderRadius: BorderRadius.circular(10),
          ),
          keyboardType: TextInputType.text,
          minLines: 5,
          maxLines: 6),
    );
  }
}

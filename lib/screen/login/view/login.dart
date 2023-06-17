import 'package:cinedot/core/styles/styles.dart';
import 'package:cinedot/screen/login/view/widget/image_view.dart';
import 'package:cinedot/screen/login/view/widget/name_app.dart';

import 'package:flutter/material.dart';

import 'widget/login_widget.dart';

class GetStart extends StatelessWidget {
  const GetStart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppStyle().bgColor),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(gradient: AppStyle().bgColor),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Expanded(
                    child: Positioned(
                      top: -10,
                      left: -20,
                      child: Row(
                        children: [
                          ImageListView(startIndex: 0),
                          ImageListView(startIndex: 1),
                          ImageListView(startIndex: 2),
                          ImageListView(startIndex: 3),
                        ],
                      ),
                    ),
                  ),

                  // Container(
                  //   width: MediaQuery.of(context).size.width,
                  //   height: MediaQuery.of(context).size.height,
                  //   decoration: BoxDecoration(gradient: AppStyle().bgColor),
                  // ),
                  // const FirstPageQuts(),
                  // const GetStartElevetedButton()
                  const TheNameOfApp(),

                  // Column(
                  //   children: [
                  //     TextHomeField(text: 'E-mail address',),

                  //   ],
                  // ),
                ],
              ),
            ),
            Container(
                decoration:const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(1, 42, 82, 1),
                        blurRadius: 5,
                        offset: Offset(2, 4)),
                    BoxShadow(
                        color: Colors.transparent,
                        blurRadius: 15,
                        offset: Offset(2, 4),spreadRadius: 0.2)
                  ],
                  // gradient: LinearGradient(
                  //     colors: [Colors.transparent, Colors.white])),
                ),
                child: Column(
                  children: [
                    Text('Login'),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        fillColor: Color.fromRGBO(42, 64, 90, 1),
                        filled: true,
                        hintText: 'E-mail address',
                      ),
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Color.fromRGBO(42, 64, 90, 1),
                        filled: true,
                        hintText: 'password',suffixIcon:Icon( Icons.visibility)
                      ),
                    ),
                     SizedBox(
                      height: 23,
                    ),
                    Row(children: [IconButton(onPressed: () {
                      
                    }, icon:Icon( Icons.check_box)),Text('Forgot password')],),SizedBox(
                      height: 23,
                    ),ElevatedButton(onPressed: () {
                      
                    }, child: Text('Login in')),  SizedBox(
                      height: 23,
                    ),
                    Text('---------- OR ---------'),SizedBox(
                      height: 23,
                    ),ElevatedButton(onPressed: () {
                      
                    }, child: Text('Login in'))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class TextHomeField extends StatelessWidget {
  TextHomeField({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          fillColor: Color.fromRGBO(42, 64, 90, 1),
          filled: true,
          hintText: text,
        ),
      ),
    );
  }
}

import 'package:dashboard/models/savedVideo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/text_input.dart';

class AddVideoScreen extends StatelessWidget {
  final GlobalKey<FormState> _key = GlobalKey();
  String link,min_type,description,category,date,image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_key.currentState.validate()) {
            showDialog(
              context: context,
              child: Center(
                child: Container(
                  margin: const EdgeInsets.all(25.0),
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  color: Colors.white,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Material(child: Text('Are You sure?')),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                                savedVideo.add(SaveVideo(
                                  link: link,
                                  min_type: min_type,
                                  description: description,
                                  category: category,
                                  date: DateTime.now().toString(),
                                  image: 'assets/images/4.png',
                                )
                                );
                                print(savedVideo);
                              },
                              child: Text(
                                'Ok',
                                style: TextStyle(color: Colors.white),
                              )),
                          const SizedBox(
                            width: 5.0,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'No',
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }
        },
        child: Icon(Icons.add),
      ),
      body: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: _key,
          child: ListView(
            padding: const EdgeInsets.all(15.0),
            children: [
              TextInputFiled(
                lable: 'link',
                onChange: (text) {
                  link = text;
                },
                validate: (text) {
                  if (!text.contains('https://') || text.isEmpty) {
                    return 'this is Not Empty';
                  } else {
                    return null;
                  }
                },
              ),
              TextInputFiled(
                lable: 'min_type',
                onChange: (text) {
                  min_type = text;
                },
                validate: (text) {
                  if (text.isEmpty) {
                    return 'this is Not Empty';
                  } else {
                    return null;
                  }
                },
              ),
              TextInputFiled(
                lable: 'description',
                isMaxLine : true,
                onChange: (text) {
                  description = text;
                },
                validate: (text) {
                  if (text.isEmpty) {
                    return 'this is Not Empty';
                  } else {
                    return null;
                  }
                },
              ),
              TextInputFiled(
                lable: 'category',
                onChange: (text) {
                  category = text;
                },
                validate: (text) {
                  if (text.isEmpty) {
                    return 'this is Not Empty';
                  } else {
                    return null;
                  }
                },
              ),
              InkWell(
                onTap: (){

                },
                child: Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(15.0),
                height: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                image: 1==1?null:DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/4.png'),
                ),
                color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.2),
                  blurRadius: 16
                )
              ]
                ),child: 1==1?null:Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Expanded(child: Icon(Icons.add,size: 50,)),
                const SizedBox(height: 30.0,),
                Expanded(
                  child: Text('Add Photo',style: TextStyle(
                    fontSize: 25.0
                  ),),
                ),
                ],
              ),
              ),
              ),
            ],
          )),
    );
  }
}

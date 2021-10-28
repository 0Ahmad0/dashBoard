import 'package:flutter/material.dart';

import 'models/savedVideo.dart';

class SavedVideoScreen extends StatefulWidget {
  const SavedVideoScreen({Key key}) : super(key: key);

  @override
  _SavedVideoScreenState createState() => _SavedVideoScreenState();
}

class _SavedVideoScreenState extends State<SavedVideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: savedVideo.isEmpty
          ? Center(child: Text('No Items Yet Go To Add New'),)
          : ListView.builder(
        itemCount: savedVideo.length,
        itemBuilder: (context,index){
          return Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.12),
                  blurRadius: 10.0,
                )
              ],
            ),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //ToDO: This Section Need To Package flutter_youtube_vedio wrap down Continer i need Api MazenSh to Do It
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(savedVideo[index].image),
                        ),
                      ),
                    ),
                    Center(child: Text(savedVideo[index].min_type)),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            savedVideo[index].date,
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            ' || ' + savedVideo[index].category,
                            style: TextStyle(color: Colors.grey[300]),
                          ),
                        )
                      ],
                    ),
                    Text(savedVideo[index].description),
                    Text(
                      savedVideo[index].category,
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      )
    );
  }
}

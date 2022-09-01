import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 18,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int position) {
          return Container(
            margin: EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 15, 143, 118),
              borderRadius: BorderRadius.all(
                Radius.circular(6.0),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    ImageView(
                        "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80"),
                    Column(
                      children: [
                        Text("Hello $position"),
                        Text("Hello $position"),
                      ],
                    ),
                  ],
                ),
                Text("Hello $position"),
                Text("Hello $position"),
                Text("Hello $position"),
              ],
            ),
          );
        });
  }

  Padding ImageView(String imageLink) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      // child: Icon(Icons.ac_unit_outlined),
      child: Container(
          width: 44.0,
          height: 44.0,
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              imageLink,
            ),
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rnr/data/models/resposne/post.dart';
import '../../respository/RepoImplm.dart';

const TAG = 'HomeContent';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var repo = RepoImplement();
    // repo.getPost();

    return FutureBuilder(
      future: repo.getImages(),
      builder: (context, snapshot) {
        print("$TAG build $build");
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            final error = snapshot.error;
            return Center(child: Text('${error.toString()}'));
          } else {
            final listA = snapshot.data as List<Post>?;
            if (listA == null) {
              return const Center(
                child: Text('No Data Found'),
              );
            } else
              return ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: listA.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int position) {
                    final model = listA[position];
                    return Card(
                      elevation: 2,
                      child: Container(
                        // margin: EdgeInsets.all(8.0),
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
                                ImageView("${model.url}"),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        "${model.title}",
                                        style: ThemeData().textTheme.headline2,
                                        maxLines: 10,
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  });
          }
          if (snapshot.data.hashCode != 200) {}
        } else {
          return Text('State: ${snapshot.connectionState}');
        }
      },
    );
  }

  Padding ImageView(String imageLink) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      // child: Icon(Icons.ac_unit_outlined),
      child: Container(
          width: 84.0,
          height: 84.0,
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              imageLink,
            ),
          )),
    );
  }
}

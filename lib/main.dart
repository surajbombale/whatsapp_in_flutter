import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Whatsapp());
}

class Whatsapp extends StatelessWidget {
  const Whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              flexibleSpace: FlexibleSpaceBar(
                background: Center(
                  child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 80,
                        ),
                        Icon(
                          Icons.person_2_sharp,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Chats",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Groups",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Status",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Calls",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ]),
                ),
              ),
              backgroundColor: Colors.blue[400],
              title: Text("Whatsapp"),
              expandedHeight: 100,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.camera),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.wifi),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert),
                )
              ],
            ),
            SliverList(delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ListTile(
                  title: Text('Ashish Shinde'),
                  subtitle: Text('Tejas: Hii'),
                  leading: CircleAvatar(
                      backgroundImage: AssetImage("lib/ashish.jpg")),
                  trailing: Text("10:10"),
                  iconColor: Colors.green,
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}

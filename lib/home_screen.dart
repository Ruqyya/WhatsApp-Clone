import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          backgroundColor: Colors.teal,
          centerTitle: false,
          actions:  [
            Icon(Icons.search),
            SizedBox(width: 18,),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert),
                itemBuilder: (context,)=>const  [
                  PopupMenuItem(
                    value: 1,
                    child: Text("New group"),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text("Settings"),
                  ),
                  PopupMenuItem(
                    value: 3,
                    child: Text("Logout"),
                  ),
                ],
            ),
            SizedBox(width: 18,),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                child:Icon(Icons.camera_alt),
              ),
              Tab(
                child:Text("Chats"),
              ),
              Tab(
                child:Text("Status"),
              ),
              Tab(
                child:Text("Calls"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Text("camera"),
            ListView.builder(
              itemCount: 100,
                itemBuilder: (context, index){
                  return const ListTile(
                    leading:CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg&fm=jpg'),
                      ),
                    title: Text("John wick"),
                    subtitle: Text("Where are you?"),
                    trailing: Text("3:51 pm"),
                  );
            }),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index){
                  return  ListTile(
                    leading:Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green,
                          width: 3,
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg&fm=jpg'),
                      ),
                    ),
                    title: Text("John wick"),
                    subtitle: Text("5 minutes ago"),
                    );

                }),

            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index){
                  return  ListTile(
                    leading:CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg&fm=jpg'),
                    ),
                    title: Text("John wick"),
                    subtitle: Text(index/2 ==0 ?"you missed audio call": "call time is 12:25 pm"),
                    trailing: Icon(index/2==0 ? Icons.phone : Icons.video_call),);

                }),

          ],
        ),
      ),);
  }
}

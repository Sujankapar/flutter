import 'package:flutter/material.dart';
import 'FirstScreen.dart';
import 'Second Screen.dart';
import 'SingleChild.dart';
import 'ThirdScreen.dart';

class AfterLogin extends StatefulWidget {
  const AfterLogin({Key? key}) : super(key: key);

  @override
  State<AfterLogin> createState() => _AfterLoginState();
}

class _AfterLoginState extends State<AfterLogin> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child:Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("WhatsApp",style: TextStyle(fontSize: 18,color: Colors.grey)),
        actions: [
          const Icon(Icons.camera_alt,color: Colors.grey,),
          Padding(padding: EdgeInsets.all(10)),
          const Icon(Icons.search,color: Colors.grey),
          PopupMenuButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text('New Group')),
                const PopupMenuItem(child: Text('New Broadcast')),
                const PopupMenuItem(child: Text('Linked Devices')),
                const PopupMenuItem(child: Text('Starred Messages')),
                const PopupMenuItem(child: Text('Settings')),
              ];
            },
            color: Colors.grey,
          ),
        ],
        backgroundColor: Colors.teal,
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Colors.white,
          tabs: [
            Text("Chats",style: TextStyle(color: Colors.grey)),
            Text("Status",style: TextStyle(color: Colors.grey)),
            Text("calls",style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
          body: TabBarView(
            children: [
              FirstScreen(),
              SecondScreen(),
              ThirdScreen()
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            child: Icon(Icons.chat,color: Colors.white),
            backgroundColor: Colors.teal,
          ),
        )
    );
  }
}
class ChatsTab extends StatelessWidget {
  const ChatsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            SingleChatWidget(
                chatTitle: "Arya Stark",
                chatMessage: 'I wish GoT had better ending',
                seenStatusColor: Colors.blue,
                imageUrl:
                'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/09/maisie-williams-aka-arya-stark-of-game-of-thrones-someone-told-me-in-season-three-that-i-was-going-to-kill-the-night-king001.jpg'),
            SingleChatWidget(
                chatTitle: "Robb Stark",
                chatMessage: 'Did you check Maisie\'s latest post?',
                seenStatusColor: Colors.grey,
                imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDXCC-UB67rk0HtbmrDvVsIGvnPfTAMc_tSg&usqp=CAU'),
            SingleChatWidget(
                chatTitle: "Jaqen H'ghar",
                chatMessage: 'Valar Morghulis',
                seenStatusColor: Colors.grey,
                imageUrl:
                'https://static3.srcdn.com/wordpress/wp-content/uploads/2017/06/Jaqen-Hghar-Game-of-Thrones.jpg'),
            SingleChatWidget(
                chatTitle: "Sansa Stark",
                chatMessage: 'The North Remembers',
                seenStatusColor: Colors.blue,
                imageUrl:
                'https://i.insider.com/5ce420e193a15232821d3084?width=700'),
            SingleChatWidget(
                chatTitle: "Jon Snow",
                chatMessage: 'Stick em\' with the pointy end',
                seenStatusColor: Colors.grey,
                imageUrl:
                'https://i.insider.com/5cb3c8e96afbee373d4f2b62?width=700'),
            SingleChatWidget(
                chatTitle: "Arya Stark",
                chatMessage: 'I wish GoT had better ending',
                seenStatusColor: Colors.blue,
                imageUrl:
                'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/09/maisie-williams-aka-arya-stark-of-game-of-thrones-someone-told-me-in-season-three-that-i-was-going-to-kill-the-night-king001.jpg'),
            SingleChatWidget(
                chatTitle: "Robb Stark",
                chatMessage: 'Did you check Maisie\'s latest post?',
                seenStatusColor: Colors.blue,
                imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDXCC-UB67rk0HtbmrDvVsIGvnPfTAMc_tSg&usqp=CAU'),
            SingleChatWidget(
                chatTitle: "Jon Snow",
                chatMessage: 'Stick em\' with the pointy end',
                seenStatusColor: Colors.blue,
                imageUrl:
                'https://i.insider.com/5cb3c8e96afbee373d4f2b62?width=700'),
          ],
        ),
      ),
    );
  }
}


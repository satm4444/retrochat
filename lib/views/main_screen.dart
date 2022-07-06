import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:retrochat/widgets/chat_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //  titleSpacing: 0,
        title: Text(
          "Chats",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          // Icon(
          //   CupertinoIcons.search,
          //   color: Colors.black,
          // ),
          SizedBox(
            width: 10,
          ),
          Center(
            child: Container(
              constraints: BoxConstraints(maxHeight: 30, maxWidth: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                  border: Border.all(width: 2, color: Colors.black)),
              child: CircleAvatar(
                radius: 14,
                backgroundImage: NetworkImage(
                    "https://static1.cbrimages.com/wordpress/wp-content/uploads/2021/10/Best-String-Users.jpg"),
              ),
            ),
          ),
          SizedBox(
            width: 18,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(width: 2, color: Colors.black)),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    CupertinoIcons.search,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Search your freinds",
                    style: GoogleFonts.lato(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ChatBar(
              color: Colors.blue,
              name: "Bibek Rawal",
              msg: "maile aja 5 choti choley",
              imageurl:
                  "https://scontent.fktm8-1.fna.fbcdn.net/v/t39.30808-6/277442652_547495276991319_204999973119074221_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=174925&_nc_ohc=-z9-PjBi2TEAX_c6Ug5&_nc_ht=scontent.fktm8-1.fna&oh=00_AT_72wC44cuDiq5TQL8cwJfkx5Ii3jRb9rvVDlIpgUOCsQ&oe=62C8D731",
            ),
            SizedBox(
              height: 10,
            ),
            ChatBar(
              color: Colors.orange,
              name: "Nishant Rawal",
              msg: "gamer boy moh..",
              imageurl:
                  'https://scontent.fktm8-1.fna.fbcdn.net/v/t39.30808-6/289740968_1449692608800970_415906555813859945_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=W1W0zZqRJ7wAX8tG8Ui&_nc_ht=scontent.fktm8-1.fna&oh=00_AT8EwvIReFqtq_KmT9j7-JzTNuJY5bTim6gimAy8acWPeQ&oe=62C75D00',
            ),
            SizedBox(
              height: 10,
            ),
            ChatBar(
              color: Colors.red,
              name: "Shivam Singh",
              msg: "500 dena malai",
              imageurl:
                  'https://scontent.fktm8-1.fna.fbcdn.net/v/t39.30808-6/288155652_1390266764782474_2386510129721820131_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=9qJRfvqjGTIAX-L9-Ny&tn=h-DWGDfrt6IVZKud&_nc_ht=scontent.fktm8-1.fna&oh=00_AT_NNY-wGKrkQZ_scdtH4Sb9fTGnIqv0hHfpXVbQQR2MOQ&oe=62C8E1E2',
            ),
            SizedBox(
              height: 10,
            ),
            ChatBar(
                color: Colors.green,
                name: "Jetha Lal",
                msg: "kya haal hai",
                imageurl:
                    'https://english.cdn.zeenews.com/sites/default/files/2021/12/29/1000713-dilip-joshi-jethalal.jpg'),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

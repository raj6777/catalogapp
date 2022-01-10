import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final imageUrl="https://www.google.com/imgres?imgurl=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F0c%2Ff5%2F15%2F0cf515ee3d78819549a586f4864a5978.jpg&imgrefurl=https%3A%2F%2Fin.pinterest.com%2Fpin%2F626422629416502968%2F&tbnid=SqUgOSkYtHX28M&vet=12ahUKEwjF94Kpwab1AhXp_zgGHeuhB1sQMygaegUIARCRAg..i&docid=DVo_ExCr0bXyVM&w=778&h=1280&itg=1&q=pubg%20image&ved=2ahUKEwjF94Kpwab1AhXp_zgGHeuhB1sQMygaegUIARCRAg";

    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Raj shah"),
                accountEmail: Text('rajshah9283@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset("assets/images/hey.png",
                        fit: BoxFit.cover, height: 90, width: 90),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

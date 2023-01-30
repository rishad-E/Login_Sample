import 'package:flutter/material.dart';
import 'package:rishad_project/pages.dart/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Chats'),
        backgroundColor:Colors.blue, 
        actions: [
          IconButton(
              onPressed: () {
                signout(context);
              },
              icon: Icon(Icons.exit_to_app_outlined))
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/Ameen.jpg'),
              radius: 25,
            ),
            title: Text('Ameen'),
            subtitle: Text('last seen yesterday'),
           trailing: IconButton(onPressed: (){},icon:Icon(Icons.photo_camera_outlined) ),
          ),
          ListTile(
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                  minWidth: 44, minHeight: 44, maxHeight: 64, maxWidth: 64),
              child: Image.asset(
                'assets/images/Bishir.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            title: Text(' Bishir'),
            subtitle: Text(' sent 2h ago'),
            trailing: IconButton(onPressed: (){},icon:Icon(Icons.photo_camera_outlined) ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/Sufiyan.jpg'),
              radius: 25,
            ),
            title: Text('Sufiyan'),
            subtitle: Text('last seen yesterday'),
            trailing: IconButton(onPressed: (){},icon:Icon(Icons.photo_camera_outlined) ),
          ),
          ListTile(
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                  minWidth: 44, minHeight: 44, maxHeight: 64, maxWidth: 64),
              child: Image.asset(
                'assets/images/Athul.jpg',
                fit: BoxFit.cover,
              ),
            ),
            title: Text(' Athul'),
            subtitle: Text(' last seen yesterday'),
            trailing: IconButton(onPressed: (){},icon:Icon(Icons.photo_camera_outlined) ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/Homegrp.jpeg'),
              radius: 25,
            ),
            title: Text('MLP2019'),
            subtitle: Text('20 new messages'),
            trailing: IconButton(onPressed: (){},icon:Icon(Icons.photo_camera_outlined) ),
          ),
          ListTile(
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                  minWidth: 44, minHeight: 44, maxHeight: 64, maxWidth: 64),
              child: Image.asset(
                'assets/images/Ajas.jpg',
                fit: BoxFit.cover,
              ),
            ),
            title: Text(' Ajas'),
            subtitle: Text(' last seen yesterday'),
            trailing: IconButton(onPressed: (){},icon:Icon(Icons.photo_camera_outlined) ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/Favas.jpeg'),
              radius: 25,
            ),
            title: Text('Favas'),
            subtitle: Text('last seen yesterday'),
            trailing: IconButton(onPressed: (){},icon:Icon(Icons.photo_camera_outlined) ),
          ),
          ListTile(
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                  minWidth: 44, minHeight: 44, maxHeight: 64, maxWidth: 64),
              child: Image.asset(
                'assets/images/Jasir .jpg',
                fit: BoxFit.cover,
              ),
            ),
            title: Text(' Jasir sir'),
            subtitle: Text(' last seen yesterday'),
            trailing: IconButton(onPressed: (){},icon:Icon(Icons.photo_camera_outlined) ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/Najwa.jpg'),
              radius: 25,
            ),
            title: Text('Najwa'),
            subtitle: Text('last seen yesterday'),
            trailing: IconButton(onPressed: (){},icon:Icon(Icons.photo_camera_outlined) ),
          ),
          ListTile(
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                  minWidth: 44, minHeight: 44, maxHeight: 64, maxWidth: 64),
              child: Image.asset(
                'assets/images/Nijas.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            title: Text(' Nijas'),
            subtitle: Text(' last seen yesterday'),
           trailing: IconButton(onPressed: (){},icon:Icon(Icons.photo_camera_outlined) ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/Sahl.jpeg'),
              radius: 25,
            ),
            title: Text('Sahl'),
            subtitle: Text('last seen yesterday'),
            trailing: IconButton(onPressed: (){},icon:Icon(Icons.photo_camera_outlined) ),
          ),
          ListTile(
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                  minWidth: 44, minHeight: 44, maxHeight: 64, maxWidth: 64),
              child: Image.asset(
                'assets/images/Shammi.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            title: Text(' Shamnad'),
            subtitle: Text(' last seen yesterday'),
            trailing: IconButton(onPressed: (){},icon:Icon(Icons.photo_camera_outlined) ),
          ),ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/Ashiq.jpeg'),
              radius: 25,
            ),
            title: Text('Ahiq'),
            subtitle: Text('last seen yesterday'),
            trailing: IconButton(onPressed: (){},icon:Icon(Icons.photo_camera_outlined) ),
          ),
          ListTile(
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                  minWidth: 44, minHeight: 44, maxHeight: 64, maxWidth: 64),
              child: Image.asset(
                'assets/images/Gokul.jpg',
                fit: BoxFit.cover,
              ),
            ),
            title: Text(' GOkul'),
            subtitle: Text(' last seen yesterday'),
           trailing: IconButton(onPressed: (){},icon:Icon(Icons.photo_camera_outlined) ),
          ),
        ],
      ),
    );
  }

  signout(BuildContext ctx) async{


    final _sharedPrefs=await SharedPreferences.getInstance();

   await _sharedPrefs.clear();

    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx1) => LoginScreen()), (route) => false);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/Home.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}

class MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: AppBar(title: Text("Drawer App")),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("M Haider Saleem"),
              accountEmail: Text("haider@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://thumbs.dreamstime.com/b/creative-illustration-default-avatar-profile-placeholder-isolated-background-art-design-grey-photo-blank-template-mockup-144849704.jpg"),
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRIcNnn38Odok0WatZPIZ5Ipfr4wOsDUT01Ng&usqp=CAU")
                )
              ),
            ),
            ListTile(
              title: Text("Main page"),
              trailing: Icon(Icons.home),
              onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home())),
            ),
            Divider(),
            ListTile(
              title: Text("Home page"),
              trailing: Icon(Icons.add_alert),
            ),
            Divider(),
            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.cancel),
              onTap: () => Navigator.of(context).pop(),
            )
          ],
        ),
      ),
      body: Center(
        child: Text("HomeScreen",style: TextStyle(color: Colors.amber,fontSize: 16),),
      ),
    );
  }
}

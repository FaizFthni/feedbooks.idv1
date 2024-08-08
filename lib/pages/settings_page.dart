import 'package:flutter/material.dart';
import 'package:openbooks/admpage/admin_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Settings",style: TextStyle(color: Colors.black),), 
        centerTitle: true,
        backgroundColor: Colors.lightBlue[200],
        shadowColor: Colors.black,
        elevation: 8,
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.admin_panel_settings, color: Colors.transparent,),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const AdminPage();
            }));
          },),
        ],
      ),

      body: ListView(
          children: <Widget>[
            ListTile(
              title: const Text('Language'),
              onTap: () {
               showDialog(
                  context: context, 
                  builder: (context) => AlertDialog(
                    actions: [
                      TextButton(
                        onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: const Text('Close'),
                      ),
                    ],
                    title: const Text('Feedbooks.id'),
                    contentPadding: const EdgeInsets.all(20.0),
                    content: const Text('We apologize that this feature cannot be used yet.'),
                    
                  ),
                );
              },
            ),
            //Divider(),
            ListTile(
              title: const Text('About App'),
              onTap: () {
                showDialog(
                  context: context, 
                  builder: (context) => const AboutDialog(
                    applicationIcon: FlutterLogo(),
                    applicationName: "Feedbooks.id",
                    applicationVersion: "Beta",
                    children: [
                      Text(
                        'application created by group 1 with David dev section. MobileAppsCourseSIFUbakrie.')
                    ],
                  ),
                );
              },
            ),
            //Divider(),
            ListTile(
              title: const Text('Exit'),
              onTap: () {
                showDialog(
                  context: context, 
                  builder: (context) => AlertDialog(
                    actions: [
                      TextButton(
                        onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: const Text('Close'),
                      ),
                    ],
                    title: const Text('Feedbooks.id'),
                    contentPadding: const EdgeInsets.all(20.0),
                    content: const Text('We apologize that this feature cannot be used yet.'),
                    
                  ),
                );
              },
            ),
          ]
      ),
  );
  }
}
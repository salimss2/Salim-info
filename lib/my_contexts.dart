import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Widgets/socialmediaIcons.dart';



class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  static Map<String, String> socialmedia ={
    
    'social.png':'https://wa.me/737815208',
    'instagram.png':'https://www.instagram.com/sapro__gramming/?hl=ar',
    'telegram (1).png':'https://web.telegram.org/k/',
    'youtube.png':'https://www.youtube.com/@PashaPro9',
    'facebook.png':'https://www.facebook.com/profile.php?id=61564355211858',
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(title: Text('This is My Home Page'),backgroundColor: Colors.purple[100],),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70,
                ),
                CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('asset/1.jpg'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Salim Fahd Omer Bukeer',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '+970774807553',
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    IconButton(onPressed: () {
                      launchUrl(Uri.parse('tel: +970774807553'),mode: LaunchMode.externalNonBrowserApplication);
                    }, icon: Icon(Icons.phone))
                  ],
                ),
                GridView.builder(
                  itemCount: socialmedia.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return SocialMediaIcons(socialmediaicon: socialmedia.keys.toList()[index],
                    socialmedialinks: socialmedia.values.toList()[index],);
                  },
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(30),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}

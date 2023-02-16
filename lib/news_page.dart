import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



Future<void> _launchUrl(url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tech News',),
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){
          //to go back to the previous page
          Navigator.pop(context);
        }, icon: const Icon( Icons.arrow_back),),
      ),

      body: ListView(
        children: [
          ListTile(
            title: const Text('Epic Games alleges Google not complying with Indian antitrust order',
            style: TextStyle(
              fontSize: 20,
            )),
            subtitle: const Text('by Reuters') ,
            onTap: (){
              final Uri url = Uri.parse('https://indianexpress.com/article/technology/tech-news-technology/epic-games-alleges-google-not-complying-with-indian-antitrust-order-8444843/');
              _launchUrl(url);
            },
          ),
          const Divider(
            thickness: 2,
          ),
          ListTile(
            title: const Text('Epic Games alleges Google not complying with Indian antitrust order',
            style: TextStyle(
              fontSize: 20,
            )),
            subtitle: const Text('by Reuters') ,
            onTap: (){
              //add link here
            },
          ),
          const Divider(
            thickness: 2,
          ),
          ListTile(
            title: const Text('Epic Games alleges Google not complying with Indian antitrust order',
            style: TextStyle(
              fontSize: 20,
            )),
            subtitle: const Text('by Reuters') ,
            onTap: (){
              //add link here
            },
          ),
          const Divider(
            thickness: 2,
          ),
          ListTile(
            title: const Text('Epic Games alleges Google not complying with Indian antitrust order',
            style: TextStyle(
              fontSize: 20,
            )),
            subtitle: const Text('by Reuters') ,
            onTap: (){
              //add link here
            },
          ),
          const Divider(
            thickness: 2,
          ),
        ],
      )
    );
  }
}
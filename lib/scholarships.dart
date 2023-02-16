import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Scholarships extends StatelessWidget {
  const Scholarships({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scholarships'),
        leading: IconButton(onPressed: () {
          //to go back to the previous page
          Navigator.pop(context);
        }, 
        icon: const Icon(Icons.arrow_back),),
        backgroundColor: Colors.black),
     body: ListView(
      children:[
        ListTile(
          title: const Text(
            'Generation Google Scholarship',
            style: TextStyle(
              fontSize: 25,
            )
          ),
          subtitle: const Text('The Generation Google Scholarship was established to help aspiring students pursuing computer science degrees excel in technology and become leader of the field.',
          style: TextStyle(
              fontSize: 15,
            ),),
          onTap: (){
            final Uri url = Uri.parse('https://buildyourfuture.withgoogle.com/scholarships/generation-google-scholarship-apac');
            launchUrl(url);
          },
        ),
        const Divider(
          thickness: 2,),
        ListTile(
          title: const Text(
            'Goldman Sachs WeTech Program',
          style: TextStyle(
              fontSize: 25,
            ),),
          subtitle: const Text('Goldman Sachs in collaboration with Institute of International Education (IIE) provides WeTech (Women Enhancing Technology) Goldman Sachs Scholars Program for Indian women for pursuing their undergraduate programs at a participating university in her second or third year of studies.',
          style: TextStyle(
              fontSize: 15,
            )),
          onTap: (){
            //add link here
          },
        ),
        const Divider(
          thickness: 2,),
        ListTile(
          title: const Text(
            'Grace Hopper Celebration',
          style: TextStyle(
              fontSize: 25,
            )),
          subtitle: const Text('Grace Hopper celebration brings research and career interests of women in computing to the forefront',
          style: TextStyle(
              fontSize: 15,
            ),),
          onTap: (){
            //add link here
          },
        ),
        const Divider(
          thickness: 2,),
      ],
     ),
    );
  }
}

Future<void> _launchUrl(url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}
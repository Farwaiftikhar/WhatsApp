import 'package:flutter/material.dart';

class WhatsApp extends StatefulWidget {
  const WhatsApp({super.key});

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
    List  Whatsappnames = [
      'Ayesha',
      'Subhan',
      'Sakina',
      'Bisma',
      'Hadia',
      'Horain',
      'Mustafa',
      'Haider',
      'Zahra',
      'Filza',
      'Aina',
      'Saim',
      'Sarim',
      'Shozab',
      'Lababa',
      'Turab',
      'Muqarab',
      'Fawad',
      'Muhammad',
      'Moiz',
    ];


    List subtitle = [

      'message',
      'message',
      'message',
      'message',
      'message',
      'message',
      'message',
      'message',
      'message',
      'message',
      'message',
      'message',
      'message',
      'message',
      'message',
      'message',
      'message',
      'message',
      'message',
      'message',

    ];

    List image = [
     
      'lib/assets/beauty.jpg',
      'lib/assets/drop.jpg',
      'lib/assets/nature.jpg',
      'lib/assets/sky.jpg',
      'lib/assets/stone.jpg',
      'lib/assets/tree.jpg',
      'lib/assets/beauty.jpg',
      'lib/assets/drop.jpg',
      'lib/assets/stone.jpg',
      'lib/assets/sky.jpg',
      'lib/assets/nature.jpg',
      'lib/assets/drop.jpg',
      'lib/assets/beauty.jpg',
      'lib/assets/tree.jpg',
      'lib/assets/stone.jpg',
      'lib/assets/sky.jpg',
      'lib/assets/tree.jpg',
      'lib/assets/nature.jpg',
      'lib/assets/beauty.jpg',
      'lib/assets/drop.jpg',
      
    ];
    






  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('WhatsApp', style: TextStyle(
              color: Colors.green, fontSize: 30, fontWeight: FontWeight.bold),),
          actions: [
            IconButton(
              onPressed: () {}, icon: Icon(Icons.camera_alt_outlined),),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],

        ),


        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Expanded(
             // flex: 1,
            Container(
              margin: EdgeInsets.only(left: 40,top: 10,right: 20, bottom: 10),
              alignment: Alignment.center,
              height: 55,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.grey),
              ),



              child:
              ListTile(
                leading: Icon(
                  Icons.circle_outlined, color: Colors.purpleAccent, size: 35,),
                title: Text(
                  'Ask Meta AI or Search', style: TextStyle(fontSize: 18),),
              ),
            ),


            Expanded(
              flex: 10,
              child:
              ListView.builder(
                itemCount: Whatsappnames.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(image[index]),
                    ),
                    title: Text(Whatsappnames[index]),
                    subtitle: Text(subtitle[index]),
                    trailing: Text('2:34 PM'),);
                },
              ),
            ),

            Expanded(
              flex: 1,
              child:
              BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.chat,),
                      label: 'Chats'
                  ),


                  BottomNavigationBarItem(
                    icon: Icon(Icons.update),
                    label: 'Updates',
                  ),

                  BottomNavigationBarItem(
                      icon: Icon(Icons.call),

                      label: 'Calls'
                  ),


                ],),
            ),],     ),



      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(
              Icons.circle_outlined, color: Colors.purpleAccent, size: 30,),
            onPressed: () {},),

          SizedBox(height: 10,),

          FloatingActionButton(

              child: Icon(Icons.add),
              onPressed: () {}),

        ],),);

  }
}

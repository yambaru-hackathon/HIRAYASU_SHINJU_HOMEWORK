import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('フィード'),
      ),
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.network(
                      'https://i1.wp.com/www.globemart.co.jp/newwp/wp-content/uploads/2020/07/png-transparent-instagram-application-logo-logo-computer-icons-instagram-miscellaneous-text-trademark.png',
                      width:40,
                      height:20, 
                      ),
                    Column(
                      
                      children: [
                        Text(
                          'UserA',
                          style:TextStyle(
                            fontWeight:FontWeight.bold,
                          ),
                        ),
                          Text(
                            'location',
                            ),
                      ],
                    ),    
              ],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                      Image.network(
                        'https://umemo.work/wp-content/uploads/2021/10/pakutaso-tmb.png',
                        ),

                ],),
            ),

            Padding(
              padding: const EdgeInsets.all(4),
              child: Row(
                children: [
                  SizedBox(width:10),
                  Icon(
                  Icons.favorite_outline,
                  size: 30,
                  ),
                  SizedBox(width:20,),
                  Icon(
                  Icons.message_outlined,
                  size: 30,
                  ),
                  Expanded(
                    child: SizedBox(),),
                  Icon(
                  Icons.bookmark,
                  size:30,
                  ),
                  SizedBox(width:30),
                ],
              ),
            ),

             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                  '2歳からでもできる副業はじめよう！', 
                  style:TextStyle(
                  
                    fontSize: 16,
                  ),
              ),
              Text(
                  '#年収1000万', 
                  style:TextStyle(
                    color : Colors.blue,
                  ),
              ),
              Text(
                  '#お金持ちの人とつながりたい', 
                  style:TextStyle(
                    color : Colors.blue,
                  ),
              ),
                ],),
            ),





            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.network(
                      'https://i1.wp.com/www.globemart.co.jp/newwp/wp-content/uploads/2020/07/png-transparent-instagram-application-logo-logo-computer-icons-instagram-miscellaneous-text-trademark.png',
                      width:40,
                      height:20, 
                      ),
                    Column(
                      
                      children: [
                        Text(
                          'UserB',
                          style:TextStyle(
                            fontWeight:FontWeight.bold,
                          ),
                        ),
                          Text(
                            'location',
                            ),
                      ],
                    ),    
              ],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                      Image.network(
                        'https://umemo.work/wp-content/uploads/2021/10/pakutaso-tmb.png',
                        ),

                ],),
            ),

            Padding(
              padding: const EdgeInsets.all(4),
              child: Row(
                children: [
                  SizedBox(width:10,),
                  Icon(
                  Icons.favorite_outline,
                  size: 30,
                  ),
                  SizedBox(width:20,),
                  Icon(
                  Icons.message_outlined,
                  size: 30,
                  ),
                  Expanded(
                    child: SizedBox(),),
                  Icon(
                  Icons.saved_search,
                  size:30,
                  ),
                  SizedBox(width:30),
                ],
              ),
            ),

             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                  '2歳からでもできる副業はじめよう！', 
                  style:TextStyle(
                  
                    fontSize: 16,
                  ),
              ),
              Text(
                  '#年収1000万', 
                  style:TextStyle(
                    color : Colors.blue,
                  ),
              ),
              Text(
                  '#お金持ちの人とつながりたい', 
                  style:TextStyle(
                    color : Colors.blue,
                  ),
              ),
                ],),
            ),

          ],)
          
          
      ),
    );
  }
}
import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
   MyPage({super.key});

  final images = [
    'https://i1.wp.com/www.globemart.co.jp/newwp/wp-content/uploads/2020/07/png-transparent-instagram-application-logo-logo-computer-icons-instagram-miscellaneous-text-trademark.png',
    'https://umemo.work/wp-content/uploads/2021/10/pakutaso-tmb.png',
    'https://news.value-press.com/wp-content/uploads/interview_top_image_pakutaso.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('マイページ')
        ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Image.network(
                    'https://i1.wp.com/www.globemart.co.jp/newwp/wp-content/uploads/2020/07/png-transparent-instagram-application-logo-logo-computer-icons-instagram-miscellaneous-text-trademark.png',
                    width:60,
                    height:60,
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          '7,041', 
                          style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '投稿',
                        ),
                      ],
                    ),
                    const SizedBox(width:16),
                    Column(
                      children: [
                        Text(
                          '4.6億',
                          style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text('フォロワー'),
                      ],
                    ),
                    const SizedBox(width:16),
                    Column(
                      children: [
                        Text(
                          '99',
                          style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text('フォロー中'),
                      ],
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                  'Instagram', 
                  style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
              ),
              Text(
                  '#YoursToMake', 
                  style:TextStyle(
                    color : Colors.blue,
                  ),
              ),
              Text(
                  'help.instagram.com', 
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
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {}, 
                            child: Text(
                              'フォロー中',
                              style: TextStyle(
                                color:Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                ),
                              ),
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              )
                            )
                          ),
                        ),
                        const SizedBox(width:4),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {}, 
                            child: Text(
                              'メッセージ',
                              style: TextStyle(
                                color:Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                ),
                              ),
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              )
                            )
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(width:4),
                  OutlinedButton(
                    onPressed: () {}, 
                    child: Icon(Icons.keyboard_arrow_down,color:Colors.black),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      )
                    )
                  ),
                ],
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              primary: false,
              crossAxisCount: 3,
              children: images.map((imageUrl) {
                return InstagramPostItem(imageUrl: imageUrl);
              }).toList(),
            ),
        ],
       ),
      ),
    );
  }
}

class InstagramPostItem extends StatelessWidget {
  const InstagramPostItem({super.key,required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
    );
  }
}
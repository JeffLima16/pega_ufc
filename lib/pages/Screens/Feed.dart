import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  final List data = [
    {
      "title": "Incêdio",
      "url":
          "https://exame.com/wp-content/uploads/2020/06/desmatamento-incendios-amazonia.jpg"
    },
    {
      "title": "Ilhas",
      "url":
          "https://gooutside-static-cdn.akamaized.net/wp-content/uploads/sites/3/2018/06/natureza-estudo-melhora-saude.jpg"
    },
    {
      "title": "Pantanal",
      "url":
          "https://super.abril.com.br/wp-content/uploads/2016/09/super_imgcontato_com_natureza.jpg"
    },
    {
      "title": "Papagaio",
      "url":
          "https://s2.glbimg.com/c4cIy6uiqHKoHT580oea1lNuMf0=/0x0:4608x3072/1008x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2018/I/j/BitFoaS9eTy4xqUhA5UA/img-2417.jpg"
    },
    {
      "title": "Esperança",
      "url":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2E1I7uO7ctaQSbHRZeeSwVPYOfzOMP6uLow&usqp=CAU"
    },
    {
      "title": "Parque Ubajara",
      "url":
          "http://feriasceara.com.br/wp-content/uploads/2019/07/ubajara-chapada-ibiapaba-parque-entrada-1024x512.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(milliseconds: 400),
              height: 200,
            ),
            items: data.map((item) {
              return GridTile(
                child: Image.network(item["url"], fit: BoxFit.cover),
                footer: Container(
                    padding: EdgeInsets.all(15),
                    color: Colors.black54,
                    child: Text(
                      item["title"],
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.right,
                    )),
              );
            }).toList(),
          ),
          SizedBox(height: 30),
          Container(
            child: Image.asset('assets/img/icon_desenvolviment.png'),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Em desenvolvimento',
            style: TextStyle(
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

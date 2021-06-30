import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:muktijuddher_sath_birsreshto/models/name_model.dart';
import 'details_page.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _opacity = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 300), () {
      setState(() {
        _opacity = 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print('building');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.chart_bar_alt_fill,
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
          onPressed: () {},
        ),
        title: Text(
          'মুক্তিযুদ্ধের ৭ বীরশ্রেষ্ঠ',
          style: TextStyle(
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Opacity(
          opacity: _opacity,
          child: Swiper(
            itemWidth: MediaQuery.of(context).size.width < 470
                ? MediaQuery.of(context).size.width * .73
                : 420,
            layout: SwiperLayout.STACK,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsPage(
                                      image: names[index].image,
                                      index: index,
                                      name: names[index].name,
                                      birthDeath: names[index].birthDeath,
                                    )),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey.withOpacity(.5),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Hero(
                              tag: 'hero$index',
                              child: Image.asset(names[index].image!),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(.8),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: Text(
                            names[index].name!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
            itemCount: names.length,
          ),
        ),
      ),
    );
  }
}

List<NameModel> names = [
  NameModel(
    image: 'assets/jahangir.jpg',
    name: 'বীরশ্রেষ্ঠ শহীদ ক্যাপ্টেন মহিউদ্দিন জাহাঙ্গীর',
    birthDeath: '৭ মার্চ ১৯৪৯ - ১৪ ডিসেম্বর ১৯৭১',
  ),
  NameModel(
    image: 'assets/hamidur.jpg',
    name: 'বীরশ্রেষ্ঠ শহীদ সিপাহী হামিদুর রহমান',
    birthDeath: '২ ফেব্রুয়ারি ১৯৫৩ - ২৮ অক্টোবর ১৯৭১',
  ),
  NameModel(
    image: 'assets/mustafa.jpg',
    name: 'বীরশ্রেষ্ঠ শহীদ সিপাহী মোস্তফা কামাল',
    birthDeath: '১৬ ডিসেম্বর ১৯৪৭ - ১৮ এপ্রিল ১৯৭১',
  ),
  NameModel(
    image: 'assets/ruhul.jpg',
    name: 'বীরশ্রেষ্ঠ শহীদ মোহাম্মদ রুহুল আমিন',
    birthDeath: '১৯৩৫ - ১০ ডিসেম্বর ১৯৭১',
  ),
  NameModel(
    image: 'assets/matiur.png',
    name: 'বীরশ্রেষ্ঠ শহীদ ফ্লাইট লেফটেন্যান্ট মতিউর রহমান',
    birthDeath: '২৯ অক্টোবর ১৯৪১ - ২০ আগস্ট ১৯৭১',
  ),
  NameModel(
    image: 'assets/munsi.jpg',
    name: 'বীরশ্রেষ্ঠ শহীদ ল্যান্স নায়েক মুন্সি আব্দুর রউফ',
    birthDeath: '১ মে ১৯৪৩ - ৮ এপ্রিল ১৯৭১',
  ),
  NameModel(
    image: 'assets/nur.jpg',
    name: 'বীরশ্রেষ্ঠ শহীদ ল্যান্স নায়েক নূর মোহাম্মদ শেখ',
    birthDeath: 'ফেব্রুয়ারি ২৬, ১৯৩৬ - সেপ্টেম্বর ৫, ১৯৭১',
  ),
];

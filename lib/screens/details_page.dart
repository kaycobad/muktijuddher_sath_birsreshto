import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class DetailsPage extends StatelessWidget {
  final String? image;
  final int? index;
  final String? name;
  final String? birthDeath;
  DetailsPage({this.image, this.index, this.name, this.birthDeath});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            LineAwesomeIcons.arrow_circle_left,
            size: 28,
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              width: MediaQuery.of(context).size.width > 470
                  ? 420
                  : MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.grey.withOpacity(.5),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Hero(
                    tag: 'hero$index',
                    child: Image(
                      image: AssetImage(image!),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: DelayedDisplay(
                delay: Duration(milliseconds: 250),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          name!,
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.share_outlined,
                          ),
                          onPressed: () {}),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: DelayedDisplay(
                delay: Duration(milliseconds: 500),
                child: Text(
                  'মহিউদ্দিন জাহাঙ্গীর (৭ মার্চ ১৯৪৯ - ১৪ ডিসেম্বর ১৯৭১) বাংলাদেশের স্বাধীনতা যুদ্ধে অংশগ্রহণকারী একজন শহীদ মুক্তিযোদ্ধা। বাংলাদেশের মহান মুক্তিযুদ্ধে চরম সাহসিকতা আর অসামান্য বীরত্বের স্বীকৃতিস্বরূপ যে সাতজন বীরকে বাংলাদেশের সর্বোচ্চ সামরিক সম্মান “বীর শ্রেষ্ঠ” উপাধিতে ভূষিত করা হয় তিনি তাদের অন্যতম।[১] তিনি মুক্তিবাহিনীর ৭নং সেক্টরের একজন কর্মকর্তা ছিলেন। মহানন্দা নদীর তীরে শত্রুর প্রতিরক্ষা ভাঙ্গার প্রচেষ্টার সময় তিনি শহীদ হন। তার উদ্যোগে মুক্তিবাহিনী ঐ অঞ্চলে পাকিস্তানি সেনাবাহিনীর ব্যাপক ক্ষতিসাধন করে। যার ফলাফলস্বরূপ মুক্তিবাহিনী প্রতিপক্ষকে পরাস্ত করে এবং ওই অঞ্চলকে শত্রুমুক্ত করে। তার সম্মানে ঢাকা সেনানিবাসের প্রধান ফটকের নাম "শহীদ জাহাঙ্গীর গেট" নামকরণ করা হয়েছে।',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: DelayedDisplay(
                delay: Duration(milliseconds: 750),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'জন্ম ও শিক্ষাজীবন',
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      IconButton(
                          icon: Icon(Icons.share_outlined), onPressed: () {}),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: DelayedDisplay(
                delay: Duration(milliseconds: 750),
                child: Text(
                  'মহিউদ্দিন জাহাঙ্গীর ১৯৪৯ সালের ৭ মার্চ বরিশাল জেলার বাবুগঞ্জ উপজেলার রহিমগঞ্জ গ্রামে জন্মগ্রহণ করেন। তার পিতা আব্দুল মোতালেব হাওলাদার ছিলেন কৃষক এবং মা সাফিয়া বেগম ছিলেন গৃহিণী। মহিউদ্দিনরা তিন বোন তিন ভাই।[২] দাদা আব্দুর রহিম হাওলাদার ছিলেন প্রতাপশালী ব্যক্তি। পিতার আর্থিক দৈন্যতার কারণে মাত্র সাড়ে তিন বছর বয়সে মামার বাড়ি মুলাদি উপজেলার পাতারচর গ্রামে যান জাহাঙ্গীর। পাতারচর সরকারি প্রাথমিক বিদ্যালয়ে ১৯৫৩ সালে তার শিক্ষাজীবনের সূচনা হয়। মুলাদি মাহমুদ জান পাইলট উচ্চ বিদ্যালয় থেকে ১৯৬৪ সালে বিজ্ঞান বিভাগে ম্যাট্রিকুলেশন পাস করেন। ১৯৬৬ তে তিনি বরিশাল বি.এম (ব্রজমোহন) কলেজ থেকে উচ্চ মাধ্যমিক পাশ করেন।[৩]ছাত্র হিসেবে মহিউদ্দিন জাহাঙ্গীর বেশ মেধাবী ছিলেন৷ খেলাধুলার পাশাপাশি তিনি ছিলেন রাজনীতি সচেতন৷ কলেজ জীবনেই তিনি পাঠ করেন লেনিন, মাও-সেতুং, চে গেভারার মতো ব্যক্তির সংগ্রামী জীবনের গল্প ও রাজনৈতিক দর্শন৷ তিনি মাস্টারদা সূর্যসেনের জীবনীগ্রন্থ, ক্ষুদিরামের ফাঁসি, তিতুমীরের বাঁশের কেল্লা, চট্টগ্রামের অস্ত্রাগার লুণ্ঠন এবং প্রীতিলতা ওয়াদ্দেদারের জীবনীসহ বহু গ্রন্থ নিয়মিত পড়তেন।উচ্চ মাধ্যমিক পরীক্ষায় উত্তীর্ণ হওয়ার পর মহিউদ্দিন জাহাঙ্গীর বিমানবাহিনীতে যোগদানের চেষ্টা করেন, কিন্তু চোখের অসুবিধা থাকায় ব্যর্থ হন। ১৯৬৭ সালে তিনি ঢাকা বিশ্ববিদ্যালয়ে পরিসংখ্যান বিভাগে অধ্যয়নরত অবস্থায়ই পাকিস্তান মিলিটারি একাডেমীতে ক্যাডেট হিসেবে যোগদান করেন। ১৯৬৮’র ২ জুন তিনি ইঞ্জিনিয়ার্স কোরে কমিশন লাভ করেন। সেনাবাহিনীতে তার নম্বর ছিল PSS-১০৪৩৯। তিনি মিলিটারি কলেজ অব ইঞ্জিনিয়ারিং, রিসালপুর থেকে অফিসার বেসিক কোর্স-২৯ এবং ইনফ্যান্ট্রি স্কুল অব ট্যাকটিক্স থেকে অফিসার উইপন কোর্স সম্পন্ন করেন। সর্বশেষ ১৯৬৯ সালে আগস্ট মাসের শেষের দিকে এক মাসের ছুটিতে দেশে ফেরেন।',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

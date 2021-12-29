import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_study/models/tab.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("더보기"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.search),
            iconSize: 15,
          ),
          IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.qrcode),
            iconSize: 15,
          ),
          IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.music),
            iconSize: 15,
          ),
          IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.cog),
            iconSize: 15,
          ),
        ],
      ),
      body: ListView(
        children: [
          _buildTopContainer(),
          _buildGridView(),
          _buildAdImageContainer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("카카오 나우",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                ImageSlideshow(
                  width: double.infinity,
                  initialPage: 0,
                  indicatorBackgroundColor: Colors.grey,
                  indicatorColor: Colors.black12,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/image1.jpg'),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/image2.jpg'),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/image3.jpg'),
                    ),
                  ],
                  autoPlayInterval: 5000,
                  isLoop: true,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _buildAdImageContainer() {
    return Container(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset('assets/image.jpg'),
      ),
    );
  }

  GridView _buildGridView() {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(16.0),
      crossAxisCount: 4,
      children: List.generate(tabs.length, (index) {
        return Column(
          children: [
            Icon(tabs[index].icon),
            const SizedBox(height: 10),
            Text(tabs[index].text),
          ],
        );
      }),
    );
  }

  Container _buildTopContainer() {
    return Container(
      color: Colors.yellow,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      "지갑",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 17),
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.shield, size: 17),
                        Text("인증서"),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Row(
                      children: const [
                        Icon(Icons.qr_code, size: 17),
                        Text("QR 체크인"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("톡서랍 플러스 체험해 보기"),
                      Icon(Icons.arrow_forward_ios, size: 17),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      FaIcon(
                        FontAwesomeIcons.comment,
                        size: 17,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "pay",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Text(
                    "6,250원",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text("송금"),
                      SizedBox(width: 20),
                      Text("결제"),
                      SizedBox(width: 20),
                      Text("자산"),
                    ],
                  ),
                  Row(
                    children: const [
                      FaIcon(FontAwesomeIcons.shoppingCart, size: 17),
                      Text("구매내역"),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

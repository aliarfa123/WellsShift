import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class Music extends StatefulWidget {
  const Music({Key? key}) : super(key: key);

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  var value = 6.0;
  Color secondary = Color.fromRGBO(187, 223, 250, 1);
  int current = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(3, 100, 173, 1),
              Color.fromRGBO(0, 33, 57, 1),
            ],
          ),
        ),
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.03,
                ),
                SizedBox(
                  width: size.width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("SDADASDADa");
                          Get.back();
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/icons/back_2.png"),
                            SizedBox(
                              width: size.width * 0.03,
                            ),
                            const Text(
                              "Back",
                              style: TextStyle(
                                fontSize: 18.666666,
                                color: Color.fromRGBO(187, 223, 250, 1),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Image(
                        height: 28,
                        image: AssetImage(
                          'assets/icons/info.png',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                SizedBox(
                  width: size.width * 0.9,
                  child: Wrap(
                    children: [
                      Text(
                        'Let yourself be drawn by the stronger pull of that which you truly love.',
                        style: TextStyle(
                          letterSpacing: 0.2,
                          color: secondary,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.06,
                ),
                CarouselSlider.builder(
                  options: CarouselOptions(
                    height: size.height * 0.3,
                    autoPlay: false,
                    disableCenter: true,
                    viewportFraction: 0.68,
                    aspectRatio: 16 / 4,
                    onPageChanged: (index, i) {
                      setState(() {
                        current = index;
                      });
                    },
                    // enlargeCenterPage: true,
                    // enlargeStrategy: CenterPageEnlargeStrategy.scale,
                  ),
                  itemCount: imgList.length,
                  itemBuilder: (ctx, index, i) {
                    return Transform.scale(
                      scale: index == current ? 1 : 0.8,
                      child: Container(
                        margin: const EdgeInsets.all(5.0),
                        child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10.0)),
                            child: Stack(
                              children: <Widget>[
                                Image(
                                  image: AssetImage(imgList[index]),
                                  fit: BoxFit.fill,
                                  width: 500,
                                ),
                              ],
                            )),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Text(
                  'Beleiver',
                  style: TextStyle(
                    color: secondary,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Imagine Dragons',
                  style: TextStyle(
                    color: secondary,
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.06,
                ),
                Container(
                  width: size.width * 0.9,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                            image: const AssetImage(
                              'assets/icons/sound.png',
                            ),
                            color: secondary,
                          ),
                          Row(
                            children: [
                              Image(
                                image: const AssetImage(
                                  'assets/icons/repeat.png',
                                ),
                                color: secondary,
                              ),
                              SizedBox(
                                width: size.width * 0.05,
                              ),
                              Image(
                                image: const AssetImage(
                                  'assets/icons/shuffle.png',
                                ),
                                color: secondary,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      SizedBox(
                        width: size.width * 0.9,
                        child: Slider(
                          // thumbColor: const Color.fromRGBO(232, 145, 51, 1),
                          activeColor: const Color.fromRGBO(232, 145, 51, 1),
                          inactiveColor: secondary,
                          min: 3.0,
                          max: 20.0,
                          // inactiveColor: const Color.fromRGBO(230, 233, 249, 1),
                          value: value,
                          onChanged: (newVal) {
                            setState(() {
                              value = newVal;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.88,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '00:50',
                              style: TextStyle(
                                color: secondary,
                              ),
                            ),
                            Text(
                              '04:00',
                              style: TextStyle(
                                color: secondary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.06,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                            image: const AssetImage(
                              'assets/icons/previous.png',
                            ),
                            color: secondary,
                          ),
                          Image(
                            image: const AssetImage(
                              'assets/icons/play_pause.png',
                            ),
                            color: secondary,
                          ),
                          Image(
                            image: const AssetImage(
                              'assets/icons/next.png',
                            ),
                            color: secondary,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final List<String> imgList = [
  'assets/icons/Rectangle 67.png',
  'assets/icons/Rectangle 67.png',
  'assets/icons/Rectangle 67.png',
];

final List<Widget> imageSliders = imgList
    .map(
      (item) => Transform.scale(
        scale: 0.8,
        child: Container(
          margin: const EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              child: Stack(
                children: <Widget>[
                  Image(
                    image: AssetImage(item),
                    fit: BoxFit.cover,
                    width: 500,
                  ),
                ],
              )),
        ),
      ),
    )
    .toList();

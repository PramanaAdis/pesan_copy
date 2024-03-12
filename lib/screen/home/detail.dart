import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pesan_copi/theme.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  bool isExpanded = false;
  bool _isLike = false;

  int _isSelected = -1;

  @override
  Widget build(BuildContext context) {
    Widget header_detail() {
      return Container(
        margin: EdgeInsets.only(top: 16, bottom: 15, left: 15, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.chevron_left_rounded,
                  color: greytext7,
                  size: 24,
                )),
            Text(
              'Detail',
              style: semiboldtext18.copyWith(color: greytext7),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    _isLike = true;
                  });
                },
                icon: Image.asset(
                  'assets/icons/Heart2.png',
                  width: 24,
                  color: _isLike == true ? brownColor : greytext4,
                ))
          ],
        ),
      );
    }

    Widget images_coffe() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        height: 226,
        child: Image.asset('assets/images/Capucino_detail.png'),
      );
    }

    Widget judul_kopi() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Cappucino',
              style: semiboldtext20.copyWith(color: greytext7),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'with Chocolate',
              style: reguler12.copyWith(color: Color(0xff9B9B9B)),
            )
          ],
        ),
      );
    }

    Widget rating() {
      return Container(
        margin: EdgeInsets.only(top: 16, left: 30, right: 30),
        child: Row(
          children: [
            Image.asset(
              'assets/images/Rating.png',
              width: 20,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              '4.8',
              style: semiboldtext16.copyWith(color: greytext7),
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              '(230)',
              style: reguler12.copyWith(color: Color(0xff808080)),
            ),
          ],
        ),
      );
    }

    Widget garis() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 3,
              color: Color(0xffEAEAEA),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      );
    }

    Widget deskripsi() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Description',
              style: semiboldtext18.copyWith(color: greytext7),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo',
              maxLines: isExpanded ? null : 3,
              style: reguler14.copyWith(color: greytext8),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: Text(
                isExpanded ? 'Read less' : '..Read More',
                style: semiboldtext14.copyWith(color: brownColor),
              ),
            )
          ],
        ),
      );
    }

    Widget size_coffee() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Size',
              style: semiboldtext16.copyWith(color: greytext7),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              margin: EdgeInsets.only(bottom: isExpanded ? 90 : 90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _isSelected = 1;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color:
                              _isSelected == 1 ? Color(0xffFFF5EE) : whiteColor,
                          border: Border.all(
                              color: _isSelected == 1
                                  ? brownColor
                                  : Color(0xffDEDEDE),
                              width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      height: 43,
                      width: 96,
                      padding:
                          EdgeInsets.symmetric(horizontal: 43, vertical: 10),
                      child: Center(
                        child: Text(
                          'S',
                          style: reguler14.copyWith(
                              color: _isSelected == 1 ? brownColor : greytext7),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _isSelected = 2;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color:
                              _isSelected == 2 ? Color(0xffFFF5EE) : whiteColor,
                          border: Border.all(
                              color: _isSelected == 2
                                  ? brownColor
                                  : Color(0xffDEDEDE),
                              width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      height: 43,
                      width: 96,
                      padding:
                          EdgeInsets.symmetric(horizontal: 43, vertical: 10),
                      child: Center(
                        child: Text(
                          'M',
                          style: reguler14.copyWith(
                              color: _isSelected == 2 ? brownColor : greytext7),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _isSelected = 3;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color:
                              _isSelected == 3 ? Color(0xffFFF5EE) : whiteColor,
                          border: Border.all(
                              color: _isSelected == 3
                                  ? brownColor
                                  : Color(0xffDEDEDE),
                              width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      height: 43,
                      width: 96,
                      padding:
                          EdgeInsets.symmetric(horizontal: 43, vertical: 10),
                      child: Center(
                        child: Text(
                          'L',
                          style: reguler14.copyWith(
                              color: _isSelected == 3 ? brownColor : greytext7),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget buynow() {
      return Container(
          decoration: BoxDecoration(
            color: whiteColor,
          ),
          height: 87,
          width: MediaQuery.of(context).size.width * 1,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price',
                        style: reguler14.copyWith(color: greytext4),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '\$ 4.53',
                        style: semiboldtext18.copyWith(color: brownColor),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  padding: EdgeInsets.symmetric(horizontal: 52),
                  decoration: BoxDecoration(
                      color: brownColor,
                      borderRadius: BorderRadius.all(Radius.circular(16))),
                  height: 63,
                  child: Center(
                    child: Text(
                      'Buy Now',
                      style: semiboldtext18.copyWith(color: whiteColor),
                    ),
                  ),
                )
              ],
            ),
          ));
    }

    Widget ikonkpoisusu() {
      return Positioned(
        top: 370,
        left: 230,
        right: 30,
        child: Container(
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                    color: Color(0xffF9F9F),
                    borderRadius: BorderRadius.all(Radius.circular(14))),
                child: Container(
                  height: 24,
                  width: 24,
                  child: Image.asset('assets/icons/bean.png'),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                    color: Color(0xffF9F9F),
                    borderRadius: BorderRadius.all(Radius.circular(14))),
                child: Container(
                  height: 24,
                  width: 24,
                  child: Image.asset('assets/icons/milk.png'),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffeaeaea),
      body: Stack(children: [
        Container(
          color: whiteColor,
          child: ListView(children: [
            Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    header_detail(),
                    images_coffe(),
                    judul_kopi(),
                    rating(),
                    garis(),
                    deskripsi(),
                    size_coffee()
                  ],
                ),
                ikonkpoisusu()
              ],
            ),
          ]),
        ),
        Positioned(
          bottom: 0,
          child: buynow(),
        )
      ]),
    );
  }
}

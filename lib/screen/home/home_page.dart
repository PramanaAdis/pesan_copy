import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:pesan_copi/screen/home/komponen/menukopi.dart';
import 'package:pesan_copi/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _categories = ['Cappuciino', 'Machiato', 'Latte', 'Americano'];
  int _isSelected = 0;
  final _scrollController = ScrollController();
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget locationAndPP() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(top: 19, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Location',
                  style: reguler12.copyWith(color: greytext2),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Sleman, Yogyakarta',
                  style: semiboldtext14.copyWith(color: greytext3),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16, right: 30),
            width: 44,
            height: 44,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/profile.png'))),
          )
        ],
      );
    }

    Widget searchField() {
      return Container(
        height: 52,
        margin: EdgeInsets.only(
          right: 30,
          left: 30,
          top: 28,
        ),
        child: TextField(
            decoration: InputDecoration(
          hintText: 'Search coffee',
          hintStyle: reguler14.copyWith(color: greytext4),
          filled: true,
          fillColor: searchfield,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(18)),
          prefixIcon: Icon(Icons.search_sharp),
          prefixIconColor: whiteColor,
          suffixIcon: InkWell(
              onTap: () {}, child: Image.asset('assets/icons/filter.png')),
        )),
      );
    }

    Widget promo() {
      return Positioned(
        top: 160,
        right: 30,
        left: 30,
        child: Stack(
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(16)),
              height: 140,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset('assets/images/promo.png')),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 23, top: 58),
                  height: 27,
                  width: 208,
                  color: Color(0xff1c1c1c),
                ),
                Container(
                  margin: EdgeInsets.only(left: 23, top: 18),
                  height: 24,
                  width: 163,
                  color: Color(0xff1c1c1c),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 13, left: 23),
                  height: 26,
                  width: 60,
                  decoration: BoxDecoration(
                      color: redColor, borderRadius: BorderRadius.circular(8)),
                  child: Center(
                      child: Text(
                    'Promo',
                    style: semiboldtext14.copyWith(color: whiteColor),
                  )),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 23),
                  child: Text(
                    'Buy one get one FREE',
                    style: semiboldtext32.copyWith(color: whiteColor),
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget kategori(int index) {
      return InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () {
          setState(() {
            _isSelected = index;
          });
        },
        child: Container(
          margin: EdgeInsets.only(top: 88, right: 5),
          decoration: BoxDecoration(
              color: _isSelected == index ? brownColor : whiteColor,
              borderRadius: BorderRadius.circular(12)),
          height: 38,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Center(
            child: Text(
              _categories[index],
              style: semiboldtext14.copyWith(
                  color: _isSelected == index ? whiteColor : Color(0xff2F4B4E)),
            ),
          ),
        ),
      );
    }

    Widget jeniskopi() {
      return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.only(left: 30),
            child: Row(
              children: _categories
                  .asMap()
                  .entries
                  .map((MapEntry map) => kategori(map.key))
                  .toList(),
            ),
          ));
    }

    Widget menukopisemua() {
      return GridView.builder(
        padding: EdgeInsets.only(left: 20, top: 30, right: 20),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 0.0,
          childAspectRatio: 149 / 239,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Menukopi();
        },
        itemCount: 8,
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: Container(
          child: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              Column(
                children: [
                  Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(color: Color(0xff131313)),
                            height: 236,
                            child: Column(
                              children: [locationAndPP(), searchField()],
                            ),
                          ),
                          jeniskopi(),
                        ],
                      ),
                      promo()
                    ],
                  ),
                ],
              ),
            ]),
          ),
          SliverToBoxAdapter(child: menukopisemua()),
        ],
      )),
    );
  }
}

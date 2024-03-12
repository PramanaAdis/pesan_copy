import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pesan_copi/screen/home/detail.dart';
import 'package:pesan_copi/theme.dart';

class Menukopi extends StatelessWidget {
  const Menukopi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            padding: EdgeInsets.all(4),
            height: 239,
            width: 149,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/capucino2.png'),
                Container(
                  margin: EdgeInsets.only(left: 8, top: 12),
                  child: Text(
                    'Cappucino',
                    style: semiboldtext16.copyWith(color: greytext7),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8, top: 4),
                  child: Text(
                    'with Chocolate',
                    style: reguler12.copyWith(color: greytext4),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8, top: 11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$ 4.53',
                        style:
                            semiboldtext18.copyWith(color: Color(0xff2F4B4E)),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Detail(),
                                ));
                          },
                          child: Container(
                              width: 32,
                              child: Image.asset('assets/icons/plus.png')))
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            child: Container(
              margin: EdgeInsets.only(top: 4, left: 4),
              decoration: BoxDecoration(
                  color: Color(0x60000000),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16))),
              height: 25,
              width: 51,
              child: Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFBBE21),
                    size: 12,
                  ),
                  Text(
                    '4.8',
                    style: semiboldtext10.copyWith(color: whiteColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

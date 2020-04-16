import 'package:flutter/material.dart';

class OfferAds {
  OfferAds({this.image1});

  String image1;
}

List<OfferAds> _offerlist = <OfferAds>[
  OfferAds(
    image1: 'android/images/img1.jpg',
  ),
  OfferAds(
    image1: 'android/images/img2.jpg',
  ),
  OfferAds(
    image1: 'android/images/img3.jpg',
  ),
  OfferAds(
    image1: 'android/images/img4.jpg',
  ),
  OfferAds(
    image1: 'android/images/img5.jpg',
  ),
];

Widget quotesList({image1}) => Padding(
      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 200.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: _offerlist.length,
              itemBuilder: (context, index) {
                final offerlist = _offerlist[index];
                return Column(
                  children: <Widget>[
                    Container(
                      child: Card(
                        elevation: 1.0,
                        child: Stack(
                          children: <Widget>[
                            Image.asset(
                              offerlist.image1,
                              fit: BoxFit.fill,
                              height: 190.0,
                              width: 250.0,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
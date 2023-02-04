import 'package:currencybase/widgets/adpage.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class horizontalslider extends StatefulWidget {
  horizontalslider({Key? key}) : super(key: key);

  @override
  State<horizontalslider> createState() => horizontalsliderState();
}

class horizontalsliderState extends State<horizontalslider> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          SizedBox(
            height: 100,
            child: PageView(
              
              controller: _controller,
              children: [
                adpage(
                  topic: 'Buy BTC🪙',
                  description:
                      'Buy bitcoin and get 50% off in your first investment ',
                ),
                adpage(
                  topic: 'Get 5% cashback💰 ',
                  description: 'Get 5% cashback investing on 5 different coins',
                ),
                adpage(
                  topic: 'Invite And Earn📲',
                  description:
                      'Invite your friends and earn money upto INR 500',
                ),
                adpage(
                  topic: 'Complete Your KYC📄',
                  description:
                      'Complete your kyc and earn rewards upto INR 1000',
                ),
              ],
            ),
          ),
          Divider(
            height: 20,
            color: Colors.transparent,
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: ExpandingDotsEffect(dotHeight: 10, dotWidth: 10),
          ),
          Divider(
            height: 50,
            color: Colors.transparent,
          )
        ]),
      ),
    );
  }
}

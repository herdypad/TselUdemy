import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../themes.dart';

class CardInfoHome extends StatelessWidget {
  const CardInfoHome({super.key});

  @override
  Widget build(BuildContext context) {
    Widget crircularPercent(double percent) {
      return CircularPercentIndicator(
        radius: 20.0,
        lineWidth: 7.0,
        animation: true,
        percent: percent,
        circularStrokeCap: CircularStrokeCap.round,
        backgroundColor: lightGreyColor,
        progressColor: orangColor,
      );
    }

    Widget info_card_list_2() {
      return Row(
        children: [
          Expanded(
            flex: 1,
            child: crircularPercent(0.9),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Multimedia',
                        style: boldText13.copyWith(color: primaryTextColor),
                      ),
                      Spacer(),
                      Text(
                        '9.2Gb ',
                        style: semiBoldText13.copyWith(color: primaryTextColor),
                      ),
                      Text(
                        '/ 10 GB left',
                        style: semiBoldText13.copyWith(color: primaryTextColor),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: primaryTextColor,
                      ),
                    ],
                  ),
                  Row(children: [
                    Image.asset(
                      'assets/icons/icon-warning.png',
                      width: 13,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '9.2 GB / 10 GB is expiring tomorrow',
                      style: mediumText10.copyWith(
                          color: brownColor, letterSpacing: 0.2),
                    )
                  ]),
                ],
              ))
        ],
      );
    }

    Widget info_card_list_1() {
      return Row(
        children: [
          Expanded(
            flex: 1,
            child: crircularPercent(0),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Internet',
                        style: boldText13.copyWith(color: primaryTextColor),
                      ),
                      Spacer(),
                      Text(
                        'You have no quota',
                        style: mediumText13.copyWith(color: primaryTextColor),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: primaryTextColor,
                      )
                    ],
                  ),
                  Text(
                    'You Have No qouta',
                    style: regulerText10.copyWith(color: primaryTextColor),
                  )
                ],
              ))
        ],
      );
    }

    return Container(
      margin: EdgeInsets.only(top: 18, right: 16, left: 16),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: greyCarColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 17, top: 27, bottom: 21),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rp 0',
                        style:
                            extraBoldText26.copyWith(color: primaryTextColor),
                      ),
                      Text(
                        'Active until 22 Sep 2021',
                        style: mediumText12.copyWith(color: darkGreyColor),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 19, vertical: 7),
                            decoration: BoxDecoration(
                              color: redButtonColor,
                              borderRadius: BorderRadius.circular(16.5),
                            ),
                            child: Text(
                              'Buy Packed',
                              style: mediumText12.copyWith(color: whiteColor),
                            ),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Text(
                            'Top Up',
                            style: mediumText12.copyWith(color: blueColor),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Text(
                            'Send Gift',
                            style: mediumText12.copyWith(color: blueColor),
                          )
                        ],
                      )
                    ]),
              ),
            ),
          ),
          //baris 2 card info
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 17),
              child: Column(
                children: [
                  info_card_list_1(),
                  Spacer(),
                  info_card_list_2(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

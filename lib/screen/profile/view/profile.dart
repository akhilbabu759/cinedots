import 'package:cinedot/core/styles/styles.dart';
import 'package:flutter/material.dart';

import 'widget/watch_history.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 8),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Profile',
                  style: TextStyle(
                      color: AppStyle().tilleColor,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.settings_outlined,
                      color: AppStyle().grayCol,
                    ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Stack(children: [
                      CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1623091411395-09e79fdbfcf3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aW5kaWFuJTIwZ2lybHxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
                          radius: 30),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          child: Icon(Icons.mode_edit_outlined, size: 17),
                          radius: 12,
                        ),
                      )
                    ]),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: RichText(
                        text: TextSpan(
                          text: 'Annu Morya ',
                          style: TextStyle(
                              color: AppStyle().tilleColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                                text: '\nLvl 1 moviebuff',
                                style: TextStyle(
                                    fontSize: 11, color: AppStyle().grayCol)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text('Edit profile',
                        style:
                            TextStyle(fontSize: 11, color: AppStyle().grayCol)),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppStyle().grayCol,
                      size: 18,
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0, left: 8),
              child: Row(
                children: [
                  Text(
                    'Rank #322',
                    style: TextStyle(color: AppStyle().tilleColor, fontSize: 12),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.height * 0.10),
                  Text(
                    'XP 66/100',
                    style: TextStyle(color: AppStyle().tilleColor, fontSize: 12),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0, left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.34,
                    height: MediaQuery.of(context).size.height * 0.005,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: AppStyle().progressColor),
                  ),
                  Text(
                    'View progress',
                    style: TextStyle(
                        fontSize: 11, color: Color.fromARGB(255, 2, 111, 200)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0, left: 8),
              child: Text(
                'Watch History',
                style: TextStyle(color: AppStyle().tilleColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  WatchHistoryList(num: '23', tex: 'movies'),
                  WatchHistoryList(num: '5', tex: 'series'),
                  WatchHistoryList(num: '10', tex: 'shows'),
                ],
              ),
            ),
            SizedBox(height: 30),
            RowWidget(
              icon: Icon(
                Icons.wallet_giftcard_outlined,
                color: AppStyle().tilleColor,
                size: 20,
              ),
              tex: 'Rewards & referrls',
            ),
             SizedBox(height: 15),
            RowWidget(
              icon: Icon(
                Icons.watch_later_outlined,
                color: AppStyle().tilleColor,
                size: 20,
              ),
              tex: 'Watch Later ',
            ),
             SizedBox(height: 15),
            RowWidget(
              icon: Icon(
                Icons.favorite_border_outlined,
                color: AppStyle().tilleColor,
                size: 20,
              ),
              tex: 'My favorites',
            ),
             SizedBox(height: 15),
            RowWidget(
              icon: Icon(
                Icons.leaderboard_outlined,
                color: AppStyle().tilleColor,
                size: 20,
              ),
              tex: 'Leaaderboard',
            ),
             SizedBox(height: 15),
            RowWidget(
              icon: Icon(
                Icons.interests_outlined,
                color: AppStyle().tilleColor,
                size: 20,
              ),
              tex: 'Manage interests',
            ),
             SizedBox(height: 15),
            RowWidget(
              icon: Icon(
                Icons.wallet,
                color: AppStyle().tilleColor,
                size: 20,
              ),
              tex: 'Payment methods',
            ),
             SizedBox(height: 15),
            RowWidget(
              icon: Icon(
                Icons.language,
                color: AppStyle().tilleColor,
                size: 20,
              ),
              tex: 'Change language',
            ),
             SizedBox(height: 15),
            RowWidget(
              icon: Icon(
                Icons.people_outlined,
                color: AppStyle().tilleColor,
                size: 20,
              ),
              tex: 'Rewards & referrls',
            )
          ]),
        ),
      ),
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({super.key, required this.tex, required this.icon});
  final String tex;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              icon,
              SizedBox(
                width: 10,
              ),
              Text(
                tex,
                style: TextStyle(color: AppStyle().tilleColor),
              )
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: AppStyle().tilleColor,
            size: 20,
          )
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutterapp_findjobez/theme.dart';

class DetailPage extends StatefulWidget {
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isApplied = false;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 80,
        ),
        child: Column(
          children: [
            isApplied
                ? Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 30),
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(48),
                      color: Color(0xffECEDF1),
                    ),
                    child: Text(
                      'You have applied this job and the\nrecruiter will contact you',
                      textAlign: TextAlign.center,
                      style: greyTextStyle.copyWith(),
                    ),
                  )
                : Container(),
            Image.asset(
              'assets/icon_google.png',
              width: 60,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Front-End Developer',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Google, Inc - Jakarta',
              style: greyTextStyle,
            )
          ],
        ),
      );
    }

    Widget detailItem(String text) {
      return Container(
        margin: EdgeInsets.only(
          top: 16,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.adjust,
              color: primaryColor,
              size: 12,
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Text(
                text,
                style: blackTextStyle.copyWith(
                  fontWeight: light,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget aboutJob() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About the job',
              style: blackTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
            Column(
              children: [
                detailItem(
                  'Full-Time On Site',
                ),
                detailItem(
                  'Start at \$18,000 per month',
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget qualifications() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Qualifications',
              style: blackTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
            Column(
              children: [
                detailItem(
                  'Candidate must possess at least a Bachelor\'s Degree.',
                ),
                detailItem(
                  'Able to us Microsoft Office and Google based service.',
                ),
                detailItem(
                  'Have an excellent time management, good at organized and details',
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget responsibilities() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Responsibilities',
              style: blackTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
            Column(
              children: [
                detailItem(
                  'Initiate and promote any programs, events, training, or activities.',
                ),
                detailItem(
                  'Assessing and anticipating needs and collaborate with Division.',
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget applyButton() {}
    Widget cancelButton() {}
    Widget messageButton() {}

    return Scaffold(
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            header(),
            aboutJob(),
            qualifications(),
            responsibilities(),
            isApplied ? cancelButton() : applyButton(),
            messageButton(),
          ],
        ),
      ),
    );
  }
}

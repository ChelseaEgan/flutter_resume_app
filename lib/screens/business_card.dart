import 'package:flutter/material.dart';
import 'package:project3/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class BusinessCard extends StatelessWidget {
  static const phonenumberText = '555-555-5555';
  static const website = 'github.com/level5esper';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Styles.colorBackground,
      padding: EdgeInsets.all(widthPadding(context)),
      child: Column(
        children: <Widget>[
          IntrinsicHeight(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    row(photo(context)),
                    row(identity(context)),
                    contact(context),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }

  Widget row(dynamic childWidgets) {
    if (childWidgets is! List) {
      childWidgets = <Widget>[childWidgets];
    }
    return Row(
        mainAxisAlignment: MainAxisAlignment.center, children: childWidgets);
  }

  Widget photo(BuildContext context) => SizedBox(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset('assets/Briggs.jpg', fit: BoxFit.cover),
        ),
        width: heightPadding(context),
        height: heightPadding(context),
      );

  Widget identity(BuildContext context) => Column(
        children: [
          Text('Chelsea Egan', style: Theme.of(context).textTheme.headline1),
          Text('Software Engineer',
              style: Theme.of(context).textTheme.headline5),
          phoneNumber(context),
        ],
        mainAxisAlignment: MainAxisAlignment.start,
      );

  Widget phoneNumber(BuildContext context) => Padding(
      padding: EdgeInsets.only(top: rowPadding(context)),
      child: GestureDetector(
          onTap: () => _launchURL('tel:$phonenumberText'),
          child: Text(phonenumberText)));

  Widget contact(BuildContext context) => Padding(
        padding: EdgeInsets.only(top: rowPadding(context)),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
              onTap: () => _launchURL('https://$website'),
              child: Text(website)),
          Text('eganch@oregonstate.edu')
        ]),
      );

  double rowPadding(BuildContext context) =>
      MediaQuery.of(context).orientation == Orientation.portrait ? 20 : 2;

  double heightPadding(BuildContext context) =>
      MediaQuery.of(context).size.height * 0.25;

  double widthPadding(BuildContext context) =>
      MediaQuery.of(context).size.width * 0.02;

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

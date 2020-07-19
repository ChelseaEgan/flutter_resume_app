import 'package:flutter/material.dart';
import '../content.dart';

class Resume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
              minWidth: viewportConstraints.maxWidth,
            ),
            child: Column(
              children: <Widget>[
                contactInfo(context),
                jobSection(context),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget resumeSection(BuildContext context, List<Widget> childrenWidgets) =>
      Container(
        padding: const EdgeInsets.all(12),
        child: Row(children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: childrenWidgets,
            ),
          ),
        ]),
      );

  Widget contactInfo(BuildContext context) => resumeSection(context, <Widget>[
        Text(NAME, style: Theme.of(context).textTheme.headline1),
        Text(EMAIL),
        Text(WEBSITE),
      ]);

  Widget jobSection(BuildContext context) =>
      resumeSection(context, jobInfo(context));

  List<Widget> jobInfo(BuildContext context) => JOB_DETAILS
      .map((job) => Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  job[TITLE],
                  style: Theme.of(context).textTheme.headline5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(job[COMPANY],
                        style: Theme.of(context).textTheme.bodyText1),
                    Text(job[START_DATE] + '-' + job[END_DATE],
                        style: Theme.of(context).textTheme.bodyText1),
                    Text(job[LOCATION],
                        style: Theme.of(context).textTheme.bodyText1),
                  ],
                ),
                Text(job[DESCRIPTION]),
              ],
            ),
          ))
      .toList();
}

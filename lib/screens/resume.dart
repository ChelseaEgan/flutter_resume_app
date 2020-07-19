import 'package:flutter/material.dart';

class Resume extends StatelessWidget {
  static const jobDetails = [
    {
      'title': 'Software Engineer',
      'company': 'Gartner, Inc.',
      'startDate': '2019',
      'endDate': 'present',
      'location': 'Austin, TX',
      'description':
          'Software Engineer working on internal tools using PHP, JavaScript, React, MySQL.'
    },
    {
      'title': 'Full Stack Developer',
      'company': 'Vanguard',
      'startDate': '2018',
      'endDate': '2019',
      'location': 'Malvern, PA',
      'description':
          'Software Engineer on an Agile team creating tools for our clients using Java, JavaScript, Angular.'
    },
    {
      'title': 'Associate Project Manager',
      'company': 'Vanguard',
      'startDate': '2017',
      'endDate': '2018',
      'location': 'Malvern, PA',
      'description':
          'Created dashboards for the Internal Audit teams, which provided operational insight into the audit plan.'
    },
    {
      'title': 'Administrative Assistant',
      'company': 'Vanguard',
      'startDate': '2015',
      'endDate': '2017',
      'location': 'Malvern, PA',
      'description':
          'Handled logistics and planning, scheduled meetings, maintained the calendar of busy executives.'
    },
    {
      'title': 'University Relations Coordinator',
      'company': 'Vanguard',
      'startDate': '2014',
      'endDate': '2015',
      'location': 'Malvern, PA',
      'description':
          'Responsible for the logistics of five on-campus recruiting events, including catering, facilities set up, promotion, materials, and day-of coordination.'
    },
    {
      'title': 'Accounting Assistant',
      'company': 'Relevante',
      'startDate': '2013',
      'endDate': '2014',
      'location': 'Media, PA',
      'description':
          'Managed the adoption of People 2.0, a human resources front- and back-office tool. Oversaw each step, ensuring a smooth and timely transition.'
    },
    {
      'title': 'Financial Processor',
      'company': 'Vanguard',
      'startDate': '2012',
      'endDate': '2013',
      'location': 'Malvern, PA',
      'description':
          'Processed financial transactions, verified compliance with regulations, and assisted clients.'
    },
  ];

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
        Text('Chelsea Egan', style: Theme.of(context).textTheme.headline1),
        Text('eganch@oregonstate.edu'),
        Text('https://github.com/level5esper'),
      ]);

  Widget jobSection(BuildContext context) =>
      resumeSection(context, jobInfo(context));

  List<Widget> jobInfo(BuildContext context) => jobDetails
      .map((job) => Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  job['title'],
                  style: Theme.of(context).textTheme.headline5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(job['company'],
                        style: Theme.of(context).textTheme.bodyText1),
                    Text(job['startDate'] + '-' + job['endDate'],
                        style: Theme.of(context).textTheme.bodyText1),
                    Text(job['location'],
                        style: Theme.of(context).textTheme.bodyText1),
                  ],
                ),
                Text(job['description']),
              ],
            ),
          ))
      .toList();
}

import 'package:flutter/material.dart';

class ScholarshipScreen extends StatefulWidget {
  @override
  _ScholarshipScreen createState() => _ScholarshipScreen();
}

class _ScholarshipScreen extends State<ScholarshipScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index)=>
            EntryItem(data[index]),
        itemCount: data.length,
      ),
    );
  }
}

class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

final List<Entry> data = <Entry>[

  Entry(
      'How can students know about scholarship information? ',
      <Entry>[
        Entry("You can find it on the website of scholarship programs. The department will share the scholarship announcement that we are aware of with student on this website, Facebook group, and students’ mailing list. You can also contact the alumni who has gotten scholarships before.")
      ]
  ),
  Entry(
      'Are there any exchange programs and scholarships for students? If there exist, what are the requiremnet to apply for scholarships? How many places in average for each year? for which degree? ',
      <Entry>[
        Entry("Yes, there are always exchange programs and scholarships given to the students continuously every year. Each scholarship may have different requirements; however, the department usually facilitate the procedure to apply and provide all necessary documents as students need. Many scholarships from both English- and French-speaking countries are given to the students with the average of ten places for Engineering’sDegree and other ten for Master’s Degree. Generally the criteria are based on: • Academic performance • Language proficiency • Motivation • Recommendation from home institute • Social work volunteer experience.")
      ]
  ),
  Entry(
      'What are the countries where students go to study abroad?',
      <Entry>[
        Entry("Students can pursue their degrees in some countries of ASIA (Thailand, China, Vietnam, Japan, Indonesia, Malaysia, India, Korea) and Europe (France, Belgium, Canada, Russia) countries.")
      ]
  ),

];

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}

import 'package:flutter/material.dart';

class InternshipScreen extends StatefulWidget {
  @override
  _InternshipScreenState createState() => _InternshipScreenState();
}

class _InternshipScreenState extends State<InternshipScreen> {
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
    'How many internships are required in order to gruduate? In Which year (I3,I4,I5)',
    <Entry>[
      Entry(
     '  Students are required to do internship for two times. The first internship is after finishing year 4, and the second one is during the semester 2 of year 5.'
      ),
    ],
  ),
  Entry(
      'How can I receice the detail information about internship? ',
      <Entry>[
        Entry(""
            "Before the internship period, there is an internship orientation organized by the department for presenting about the instruction and guideline of the internship.")
      ]
  ),
  Entry(
      'When and How long for students to do internship?',
      <Entry>[
        Entry("For I4 internship, the period is at least 2 months (preferably 2 months and a half) during August-October. For I5 internship, it is at least 3 months during the whole second semester.")
      ]
  ),
  Entry(
      'What are the process for students need to do before, during and after their internship? ',
      <Entry>[
        Entry("Before internship, students select the field that they want to do internship then looking for the suitable company. Normally, the department provides a list of company that our former students used to do internship. Students can apply for the provided company or look for a new one. Each student is under supervision of a lecturer, called advisor, at the department. During the internship, students are required to meet their advisors at school to validate scope of project, report progress, and slide presentation. The follow-up timeline for each meeting is given by the department, to which the students must follow.")
      ]
  ),
  Entry(
      'How long for the defence presentation?',
      <Entry>[
        Entry("Each presentation of the I4 and I5 internships is 25mn. The time for presentation, demonstration, and Q&A session are 10mn, 5mn, and 10mn, respectively.")
      ]
  ),
  Entry(
      'What should students do if they cannot find the internship project / company? ',
      <Entry>[
        Entry("Students must contact department within a deadline. Department will then assign students to do internship at school. However, we encourage students to do an internship at a company as they can learn more and adapt to real working environment. Most importantly, students can learn to work in a team and improve communication skills.")
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

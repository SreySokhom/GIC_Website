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
    'Why should we choose to study in GIC ?',
    <Entry>[
      Entry(
          '''
        Many reasons students choose to study in GIC:
        • Lecturers, both Khmer and foreigner, are full of capability and 
         experience
        • The department has high connection with public and private partners 
         as well as local and international companies to provide convenient 
         process for our students to find internship positions and to get job 
         after graduation.
        • Our laboratories have modern computers and servers for our
         students to do real practice.
        • The department has many international partner universities to
         provide training and do research for our students.
        • Many scholarships positions are available for the students.
        • The department has laboratories, e-Learnings Center, library and
         many other equipment for the students to learn and research.
        '''
      ),
    ],
  ),
  Entry(
      'How well students find a job after their graduation?',
      <Entry>[
        Entry("Most of the students get the jobs immediately after graduation. Others start their own companies.")
      ]
  ),
  Entry(
      'Does the department provide the training during vocation?',
      <Entry>[
        Entry("Most of the students get the jobs immediately after graduation. Others start their own companies.")
      ]
  ),
  Entry(
      'Does the department allow students access to labs during free time?',
      <Entry>[
        Entry("Most of the students get the jobs immediately after graduation. Others start their own companies.")
      ]
  ),
  Entry(
      'What are the expected skills after graduation?',
      <Entry>[
        Entry("Most of the students get the jobs immediately after graduation. Others start their own companies.")
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

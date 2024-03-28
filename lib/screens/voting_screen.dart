import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class VotingScreen extends StatelessWidget {

  final List<String> candidates = [
    'Candidate 1',
    'Candidate 2',
    'Candidate 3',
    'Candidate 4',
    'Candidate 5',
    'Candidate 6',
    'Candidate 7',
    'Candidate 8',
    'Candidate 9',
    'Candidate 10',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cantidates'),
        actions: [
          IconButton(onPressed: (){ Navigator.pushNamed(context, '/results');}, icon: Icon(Icons.bar_chart),)
        ],
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
                title: Text(candidates[index]),
                trailing: ElevatedButton(
                  onPressed: () {
                    _voteForCandidate(context, candidates[index]);
                  },
                  child: Text('Vote'),
                ));
          },
          itemCount: candidates.length),
      
    );
  }

  
  void _voteForCandidate(BuildContext context, String candidateName) {
    // Implement your voting logic here
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Vote Confirmation'),
          content: Text('Are you sure you want to vote for $candidateName?'),
          actions: [
            TextButton(
              onPressed: () {
                // Perform vote action
                // For demonstration, just close the dialog
                Navigator.of(context).pop();
              },
              child: Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('No'),
            ),
          ],
        );
      },
    );
  }
}
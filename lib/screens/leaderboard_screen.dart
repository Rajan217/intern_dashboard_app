import 'package:flutter/material.dart';
import 'package:intern_dashboard_app/data/dummy_data.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Leaderboard'),
      ),
      body: ListView.builder(
        itemCount: leaderboardData.length,
        itemBuilder: (context, index) {
          final intern = leaderboardData[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            elevation: 1,
            child: ListTile(
              leading: CircleAvatar(
                // This line is now correct and will work
                backgroundColor: Colors.deepPurple.shade100,
                child: Text(
                  '${intern['rank']}',
                  style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold),
                ),
              ),
              title: Text(intern['name']),
              subtitle: const Text('Donations'),
              trailing: Text(
                '₹${intern['score']}',
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          );
        },
      ),
    );
  }
}
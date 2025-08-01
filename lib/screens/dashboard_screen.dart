import 'package:flutter/material.dart';
import 'package:intern_dashboard_app/data/dummy_data.dart';
import 'package:intern_dashboard_app/screens/announcements_screen.dart';
import 'package:intern_dashboard_app/screens/leaderboard_screen.dart';
import 'package:intern_dashboard_app/widgets/dashboard_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome, $internName!',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Referral Code: $referralCode',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.grey[700]),
            ),
            const SizedBox(height: 24),
            DashboardCard(
              title: 'Total Donations',
              value: '₹${totalDonations.toString()}',
              icon: Icons.currency_rupee,
            ),
            const SizedBox(height: 16),
            DashboardCard(
              title: 'Rewards Unlocked',
              value: '10 / 25',
              icon: Icons.emoji_events,
            ),
            const SizedBox(height: 24),
            Text(
              'Quick Actions',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LeaderboardScreen()));
                    },
                    icon: const Icon(Icons.leaderboard),
                    label: const Text('Leaderboard'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AnnouncementsScreen()));
                    },
                    icon: const Icon(Icons.announcement),
                    label: const Text('Announcements'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
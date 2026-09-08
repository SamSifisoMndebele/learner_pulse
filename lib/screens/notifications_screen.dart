import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      {
        'title': 'Application update',
        'message': 'CodeNova Labs has viewed your profile and is moving your application forward.',
        'time': '2h ago',
        'icon': Icons.work_history_outlined,
        'color': const Color(0xFF1E4662),
      },
      {
        'title': 'Interview invite',
        'message': 'You were shortlisted for a virtual interview with Insight Hub.',
        'time': 'Yesterday',
        'icon': Icons.calendar_today_outlined,
        'color': const Color(0xFFFD751D),
      },
      {
        'title': 'Saved opportunity',
        'message': 'A new Graduate Data Analyst role matches your profile and interests.',
        'time': '2 days ago',
        'icon': Icons.bookmark_border,
        'color': Colors.green,
      },
      {
        'title': 'Profile reminder',
        'message': 'Add your latest certificate to improve your match score.',
        'time': '3 days ago',
        'icon': Icons.flag_outlined,
        'color': Colors.purple,
      },
    ];

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Notifications',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Stay up-to-date with schools, employers and your saved opportunities.',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 18),
            Expanded(
              child: ListView.separated(
                itemCount: notifications.length,
                separatorBuilder: (_, _) => const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  final item = notifications[index];
                  return Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.02),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 46,
                          height: 46,
                          decoration: BoxDecoration(
                            color: (item['color'] as Color).withValues(alpha: 0.12),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            item['icon'] as IconData,
                            color: item['color'] as Color,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      item['title'] as String,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    item['time'] as String,
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 6),
                              Text(
                                item['message'] as String,
                                style: const TextStyle(color: Colors.grey, height: 1.4),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

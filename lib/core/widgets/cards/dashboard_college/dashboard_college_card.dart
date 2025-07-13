import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:techrar_project_team_dashboard/core/utils/theme/theme_controller.dart';
import 'package:techrar_project_team_dashboard/core/widgets/profile_circle.dart';

class DashboardCollegeCard extends ConsumerWidget {
  final String name;
  final String role;
  final String avatarUrl;
  final bool isOnline;

  const DashboardCollegeCard({
    super.key,
    required this.name,
    required this.role,
    required this.avatarUrl,
    required this.isOnline,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeControllerProvider);
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileCircle(avatarUrl: avatarUrl, isOnline: isOnline),
            const SizedBox(height: 10),
            Text(name, style: theme.currentOsTextTheme.titleMedium, textAlign: TextAlign.center),
            const SizedBox(height: 4),
            Text(
              role,
              style: theme.currentOsTextTheme.bodySmall?.copyWith(color: Colors.grey.shade600),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

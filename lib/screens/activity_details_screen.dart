import 'package:flutter/material.dart';
import '../widgets/summary_card.dart';
import '../utils/app_colors.dart';

class ActivityDetailsScreen extends StatelessWidget {
  const ActivityDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get workout title from navigation arguments
    final String workoutTitle = ModalRoute.of(context)?.settings.arguments as String? ?? 'Morning Run';

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Activity Details',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // Activity Title
            Text(
              workoutTitle,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 24),

            // Stats Cards
            const Text(
              'Today\'s Stats',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SummaryCard(
                  title: 'Distance',
                  value: '5.2',
                  unit: 'km',
                  icon: Icons.linear_scale,
                  iconColor: AppColors.primaryGreen,
                ),
                SummaryCard(
                  title: 'Calories',
                  value: '320',
                  unit: 'kcal',
                  icon: Icons.local_fire_department,
                  iconColor: const Color(0xFFFF5722),
                ),
                SummaryCard(
                  title: 'Duration',
                  value: '30',
                  unit: 'min',
                  icon: Icons.timer,
                  iconColor: const Color(0xFF2196F3),
                ),
              ],
            ),
            const SizedBox(height: 32),

            // Past Records Section
            const Text(
              'Past Records',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 16),

            // Record Cards
            _buildRecordCard(
              date: 'Yesterday',
              distance: '4.8 km',
              calories: '290 kcal',
              duration: '28 min',
              icon: Icons.calendar_today,
            ),
            const SizedBox(height: 12),
            _buildRecordCard(
              date: '2 days ago',
              distance: '5.1 km',
              calories: '310 kcal',
              duration: '32 min',
              icon: Icons.calendar_today,
            ),
            const SizedBox(height: 12),
            _buildRecordCard(
              date: '3 days ago',
              distance: '4.5 km',
              calories: '270 kcal',
              duration: '25 min',
              icon: Icons.calendar_today,
            ),
            const SizedBox(height: 100), // Space for bottom button
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              // Handle start again
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Workout started!'),
                  backgroundColor: AppColors.primaryGreen,
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryGreen,
              foregroundColor: AppColors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              'Start Again',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRecordCard({
    required String date,
    required String distance,
    required String calories,
    required String duration,
    required IconData icon,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.white,
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: AppColors.lightGrey,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: AppColors.textSecondary,
                size: 24,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    date,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '$distance • $calories • $duration',
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: AppColors.textSecondary,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
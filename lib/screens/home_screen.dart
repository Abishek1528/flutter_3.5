import 'package:flutter/material.dart';
import '../widgets/summary_card.dart';
import '../widgets/workout_card.dart';
import '../utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _navigateToActivityDetails(String workoutTitle) {
    Navigator.pushNamed(context, '/activity', arguments: workoutTitle);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'FlexiFit',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              // Handle profile
            },
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // Summary Cards Section
            const Text(
              'Today\'s Summary',
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
                  title: 'Steps',
                  value: '8,432',
                  unit: 'steps',
                  icon: Icons.directions_walk,
                  iconColor: AppColors.primaryGreen,
                ),
                SummaryCard(
                  title: 'Calories',
                  value: '420',
                  unit: 'kcal',
                  icon: Icons.local_fire_department,
                  iconColor: const Color(0xFFFF5722),
                ),
                SummaryCard(
                  title: 'Time',
                  value: '45',
                  unit: 'min',
                  icon: Icons.timer,
                  iconColor: const Color(0xFF2196F3),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Action Buttons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Handle start workout
                    },
                    icon: const Icon(Icons.fitness_center),
                    label: const Text('Start Workout'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryGreen,
                      foregroundColor: AppColors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {
                      // Handle track steps
                    },
                    icon: const Icon(Icons.track_changes),
                    label: const Text('Track Steps'),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: AppColors.primaryGreen),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),

            // Your Workouts Section
            const Text(
              'Your Workouts',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 16),

            // Workout List
            WorkoutCard(
              title: 'Morning Run',
              duration: '30 min',
              calories: '320',
              icon: Icons.directions_run,
              iconColor: AppColors.primaryGreen,
              onTap: () => _navigateToActivityDetails('Morning Run'),
            ),
            const SizedBox(height: 12),
            WorkoutCard(
              title: 'HIIT Cardio',
              duration: '25 min',
              calories: '280',
              icon: Icons.favorite,
              iconColor: const Color(0xFFFF5722),
              onTap: () => _navigateToActivityDetails('HIIT Cardio'),
            ),
            const SizedBox(height: 12),
            WorkoutCard(
              title: 'Strength Training',
              duration: '45 min',
              calories: '180',
              icon: Icons.fitness_center,
              iconColor: const Color(0xFF9C27B0),
              onTap: () => _navigateToActivityDetails('Strength Training'),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: AppColors.primaryGreen,
        unselectedItemColor: AppColors.textSecondary,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
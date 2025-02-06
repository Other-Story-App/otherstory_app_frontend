import 'package:flutter/material.dart';
import 'package:otherstory_app/ui/widgets/base_container.dart';
import 'widgets/settings_toggle_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text('Профиль', style: theme.textTheme.headlineSmall),
              snap: true,
              floating: true,
              surfaceTintColor: Colors.transparent,
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(
              child: SettingsToggleCard(
                title: 'Темная тема',
                value: true,
                onChanged: (value) {},
              ),
            ),
            SliverToBoxAdapter(
              child: SettingsToggleCard(
                title: 'Уведомления',
                value: true,
                onChanged: (value) {},
              ),
            ),
            SliverToBoxAdapter(
              child: SettingsToggleCard(
                title: 'Разрешить аналитику',
                value: true,
                onChanged: (value) {},
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(
              child: SettingsActionCard(
                  title: 'Поддержка',
                  onTap: () {},
                  iconData: Icons.message_outlined),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsActionCard extends StatelessWidget {
  const SettingsActionCard({
    super.key,
    required this.title,
    required this.onTap,
    required this.iconData,
    this.iconColor,
  });

  final String title;
  final VoidCallback? onTap;
  final IconData iconData;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8).copyWith(bottom: 8),
        child: BaseContainer(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: theme.textTheme.titleMedium?.copyWith(fontSize: 17),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(
                    iconData,
                    color: iconColor ?? theme.hintColor.withOpacity(0.3),
                    size: 30,
                  ),
                )
              ],
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/app_locale_controller.dart';
import 'package:portfolio/constants/app_icon.dart';
import 'package:portfolio/extensions.dart';
import 'package:portfolio/widgets/seo_text.dart';

class LanguageSwitch extends ConsumerWidget {
  const LanguageSwitch({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final locale = ref.watch(appLocaleControllerProvider);

    return PopupMenuButton(
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            value: 0,
            child: PopupLanguageSwitchItem(
              language: "English",
              icon: AppIcon.us,
            ),
          ),
          PopupMenuItem(
            value: 1,
            child: PopupLanguageSwitchItem(language: "فارسی", icon: AppIcon.ir),
          ),
        ];
      },
      initialValue: locale.value == "en" ? 0 : 1,
      onSelected: (value) => {
        if (value == 0)
          {ref.read(appLocaleControllerProvider.notifier).changeLocale("en")}
        else
          {ref.read(appLocaleControllerProvider.notifier).changeLocale("fa")},
      },
      child: Row(
        children: [
          Icon(Icons.language, color: context.colorSchema.onBackground),
          const Gap(4),
          SEOText(locale.value == "en" ? "EN" : "FA"),
        ],
      ),
    );
  }
}

class PopupLanguageSwitchItem extends StatelessWidget {
  const PopupLanguageSwitchItem({
    super.key,
    required this.language,
    required this.icon,
  });

  final String language;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          width: 18,
          height: 18,
          // colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
        ),
        const Gap(8),
        SEOText(language),
      ],
    );
  }
}

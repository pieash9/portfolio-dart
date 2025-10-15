import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/shared/app_shared_pref.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'app_locale_controller.g.dart';

@riverpod
class AppLocaleController extends _$AppLocaleController {
  @override
  FutureOr<String> build() async {
    final locale = await AppSharedPref.getAppLocale();
    return locale ?? 'en';
  }

  void changeLocale(String newLocale) async {
    await AppSharedPref.setAppLocale(newLocale);
    update((state) => newLocale);
  }
}

abstract class AppInsets {
  double get padding;
}

class largeInsets extends AppInsets {
  @override
  double get padding => 80;
}

class SmallInsets extends AppInsets {
  @override
  double get padding => 16;
}

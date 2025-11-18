
sealed class AppFont {
  static AppFont get font => EnglishFont();

  String get regular => throw UnimplementedError();

  String get medium => throw UnimplementedError();

  String get samiBold => throw UnimplementedError();

  String get bold => throw UnimplementedError();
}

class EnglishFont extends AppFont {
  @override
  String get regular => RobotoFonts.regular.name;

  @override
  String get medium => RobotoFonts.medium.name;

  @override
  String get samiBold => RobotoFonts.samiBold.name;

  @override
  String get bold => RobotoFonts.bold.name;
}

enum RobotoFonts{
  regular("RobotoRegular"),
  medium("RobotoMedium"),
  samiBold("RobotoSemiBold"),
  bold("RobotoBold");

  final String _name;

  const RobotoFonts(this._name);

  String get name => _name;
}
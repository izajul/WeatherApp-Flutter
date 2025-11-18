enum AppRoutes {
  splash("splash"),
  home("splash");

  final String _name;

  const AppRoutes(this._name);

  String get name => _name;

  String get path => "/$_name";
}

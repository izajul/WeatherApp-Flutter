import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppEnv {
  final _env = dotenv.env;

  String get baseUrl => _env['BASE_URL'] ?? "";

  String get apiKey => _env['SECRET_KEY'] ?? "";
}

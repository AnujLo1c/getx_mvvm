part of 'r.dart';
class _ResAssets {

  String get google => _png('splash');

}
String _png(String fileName) {
  return 'assets/png/$fileName.png';
}
String _svg(String fileName) {
  return 'assets/svg/$fileName.svg';
}
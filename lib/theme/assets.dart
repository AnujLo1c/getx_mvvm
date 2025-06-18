part of 'r.dart';
class _ResAssets {

  String get google => _png('Google');
  String get apple=> _png('apple');
  String get facebook => _png('Facebook');
  String get logo => _png('logo');
  String get flag => _png('Flag');
  String get scan=> _png('scan');
  String get search => _png('Search');
  String get menu => _png('menu');
  String get  nextArrow=> _png('next_arrow');
  String get intro1=> _svg('new');
  String get intro2=> _svg('shopping');
  String get intro3=> _svg('pana');
  String get poster=> _png('poster');


}
String _png(String fileName) {
  return 'assets/png/$fileName.png';
}
String _svg(String fileName) {
  return 'assets/svg/$fileName.svg';
}
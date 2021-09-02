import 'package:cleanarch/assets.dart';
import 'package:cleanarch/externals.dart';
import 'package:cleanarch/locales.dart';
import 'package:test/test.dart';

void main() {

  const en_US = Locale('en', 'US');
  const pt_BR = Locale('pt', 'BR');

  IAssets _assets = AssetsDart();

  test('Check string internationalization in pt-BR', () async {
    IIntl intlPtBr = IntlFromAssets(_assets, pt_BR);
    expect(intlPtBr['helloWorld'], 'Olá, mundo!');
  });

  test('Check string internationalization in en-US', () async {
    IIntl intlEnUs = IntlFromAssets(_assets, en_US);
    expect(intlEnUs['helloWorld'], 'Hello, world!');
  });
}

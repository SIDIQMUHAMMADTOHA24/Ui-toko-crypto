import 'package:toko_cripto/spesific_pages/settings_spesific_pages.dart';
import 'package:toko_cripto/spesific_pages/trade_spesific_pages.dart';

import '../spesific_pages/balance_spesific_pages.dart';
import '../spesific_pages/home_spesific_pages.dart';

class ListOfPages {
  List pages = [
    HomeSpesificPages(),
    BalanceSpesificPages(),
    TradeSpesificPages(),
    SettingsSpesificPages()
  ];
}

import 'dart:math';

import 'package:fl_chart/fl_chart.dart';

class DataChart {
  List<FlSpot> spots = [];
  ontap() {
    for (var i = 0; i < 15; i++) {
      spots.add(FlSpot(i.toDouble(), Random().nextInt(10).toDouble()));
    }
  }
}

class DataBitcoin {
  Map<String, List<String>> data = {
    'image': [
      'asset/image/bitcoin-btc-logo.png',
      'asset/image/ethereum-eth-logo.png',
      'asset/image/shiba-inu-shib-logo.png',
      'asset/image/solana-sol-logo.png',
      'asset/image/xrp-xrp-logo.png',
    ],
    'nameCrypto': ['Bitcoin', 'Ethereum', 'Shiba', 'Solana', 'Xrp'],
    'initialCrypto': ['BTC', 'ETH', 'SHIB', 'SOL', 'XRP'],
    'price': ['\$28901', '\$1896', '\$5636', '\$19821', '\$23718'],
    'returnPrice': ['+0.60', '+2.00', '-1.00', '+2.50', '+5.00']
  };
}

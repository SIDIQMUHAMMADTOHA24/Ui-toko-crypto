import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:toko_cripto/list/list_data_cart.dart';

class ListCrypto extends StatelessWidget {
  ListCrypto({
    super.key,
  });

  DataChart dataChart = DataChart();
  DataBitcoin dataBitcoin = DataBitcoin();

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount: dataBitcoin.data.length, (context, index) {
      var data = dataBitcoin.data;
      return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Image.asset(
              data['image']![index],
              width: 45,
            ),
            SizedBox(
              width: 13,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 80,
                  child: Text(
                    data['nameCrypto']![index],
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  data['initialCrypto']![index],
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              height: 40,
              width: 60,
              child: LineChart(LineChartData(
                  titlesData: FlTitlesData(show: false),
                  lineTouchData: LineTouchData(
                    enabled: false,
                  ),
                  minX: 0,
                  maxX: 11,
                  minY: 0,
                  maxY: 6,
                  borderData: FlBorderData(show: false),
                  //!untuk menampilkan garis horizontal dan vertikal didalam kotak
                  gridData: FlGridData(
                    show: false,
                    getDrawingHorizontalLine: (value) {
                      return FlLine();
                    },
                  ),
                  lineBarsData: [
                    LineChartBarData(dotData: FlDotData(show: false), spots: [
                      FlSpot(
                        0,
                        1,
                      ),
                      FlSpot(
                        1,
                        Random().nextInt(5).toDouble(),
                      ),
                      FlSpot(
                        2,
                        Random().nextInt(5).toDouble(),
                      ),
                      FlSpot(
                        3,
                        Random().nextInt(5).toDouble(),
                      ),
                      FlSpot(
                        4,
                        Random().nextInt(5).toDouble(),
                      ),
                      FlSpot(
                        5,
                        Random().nextInt(5).toDouble(),
                      ),
                      FlSpot(
                        6,
                        Random().nextInt(4).toDouble(),
                      ),
                      FlSpot(
                        7,
                        Random().nextInt(5).toDouble(),
                      ),
                      FlSpot(
                        8,
                        Random().nextInt(6).toDouble(),
                      ),
                      FlSpot(
                        9,
                        Random().nextInt(7).toDouble(),
                      ),
                      FlSpot(
                        10,
                        Random().nextInt(8).toDouble(),
                      ),
                      FlSpot(
                        11,
                        Random().nextInt(5).toDouble(),
                      ),
                      FlSpot(
                        12,
                        Random().nextInt(5).toDouble(),
                      ),
                      FlSpot(
                        13,
                        Random().nextInt(5).toDouble(),
                      ),
                      FlSpot(
                        14,
                        Random().nextInt(5).toDouble(),
                      ),
                      FlSpot(
                        15,
                        Random().nextInt(5).toDouble(),
                      )
                    ])
                  ])),
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  data['price']![index],
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
                Text(
                  data['returnPrice']![index],
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.green),
                ),
              ],
            )
          ],
        ),
      );
    }));
  }
}

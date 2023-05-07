import 'package:flutter/material.dart';

import '../utils/crypto.dart';
import '../utils/menu_utils.dart';

class HomeSpesificPages extends StatelessWidget {
  const HomeSpesificPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(right: 25, left: 25),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
          const SliverToBoxAdapter(
            child: InfoMenuUtils(),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(
              height: 30,
            ),
            Row(children: const [
              Text(
                'Watchlist',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
              ),
              Spacer(),
              Text(
                'Edit',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.blue),
              )
            ]),
          ])),
          ListCrypto()
        ],
      ),
    ));
  }
}
/* 
  const InfoMenuUtils(),
            const SizedBox(
              height: 15,
            ),
            Row(children: const [
              Text(
                'Watchlist',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
              Spacer(),
              Text(
                'Edit',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.blue),
              )
            ]),
            ListCrypto()
 */

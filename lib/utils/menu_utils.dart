import 'package:flutter/material.dart';

class InfoMenuUtils extends StatelessWidget {
  const InfoMenuUtils({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(35)),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.white70),
                    borderRadius: BorderRadius.circular(50)),
                child: Center(
                    child: Row(
                  children: const [
                    Text(
                      'Main Wallet',
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Colors.white,
                    )
                  ],
                )),
              ),
              const Spacer(),
              Image.asset(
                'asset/image/bell.png',
                color: Colors.white,
                width: 20,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Your Balance',
          style: TextStyle(color: Colors.grey[300], fontSize: 14),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          '\$.1.000.000',
          style: TextStyle(
              color: Colors.white, fontSize: 27, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28), color: Colors.white),
          child: Row(children: [
            const Spacer(),
            Column(
              children: const [
                Icon(
                  Icons.arrow_circle_up_outlined,
                  color: Colors.blue,
                ),
                Text('Send')
              ],
            ),
            const Spacer(),
            Column(
              children: const [
                Icon(
                  Icons.arrow_circle_down,
                  color: Colors.blue,
                ),
                Text('Receive')
              ],
            ),
            const Spacer(),
            Column(
              children: const [
                Icon(
                  Icons.swap_calls,
                  color: Colors.blue,
                ),
                Text('Swap')
              ],
            ),
            const Spacer(),
            Column(
              children: const [
                Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.blue,
                ),
                Text(
                  'Buy',
                  style: TextStyle(),
                )
              ],
            ),
            const Spacer(),
          ]),
        )
      ]),
    );
  }
}

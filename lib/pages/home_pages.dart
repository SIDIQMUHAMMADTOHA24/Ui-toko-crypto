import 'package:flutter/material.dart';

import '../list/list_pages.dart';

class HomePages extends StatefulWidget {
  HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  //! for swicth pages
  int counter = 0;
  selectPages(value) {
    counter = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListOfPages().pages[counter],
        bottomNavigationBar: SizedBox(
          height: 70,
          child: Row(
            children: [
              const Spacer(),
              GestureDetector(
                onTap: () => selectPages(0),
                child: Column(
                  children: [
                    counter == 0
                        ? Image.asset('asset/image/home.png',
                            color: Colors.blue, width: 20)
                        : Image.asset('asset/image/home_outline.png',
                            color: Colors.grey, width: 20),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                          fontSize: 14,
                          color: counter == 0 ? Colors.blue : Colors.grey,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => selectPages(1),
                child: Column(
                  children: [
                    counter == 1
                        ? Image.asset('asset/image/wallet.png',
                            color: Colors.blue, width: 20)
                        : Image.asset('asset/image/wallet_outline.png',
                            color: Colors.grey, width: 20),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Balance',
                      style: TextStyle(
                          fontSize: 14,
                          color: counter == 1 ? Colors.blue : Colors.grey,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => selectPages(2),
                child: Column(
                  children: [
                    counter == 2
                        ? Image.asset('asset/image/stats.png',
                            color: Colors.blue, width: 20)
                        : Image.asset('asset/image/stats_outline.png',
                            color: Colors.grey, width: 20),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Trade',
                      style: TextStyle(
                          fontSize: 14,
                          color: counter == 2 ? Colors.blue : Colors.grey,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => selectPages(3),
                child: Column(
                  children: [
                    counter == 3
                        ? Image.asset(
                            'asset/image/settings.png',
                            color: Colors.blue,
                            width: 20,
                          )
                        : Image.asset(
                            'asset/image/settings.png',
                            color: Colors.grey,
                            width: 20,
                          ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Settings',
                      style: TextStyle(
                          fontSize: 14,
                          color: counter == 3 ? Colors.blue : Colors.grey,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

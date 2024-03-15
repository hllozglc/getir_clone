import 'package:flutter/material.dart';
import 'package:getirclone/constants/colors.dart';

AppBar mainAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: MyColor.primaryColor,
      title: Image.asset('assets/images/im_getir.png'),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: Container(
          color: MyColor.brandYellow,
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30), bottomRight: Radius.circular(30)),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/ic_home.png', scale: 0.9),
                      const VerticalDivider(),
                      const Expanded(
                        child: Text(
                          'Değirmenönü mahallesi Denizli/merkez',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                      const Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    const Text('TVS', style: TextStyle(color: MyColor.primaryColor, fontWeight: FontWeight.bold)),
                    RichText(
                      text: const TextSpan(
                        text: '13',
                        style: TextStyle(color: MyColor.primaryColor, fontSize: 21, fontWeight: FontWeight.w600),
                        children: [
                          TextSpan(text: 'dk', style: TextStyle(color: MyColor.primaryColor, fontSize: 14)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
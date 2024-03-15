import 'package:flutter/material.dart';
import 'package:getirclone/constants/colors.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Profil', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        backgroundColor: MyColor.primaryColor,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 2, offset: Offset(1, 4), spreadRadius: 1),
                              ],
                            ),
                            child: const Icon(Icons.person, color: MyColor.primaryColor, size: 65),
                          ),
                          const SizedBox(width: 20),
                          const Text('Halil Özgüleç', style: TextStyle(fontWeight: FontWeight.w500)),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const Divider(),
                      const ListTile(
                        title: Text('hllozglc@hotmail.com', style: TextStyle(color: Colors.grey, fontSize: 14)),
                        leading: Icon(Icons.mail, color: MyColor.primaryColor),
                        trailing: Icon(Icons.check_circle, color: Colors.green, size: 25),
                      ),
                      const Divider(),
                      const ListTile(
                        title: Text('+90 (123) 113-0002 ', style: TextStyle(fontSize: 14)),
                        leading: Icon(Icons.phone, color: MyColor.primaryColor),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: -4,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 2, offset: Offset(1, 4), spreadRadius: 1),
                      ],
                    ),
                    child: const Icon(
                      Icons.edit,
                      color: MyColor.primaryColor,
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              color: Colors.white,
              child: Column(
                children: [
                  _rowItem(title: 'Adreslerim', icon: Icons.location_pin),
                  _rowItem(title: 'Favori Ürünlerim', icon: Icons.favorite),
                  _rowItem(title: 'Geçmiş Siparişlerim', icon: Icons.shopping_basket),
                  _rowItem(title: 'Ödeme Yöntemlerim', icon: Icons.credit_card),
                  _rowItem(title: 'Fatura Bilgilerim', icon: Icons.file_copy),
                  _rowItem(title: 'İletişim Tercihleri', icon: Icons.notifications),
                  _rowItem(title: 'Hesap Ayarları', icon: Icons.lock),
                  _rowItem(title: 'Canlı Destek', icon: Icons.question_answer),
                  _rowItem(title: 'Yardım', icon: Icons.help),
                  _rowItem(title: 'Çıkış Yap', icon: Icons.logout_rounded),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 0, 10),
              child: Text('Dil - Language',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              color: Colors.white,
              child: const ListTile(
                horizontalTitleGap: 1,
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
                title: Text('Türkçe'),
                trailing: Icon(Icons.keyboard_arrow_right_rounded, color: MyColor.primaryColor),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              color: Colors.white,
              child: const ListTile(
                horizontalTitleGap: 1,
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
                title: Text('Versiyon'),
                trailing: Text('2.17.32',style: TextStyle(color: Colors.grey),)
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _rowItem({String? title, IconData? icon}) {
    return Column(
      children: [
        ListTile(
          horizontalTitleGap: 1,
          contentPadding: EdgeInsets.symmetric(horizontal: 12),
          title: Text(title ?? ""),
          leading: Icon(icon, color: MyColor.primaryColor),
          trailing: const Icon(Icons.keyboard_arrow_right_rounded, color: MyColor.primaryColor),
        ),
        const Divider(
          indent: 16,
          endIndent: 16,
          height: 0,
        )
      ],
    );
  }
}

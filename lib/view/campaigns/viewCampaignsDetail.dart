import 'package:flutter/material.dart';
import 'package:getirclone/constants/colors.dart';

class CampaignsDetail extends StatefulWidget {
  const CampaignsDetail({super.key});

  @override
  State<CampaignsDetail> createState() => _CampaignsDetailState();
}

class _CampaignsDetailState extends State<CampaignsDetail> {
  double dynamicHeight(value) => MediaQuery.of(context).size.height * value;
  double dynamicWidth(value) => MediaQuery.of(context).size.width * value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: MyColor.primaryColor,
        centerTitle: true,
        title: const Text('Kampanya Detay'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: ClipRRect(borderRadius: BorderRadius.circular(12), child: Image.asset('assets/images/im_board_getir.png')),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(16, 4, 16, 0),
                    child: Text('Kampanyadan faydalanmak için sepetine seçili ürünlerden eklemelisin.'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Koşulları incele',
                            style: TextStyle(color: MyColor.primaryColor, fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          color: MyColor.primaryColor,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 32, 16, 12),
              child: Text(
                'İndirim Detayları',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              child: const Text(
                """• Seçili ürünlerde %40'a varan indirimler!
• Kampanyadan faydalanmak için minimum sepet tutarını geçmen, seçili ürünlerden sepetine eklemen gerekmekte olup "Sipariş Ver" aşamasında bu kampanyayı seçmene gerek yoktur.
• İndirim miktarı ödeme ekranında sepetinden otomatik olarak düşecektir.
• Kampanya stoklarla sınırlıdır.
• Bu kampanya sana ve bulunduğun yere özeldir.
• Getir, kampanya koşullarında değişiklik yapma hakkını saklı tutar.
        """,
              ),
            )
          ],
        ),
      ),
    );
  }
}

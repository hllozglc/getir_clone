import 'package:flutter/material.dart';
import 'package:getirclone/constants/colors.dart';
import 'package:getirclone/data/product_data.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  double dynamicHeight(value) => MediaQuery.of(context).size.height * value;
  double dynamicWidth(value) => MediaQuery.of(context).size.width * value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        backgroundColor: MyColor.primaryColor,
        title: const Text('Arama'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: TextFormField(
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 18),
              hintText: 'Ürün Ara',
              suffixIcon: Icon(Icons.mic, color: Colors.grey, size: 25),
              prefixIcon: Icon(Icons.search, color: MyColor.primaryColor, size: 30),
              border: InputBorder.none,
              fillColor: Colors.white,
              filled: true,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 28, 0, 16),
              child: Text('Popüler Aramalar', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
            ),
            Container(
              height: 60,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey, blurRadius: 2, offset: Offset(0, 1)),
                ],
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _popularSearch(text: 'su'),
                  _popularSearch(text: 'süt'),
                  _popularSearch(text: 'çikolata'),
                  _popularSearch(text: 'yoğurt'),
                  _popularSearch(text: 'ekmek'),
                  _popularSearch(text: 'cips'),
                  _popularSearch(text: 'manav'),
                  _popularSearch(text: 'kahvaltı'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 32, 0, 16),
              child: Text('Sık Aldıklarım', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
              height: dynamicHeight(0.56),
              color: Colors.white,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: favProduct.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisExtent: 260),
                itemBuilder: (context, index) {
                  var item = favProduct[index];
                  return Container(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade200, width: 2), borderRadius: BorderRadius.circular(12)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(item.image),
                              ),
                            ),
                            Card(
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.white,
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: MyColor.primaryColor,
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text('₺${item.fiyat}'.toString(), style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: MyColor.primaryColor)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 4, 0, 8),
                          child: Text(item.name, maxLines: 2, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(item.miktar, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey)),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _popularSearch({String? text}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade300), borderRadius: BorderRadius.circular(8)),
      child: Center(child: Text(text ?? "", style: const TextStyle(fontWeight: FontWeight.w600, color: MyColor.primaryColor, fontSize: 16))),
    );
  }
}

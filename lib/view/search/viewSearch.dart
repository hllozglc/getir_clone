import 'package:flutter/material.dart';
import 'package:getirclone/constants/colors.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
      body: Column(
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
        ],
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

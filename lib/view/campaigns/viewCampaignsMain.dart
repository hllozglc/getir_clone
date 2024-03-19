import 'package:flutter/material.dart';
import 'package:getirclone/components/main_appbar.dart';
import 'package:getirclone/constants/colors.dart';
import 'package:getirclone/view/campaigns/viewAnnouncement.dart';
import 'package:getirclone/view/campaigns/viewCampaigns.dart';

class CampaignsMain extends StatefulWidget {
  const CampaignsMain({super.key});

  @override
  State<CampaignsMain> createState() => _CampaignsMainState();
}

class _CampaignsMainState extends State<CampaignsMain> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Image.asset('assets/images/im_getir.png'),
        backgroundColor: MyColor.primaryColor,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  elevation: 0,
                  textColor: page == 0 ? MyColor.primaryColor : Colors.black,
                  color: page == 0 ? Colors.grey.shade200 : Colors.white,
                  onPressed: () {
                    page = 0;
                    setState(() {});
                  },
                  child: const Text('Kampanyalar', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  elevation: 0,
                  textColor: page == 1 ? MyColor.primaryColor : Colors.black,
                  color: page == 1 ? Colors.grey.shade200 : Colors.white,
                  onPressed: () {
                    page = 1;
                    setState(() {});
                  },
                  child: const Text('Duyurular', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
                )
              ],
            ),
          ),
        ),
      ),
      body: page == 0 ? Campaigns() : Announcement(),
    );
  }
}

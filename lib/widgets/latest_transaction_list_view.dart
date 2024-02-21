import 'package:flutter/material.dart';
import 'package:responsive_ui/models/user_info_model.dart';
import 'package:responsive_ui/utils/app_images.dart';
import 'package:responsive_ui/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      //bst5dm l 7al dah lama yb2a 3ndy 3dd items ma7dood m3molo scroll
      child: Row(
        children: items.map((e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e))).toList(),
      ),
    );
    
    
    // SizedBox(
    //   height: 80, // l kema de btt7sb 3ala 7asb l heghit bta3 l 7agat ally gowa lisTile bgm3oo
    //   //al 7al dah mogbar ast5dmoo lama ast5dm listView horizontal 3shan lazem a7ddlha hight 
    //   child: 
    //   ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: items.length,
    //       itemBuilder: (context, index) {
    //         return IntrinsicWidth(
    //           child: UserInfoListTile(
    //             userInfoModel: items[index],
    //           ),
    //         );
    //       }),
    // );
  }
}

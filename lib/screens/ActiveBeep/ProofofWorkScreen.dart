import 'package:beep_me/constants/app_constants.dart';
import 'package:beep_me/constants/color_constants.dart';
import 'package:beep_me/constants/string_constants.dart';
import 'package:beep_me/screens/ActiveBeep/ProofScreen.dart';
import 'package:beep_me/ui_utils/image_files.dart';
import 'package:beep_me/ui_utils/image_utils.dart';
import 'package:beep_me/ui_utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ProofOfWork extends StatefulWidget {
  const ProofOfWork({super.key});

  @override
  State<ProofOfWork> createState() => _ProofOfWorkState();
}

class _ProofOfWorkState extends State<ProofOfWork> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: ColorConstants.whiteColor,
        appBar: AppBar(
          backgroundColor: ColorConstants.primaryDarkColor,
          centerTitle: true,
          leading: ImageUtils.buildImage(ImageFiles.edtProfBackArrow, 24, 24),
          title: TextUtils.getText(
              "Inbox", 18, AppConstants.robotoBoldFont, Colors.white),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                getTileContainer(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Divider(
                    height: 1,
                  ),
                ),
                getTileContainer(),
              ],
            ),
          ),
        ));
  }

  Widget getTileContainer() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      width: MediaQuery.of(context).size.width,
      height: 68,
      child: GestureDetector(
        onTap: () {
          Get.to(ProofScreen());
        },
        child: ListTile(
            leading: Stack(
              children: [
                ImageUtils.buildImage(ImageFiles.srchProfAvatarImg, 50, 50),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: ImageUtils.buildImage(
                        ImageFiles.srchProfAvatarImg, 21, 14)),
              ],
            ),
            title: TextUtils.getText(
                StringConstants.strJohnDoe, 14, AppConstants.robotoBoldFont),
            trailing: Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Text(
                "11:32 AM",
                style: TextStyle(fontSize: 8),
              ),
            )),
      ),
    );
  }
}

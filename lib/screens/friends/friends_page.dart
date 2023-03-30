import 'package:flutter/material.dart';

import '../../common_methods/add_expense_button.dart';
import '../../common_methods/elevated_button_onboard.dart';
import '../../common_methods/theme_data.dart';
import '../../routes/navigator_service.dart';
import '../../routes/routes.dart';
import '../../utils/assets.dart';
import '../../utils/colors.dart';
import '../../utils/common_strings.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({Key? key}) : super(key: key);

  void popScreen() {
    NavigationService().goBack();
  }

  void navigateToScreen(String screen) {
    NavigationService().navigateToScreen(screen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors.whiteColor,
      appBar: AppBar(
        backgroundColor: CommonColors.whiteColor,
        actions: [
          IconButton(
            onPressed: () => navigateToScreen(Routes.addFriend),
            icon: const Icon(
              Icons.person_add_alt,
              color: CommonColors.blackColor,
            ),
          ),
        ],
        elevation: 1,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    CommonStrings.welcomeGroup,
                    style: themeData.textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: CommonColors.blackColor,
                    ),
                  ),
                ),
                const Image(
                  image: AssetImage(AssetString.groupAsset),
                ),
                Column(
                  children: [
                    Text(
                      CommonStrings.friendNotification,
                      style: themeData.textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: CommonColors.blackColor,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      CommonStrings.matesWillShow,
                      style: themeData.textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: CommonColors.blackColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButtonOnBoard(
                  icon: const Icon(
                    Icons.person_add,
                    color: CommonColors.tealColor,
                  ),
                  buttonName: CommonStrings.addMoreFriends,
                  onPress: () => navigateToScreen(Routes.addFriend),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButtonOnBoard(
                  icon: const Icon(
                    Icons.info_rounded,
                    color: CommonColors.tealColor,
                  ),
                  buttonName: CommonStrings.showFriendInfo,
                  onPress: () => navigateToScreen(Routes.friendInfo),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.bottomRight,
            child: BottomButton(),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

import '../Utils/colors.dart';
import '../Utils/common_strings.dart';
import 'theme_data.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 5, 20),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          width: 150,
          height: 40,
          decoration: BoxDecoration(
            color: CommonColors.tealColor,
            border: Border.all(
              color: CommonColors.buttonBorderColor,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                flex: 4,
                child: Icon(
                  Icons.event_note,
                  color: CommonColors.whiteColor,
                ),
              ),
              Expanded(
                flex: 10,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                  child: Text(
                    CommonStrings.addExpense,
                    style: themeData.textTheme.bodySmall!.copyWith(
                      color: CommonColors.whiteColor,
                    ),
                  ),
                ),
              ),
              const Expanded(
                flex: 1,
                child: SizedBox(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

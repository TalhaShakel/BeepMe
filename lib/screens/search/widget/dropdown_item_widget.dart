import 'package:beep_me/constants/app_constants.dart';
import 'package:beep_me/constants/color_constants.dart';
import 'package:beep_me/constants/string_constants.dart';
import 'package:beep_me/screens/facebook_login/widgets/input_util.dart';
import 'package:beep_me/screens/home/widgets/round_buttons.dart';
import 'package:beep_me/ui_utils/image_files.dart';
import 'package:beep_me/ui_utils/image_utils.dart';
import 'package:beep_me/ui_utils/text_utils.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';


class DropDownItemsWidget extends StatefulWidget {
  const DropDownItemsWidget({Key? key}) : super(key: key);

  @override
  DropDownItemsWidgetState createState() => DropDownItemsWidgetState();
}

class DropDownItemsWidgetState extends State<DropDownItemsWidget> {


  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  List<String> selectedItems = [];

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
    return  Scaffold(
      body: Center(
        child: DropdownButtonHideUnderline(

          child: DropdownButton2(

            icon: const Icon(
              Icons.arrow_forward_ios_rounded, color: Colors.black, size: 16,
            ),
            isExpanded: true,
            hint: Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Select Items',
                style: TextStyle(
                  fontFamily: AppConstants.poppinsRegularFont,
                  fontSize: 14,
                  color: Theme.of(context).hintColor,
                ),
              ),
            ),
            items: items.map((item) {
              return DropdownMenuItem<String>(
                value: item,
                //disable default onTap to avoid closing menu when selecting an item
                enabled: false,
                child: StatefulBuilder(
                  builder: (context, menuSetState) {
                    final _isSelected = selectedItems.contains(item);
                    return InkWell(
                      onTap: () {
                        _isSelected
                            ? selectedItems.remove(item)
                            : selectedItems.add(item);
                        //This rebuilds the StatefulWidget to update the button's text
                        setState(() {});
                        //This rebuilds the dropdownMenu Widget to update the check mark
                        menuSetState(() {});
                      },
                      child: Container(
                        height: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: [
                            _isSelected
                                ? const Icon(Icons.check_box_outlined)
                                : const Icon(Icons.check_box_outline_blank),
                            const SizedBox(width: 16),
                            Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            }).toList(),
            //Use last selected item as the current value so if we've limited menu height, it scroll to last item.
            value: selectedItems.isEmpty ? null : selectedItems.last,
            onChanged: (value) {},
            buttonHeight: 40,
            buttonWidth: 140,
            itemHeight: 40,
            itemPadding: EdgeInsets.zero,
            selectedItemBuilder: (context) {
              return items.map(
                    (item) {
                  return Container(
                    alignment: AlignmentDirectional.center,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      selectedItems.join(', '),
                      style: const TextStyle(
                        fontSize: 14,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 1,
                    ),
                  );
                },
              ).toList();
            },
          ),
        ),
      ),
    );
  }




}

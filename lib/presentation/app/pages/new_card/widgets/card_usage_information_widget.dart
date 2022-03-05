import 'package:flutter/material.dart';
import 'package:rubis_card_clone/domain/enums.dart';
import 'package:rubis_card_clone/domain/strings.dart';
import 'package:rubis_card_clone/presentation/app/pages/new_card/widgets/checkbox_grid.dart';
import 'package:rubis_card_clone/presentation/app/pages/new_card/widgets/custom_checkbox.dart';
import 'package:rubis_card_clone/presentation/app/pages/new_card/widgets/info_title.dart';
import 'package:rubis_card_clone/presentation/app/widgets/button.dart';
import 'package:rubis_card_clone/presentation/app/widgets/input_widget.dart';

class CardUsageInformationWidget extends StatefulWidget {
  const CardUsageInformationWidget({Key? key}) : super(key: key);

  @override
  State<CardUsageInformationWidget> createState() =>
      _CardUsageInformationWidgetState();
}

class _CardUsageInformationWidgetState
    extends State<CardUsageInformationWidget> {
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            controller: controller,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InfoTitle(
                  title: 'Choose your product restrictions *',
                  subtitle: 'Select and fill appropriate',
                ),

                // container with the products
                CheckboxGrid(
                  data: productUsageItems,
                  mainChecklistTitle: 'All Products',
                ),

                InfoTitle(
                  title: 'Authorized zones of use *',
                  subtitle: 'Select one or multiple zones below',
                ),

                CheckboxGrid(
                  data: zones,
                  mainChecklistTitle: 'All Zones',
                ),

                InputWidget(
                  title: 'Promo code',
                  isFieldRequired: false,
                  hintText: 'Enter promo code',
                  inputType: InputType.text,
                ),
                CheckBoxWithSubText(
                  title: 'SMS Alerts',
                  subtitle: 'Attract a cost of 2 Ksh per alert',
                ),
                CheckBoxWithSubText(
                  title: 'Mileage Input',
                  subtitle:
                      'Select if you want a report of fuel consumption efficiency in liters per 100kms',
                ),

                CheckBoxWithSubText(
                  title: 'Driver Code',
                  subtitle:
                      'Tick if you want a driver code to be captured on POS, so as to identify each driver individually',
                  extraFieldInitiator: Text('ADD DRIVER NAME'),
                  extraFields: InputWidget(
                    title: 'Driver Name',
                    hintText: 'Enter Name',
                  ),
                  hasExtraFields: true,
                  onWidgetCountUpdated: () => controller.animateTo(
                      controller.position.maxScrollExtent + 150,
                      duration: kThemeAnimationDuration,
                      curve: Curves.easeInOutCubic),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
        ),
        Button(
          onTap: () => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Color(0xff00d158),
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              content: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          child: Icon(Icons.check),
                          backgroundColor: Colors.white,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Success',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Proceed to the next step',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: Colors.white70),
                            )
                          ],
                        )
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.close, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CheckBoxWithSubText extends StatefulWidget {
  const CheckBoxWithSubText(
      {Key? key,
      required this.subtitle,
      required this.title,
      this.hasExtraFields = false,
      this.extraFieldInitiator,
      this.extraFields,
      this.onWidgetCountUpdated})
      : super(key: key);

  final String title, subtitle;
  final bool? hasExtraFields;
  final Widget? extraFields;
  final Widget? extraFieldInitiator;
  final VoidCallback? onWidgetCountUpdated;

  @override
  State<CheckBoxWithSubText> createState() => _CheckBoxWithSubTextState();
}

class _CheckBoxWithSubTextState extends State<CheckBoxWithSubText> {
  bool isChecked = false;
  int extraWidgetCount = 0;

  bool toggleChecked(bool? value) {
    setState(() {
      isChecked = !isChecked;
    });
    return isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CustomCheckBox(
                text: widget.title,
                titleStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 17,
                    ),
                isChecked: widget.hasExtraFields != null ? isChecked : null,
                onChanged: widget.hasExtraFields != null
                    ? (bool? val) => toggleChecked(val)
                    : null,
              ),
              if (isChecked &&
                  widget.hasExtraFields! &&
                  widget.extraFieldInitiator != null)
                TextButton.icon(
                  onPressed: () {
                    setState(() {
                      extraWidgetCount++;
                      if (widget.onWidgetCountUpdated != null) {
                        widget.onWidgetCountUpdated!();
                      }
                    });
                  },
                  icon: Icon(Icons.add),
                  label: widget.extraFieldInitiator!,
                )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 4,
              left: 13,
            ),
            child: Text(
              widget.subtitle,
              style: Theme.of(context).textTheme.caption,
            ),
          ),
          if (isChecked &&
              widget.hasExtraFields! &&
              widget.extraFields != null) ...<Widget>[
            ...List<Widget>.generate(
              extraWidgetCount,
              (int index) => Padding(
                padding: const EdgeInsets.only(
                  top: 4,
                  left: 13,
                ),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(child: widget.extraFields!),
                      Padding(
                        padding: const EdgeInsets.only(top: 13),
                        child: TextButton.icon(
                            onPressed: () => setState(() {
                                  if (extraWidgetCount > 1) {
                                    extraWidgetCount--;
                                  } else {
                                    extraWidgetCount = 0;
                                  }
                                }),
                            label: Text(
                              'Remove',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).colorScheme.error),
                            ),
                            icon: Icon(
                              Icons.remove,
                              color: Colors.red,
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]
        ],
      ),
    );
  }
}

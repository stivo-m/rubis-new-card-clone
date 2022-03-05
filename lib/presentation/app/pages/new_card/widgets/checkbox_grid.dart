import 'package:flutter/material.dart';
import 'package:rubis_card_clone/presentation/app/pages/new_card/widgets/custom_checkbox.dart';

class CheckboxGrid extends StatefulWidget {
  const CheckboxGrid({
    Key? key,
    required this.data,
    required this.mainChecklistTitle,
  }) : super(key: key);

  final List<String> data;
  final String mainChecklistTitle;

  @override
  State<CheckboxGrid> createState() => _CheckboxGridState();
}

class _CheckboxGridState extends State<CheckboxGrid> {
  bool? checkAllItems = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 2,
            color: Colors.black12,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CustomCheckBox(
            text: widget.mainChecklistTitle,
            isChecked: checkAllItems! ? true : null,
            onChanged: (bool? value) {
              setState(() {
                checkAllItems = !checkAllItems!;
              });
            },
          ),
          SizedBox(
            height: (widget.data.length * 23).toDouble(),
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: widget.data.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 40,
              ),
              itemBuilder: (BuildContext context, int index) {
                return CustomCheckBox(
                  text: widget.data[index],
                  isChecked: checkAllItems! ? true : null,
                  onChanged: checkAllItems!
                      ? (bool? value) {
                          setState(() {
                            checkAllItems = false;
                          });
                        }
                      : null,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

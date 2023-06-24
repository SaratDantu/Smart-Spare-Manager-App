import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:smart_app/core/app_export.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({this.alignment, this.margin, this.value, this.onChanged});

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  bool? value;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: value ?? false,
        height: getHorizontalSize(29),
        width: getHorizontalSize(56),
        toggleSize: 22,
        borderRadius: getHorizontalSize(
          14.00,
        ),
        activeColor: ColorConstant.gray20001,
        activeToggleColor: ColorConstant.whiteA700,
        inactiveColor: ColorConstant.gray20001,
        inactiveToggleColor: ColorConstant.whiteA700,
        onToggle: (value) {
          onChanged!(value);
        },
      ),
    );
  }
}

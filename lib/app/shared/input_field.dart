import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';

class InputField extends StatefulWidget {
  const InputField({
    required this.controller,
    required this.placeholder,
    this.enterPressed,
    this.fieldFocusNode,
    this.nextFocusNode,
    this.additionalNote,
    this.formatter,
    this.onChanged,
    this.maxLines = 1,
    this.validationMessage,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.password = false,
    this.isReadOnly = false,
    this.smallVersion = true,
    this.backgroundColor = AppColors.white,
    this.suffix,
    this.onTap,
    this.prefix,
    this.validationColor = AppColors.borderColor,
    this.height = 50,
    this.label,
    this.showLabel = false,
    this.placeholderColor = AppColors.secondBlue,
    this.labelTextColor = AppColors.secondaryColor,
    Key? key,
  }) : super(key: key);
  final Color labelTextColor;
  final Color placeholderColor;
  final TextEditingController? controller;
  final TextInputType textInputType;
  final bool password;
  final bool isReadOnly;
  final String placeholder;
  final String? validationMessage;
  final Function? enterPressed;
  final bool smallVersion;
  final FocusNode? fieldFocusNode;
  final FocusNode? nextFocusNode;
  final TextInputAction textInputAction;
  final String? additionalNote;
  final Function? onTap;
  final Function(String)? onChanged;
  final Color backgroundColor;
  final String? label;
  final bool showLabel;
  final int maxLines;
  final Widget? suffix;
  final Widget? prefix;
  final Color validationColor;
  final List<TextInputFormatter>? formatter;

  final double height;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late bool isPassword;
  double fieldHeight = 64;
  late bool isLabel;

  @override
  void initState() {
    super.initState();
    isPassword = widget.password;
    isLabel = widget.showLabel;
  }

  bool activiateLabe = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: GestureDetector(
                  onTap: widget.showLabel
                      ? () {
                          setState(() {
                            activiateLabe = true;
                          });
                        }
                      : null,
                  child: Container(
                    height: widget.height,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    decoration: BoxDecoration(
                      color: widget.backgroundColor,
                      border: Border.all(color: widget.validationColor),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: <Widget>[
                        widget.prefix ?? const SizedBox(),
                        const Gap(10),
                        Expanded(
                          child: TextField(
                            onTap: widget.showLabel
                                ? () {
                                    setState(() {
                                      activiateLabe = true;
                                    });
                                    if (widget.enterPressed != null) {
                                      FocusScope.of(context)
                                          .requestFocus(FocusNode());
                                      // ignore: avoid_dynamic_calls
                                      widget.enterPressed!();
                                    }
                                  }
                                : null,
                            controller: widget.controller,
                            keyboardType: widget.textInputType,
                            inputFormatters: widget.formatter ?? [],
                            focusNode: widget.fieldFocusNode,
                            textInputAction: widget.textInputAction,
                            onChanged: widget.onChanged,
                            onEditingComplete: () {},
                            obscureText: isPassword,
                            readOnly: widget.isReadOnly,
                            style: const TextStyle(color: AppColors.black),
                            decoration: InputDecoration(
                              hintText: widget.placeholder,
                              border: InputBorder.none,
                              labelStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                              hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: widget.placeholderColor,
                                // fontFamily: AppFonts.aeonik,
                              ),
                            ),
                          ),
                        ),
                        widget.suffix ??
                            GestureDetector(
                              onTap: () => setState(() {
                                isPassword = !isPassword;
                              }),
                              child: widget.password
                                  ? Container(
                                      width: 30,
                                      height: 30,
                                      alignment: Alignment.center,
                                      child: isPassword
                                          ? SvgPicture.asset(
                                              AppAssets.visibility)
                                          : const Icon(
                                              Icons.visibility_off_outlined,
                                              color: Color(0xff71759D),
                                              size: 25,
                                            ),
                                    )
                                  : Container(
                                      width: 30,
                                      height: 30,
                                      alignment: Alignment.center,
                                    ),
                            ),
                      ],
                    ),
                  ),
                ),
              ),
              if (widget.showLabel)
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: activiateLabe
                      ? Container(
                          //check here
                          color: AppColors.dotColor,
                          child: SizedBox(
                            child: TextBody(
                              ' ${widget.label} ',
                              fontSize: 12,
                              color: widget.fieldFocusNode != null
                                  ? AppColors.primaryColor
                                  : widget.labelTextColor,
                            ),
                          ),
                        )
                      : const SizedBox(),
                )
              else
                const SizedBox(),
            ],
          ),
        ),
        if (widget.validationMessage != null)
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: TextBody(
              widget.validationMessage!,
              color: Colors.red,
              fontSize: 10,
            ),
          )
        else
          const SizedBox(),
        if (widget.additionalNote != null) const Gap(5) else const SizedBox(),
        if (widget.additionalNote != null)
          TextBody(widget.additionalNote!)
        else
          const SizedBox(),
      ],
    );
  }
}

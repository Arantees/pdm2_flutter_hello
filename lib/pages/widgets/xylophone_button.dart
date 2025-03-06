import 'package:flutter/material.dart';

class XylophoneButton extends StatelessWidget {
  const XylophoneButton({
    super.key,
    required this.cor,
    required this.assetId,
    required this.callBack,
  });

  final Color cor;
  final int assetId;
  final void Function(int) callBack;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        overlayColor: WidgetStatePropertyAll<Color>(Colors.black38),
        onTap: () {
          callBack(assetId);
        },
        child: Ink(
          color: cor,
        ),
      ),
    );
  }
}
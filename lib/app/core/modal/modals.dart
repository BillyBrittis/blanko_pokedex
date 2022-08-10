import 'package:blanko_podekex/app/core/modal/modal_error.dart';
import 'package:flutter/material.dart';

class ShowModal {
  static error({
    required BuildContext context,
    required String textMsg,
  }) {
    showModalBottomSheet(
      context: context,
      builder: (context) => ShowModalError(errorText: textMsg),
      isScrollControlled: true,
      isDismissible: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
    );
  }
}

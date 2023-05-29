import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

extension DimensionHelper on double {
  double get adjustedSp {
    if (SizerUtil.orientation == Orientation.portrait) {
      return this;
    } else {
      //* (SizerUtil.width / 3) / 100
      return this / (SizerUtil.width / 3) * 100 * (SizerUtil.height / 7) / 100;
    }
  }

  double get adjustedW {
    if (SizerUtil.orientation == Orientation.portrait) {
      return this;
    } else {
      return SizerUtil.width / 3;
    }
  }

  double get adjustedH {
    if (SizerUtil.orientation == Orientation.portrait) {
      return this;
    } else {
      return SizerUtil.height / 3;
    }
  }
}

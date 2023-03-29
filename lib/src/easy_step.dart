import 'package:flutter/material.dart';

export 'package:easy_stepper/src/core/base_step.dart';
export 'package:easy_stepper/src/core/easy_line.dart';
export 'package:easy_stepper/src/easy_step.dart';
export 'package:flutter/material.dart';

class EasyStep {
  /// The icon displayed in the step, you can change size & color for different status from main stepper.
  final Icon? icon;

  /// The icon displayed in the step, when this step is finished. if null the main icon remain displayed.
  final Icon? finishIcon;

  /// The icon displayed in the step, when this step is active. if null the default loading widget displayed.
  final Icon? activeIcon;

  /// Create your own Widget for step, if this property is set `icon`, `activeIcon` and `finishIcon` will be ignored..
  final Widget? customStep;

  /// The title of the step.
  final String? title;

  /// Create your own title widget of the step, if this property is set `title` will be ignored..
  final Widget? customTitle;

  /// The text appear under the step line, Hence: last step does not have a line
  final String? lineText;

  /// Create your own widget appear under the step line, Hence: last step does not have a line, if this property is set `lineText` will be ignored..
  final Widget? customLineWidget;

  final Color? backgroundColor;

  /// Create a new Step with custom icon and optional title
  const EasyStep({
    this.icon,
    this.finishIcon,
    this.activeIcon,
    this.title,
    this.lineText,
    this.customStep,
    this.customTitle,
    this.customLineWidget,
    this.backgroundColor,
  }) : assert(icon != null || customStep != null);
}

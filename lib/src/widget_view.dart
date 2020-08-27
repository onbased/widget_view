import 'package:flutter/widgets.dart';

abstract class StatelessWidgetView<W extends StatelessWidget>
    extends StatelessWidget {
  @protected
  final W controller;
  const StatelessWidgetView(this.controller, {Key key}) : super(key: key);
}

abstract class StatefulWidgetView<W extends StatefulWidget, S extends State>
    extends StatelessWidget {
  @protected
  final S controller;
  @protected
  W get widget => controller.widget;
  const StatefulWidgetView(this.controller, {Key key}) : super(key: key);
}

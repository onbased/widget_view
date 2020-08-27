# Live template of StatefulWidget, Controller for StatefulWidget, StatefulWidgetView.

Abbreviation: scv

```
class $WIDGETNAME$ extends StatefulWidget {
  $WIDGETNAME$({Key key}) : super(key: key);

  @override
  _$WIDGETNAME$Controller createState() => _$WIDGETNAME$Controller();
}
 
class _$WIDGETNAME$Controller extends State<$WIDGETNAME$> {
  @override
  Widget build(BuildContext context) => _$WIDGETNAME$View(this);
}
 
class _$WIDGETNAME$View extends StatefulWidgetView<$WIDGETNAME$, _$WIDGETNAME$Controller> {
  const _$WIDGETNAME$View(_$WIDGETNAME$Controller controller) : super(controller);
 
  @override
  Widget build(BuildContext context) {
    return Container($END$);
  }
}
```

# Live template of only StatefulWidgetView for existing State.

Abbreviation: sv

```
class _$WIDGETNAME$View extends StatefulWidgetView<$WIDGETNAME$, _$WIDGETNAME$Controller> {
  const _$WIDGETNAME$View(_$WIDGETNAME$Controller controller) : super(controller);
 
  @override
  Widget build(BuildContext context) {
    return Container($END$);
  }
}
```

# Live template of StatelessWidget as Controller, StatelessWidgetView.

Abbreviation: slcv

``` 
class $WIDGETNAME$ extends StatelessWidget {
  $WIDGETNAME$({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => _$WIDGETNAME$View(this);
}
 
class _$WIDGETNAME$View extends StatelessWidgetView<$WIDGETNAME$> {
  const _$WIDGETNAME$View(_$WIDGETNAME$ controller) : super(controller);
 
  @override
  Widget build(BuildContext context) {
    return Container($END$);
  }
}
```

# Live template of only StatelessWidgetView for existing StatelessWidget.

Abbreviation: slv

```
class _$WIDGETNAME$View extends StatelessWidgetView<$WIDGETNAME$> {
  const _$WIDGETNAME$View(_$WIDGETNAME$ controller) : super(controller);
 
  @override
  Widget build(BuildContext context) {
    return Container($END$);
  }
}
```
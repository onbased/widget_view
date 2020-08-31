# Widget View

A Dart package that supports for separation of logic and view in a widget.

## This package's original idea

[Flutter: WidgetView - A Simple Separation of Layout and Logic - gskinner blog](https://blog.gskinner.com/archives/2020/02/flutter-widgetview-a-simple-separation-of-layout-and-logic.html)

## Usage

A counter example with StatefulWidgetView.

```dart
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageController createState() => _MyHomePageController();
}

class _MyHomePageController extends State<MyHomePage> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) => _MyHomePageView(this);
}

class _MyHomePageView
    extends StatefulWidgetView<MyHomePage, _MyHomePageController> {
  const _MyHomePageView(_MyHomePageController controller, {Key key})
      : super(controller, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${controller.counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
```

## Live Templates for Intelij IDEs (Android Studio, etc...).

See [intelij_live_templates.md](doc/intelij_live_templates.md).

## Snippets for Visual Studio Code

TBE. Your pull request is welcome.

## Features and bugs

Please file feature requests and bugs at the [issue tracker](https://github.com/polyflection/widget_view/issues).

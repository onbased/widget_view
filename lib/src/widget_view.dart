import 'package:flutter/widgets.dart';

/// A widget view of a [State] as a stateful controller in a [StatefulWidget].
///
/// # Example
///
/// ```dart
/// class MyHomePage extends StatefulWidget {
///   MyHomePage({Key key, this.title}) : super(key: key);
///   final String title;
///
///   @override
///   _MyHomePageController createState() => _MyHomePageController();
/// }
///
/// class _MyHomePageController extends State<MyHomePage> {
///   int counter = 0;
///
///   void incrementCounter() {
///     setState(() {
///       counter++;
///     });
///   }
///
///   @override
///   Widget build(BuildContext context) => _MyHomePageView(this);
/// }
///
/// class _MyHomePageView
///     extends StatefulWidgetView<MyHomePage, _MyHomePageController> {
///   const _MyHomePageView(_MyHomePageController controller, {Key key})
///       : super(controller, key: key);
///
///   @override
///   Widget build(BuildContext context) {
///     return Scaffold(
///       appBar: AppBar(
///         title: Text(widget.title),
///       ),
///       body: Center(
///         child: Column(
///           mainAxisAlignment: MainAxisAlignment.center,
///           children: <Widget>[
///             Text(
///               'You have pushed the button this many times:',
///             ),
///             Text(
///               '${controller.counter}',
///               style: Theme.of(context).textTheme.headline4,
///             ),
///           ],
///         ),
///       ),
///       floatingActionButton: FloatingActionButton(
///         onPressed: controller.incrementCounter,
///         tooltip: 'Increment',
///         child: Icon(Icons.add),
///       ),
///     );
///   }
/// }
/// ```
abstract class StatefulWidgetView<W extends StatefulWidget, S extends State>
    extends StatelessWidget {
  @protected
  final S controller;
  @protected
  W get widget => controller.widget;
  const StatefulWidgetView(this.controller, {Key key}) : super(key: key);
}

/// A widget view of a [StatelessWidget] as a stateless controller.
abstract class StatelessWidgetView<W extends StatelessWidget>
    extends StatelessWidget {
  @protected
  final W controller;
  const StatelessWidgetView(this.controller, {Key key}) : super(key: key);
}

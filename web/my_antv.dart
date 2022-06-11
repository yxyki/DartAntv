// Dart JS示例
// AntV可视化组件（https://antv.antfin.com/zh-cn/g2/3.x/demo/pie/color-rose.html#）
// Dart JS文档（https://api.dart.cn/stable/2.16.2/dart-js/dart-js-library.html）

import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  DivElement dartStatus = querySelector('#dart-status') as DivElement;
  dartStatus.text = 'Dart is running!';

  var myData = JsObject.jsify([
    {'time': '03-25', 'type': '1-10', 'value': 35000},
    {'time': '03-24', 'type': '1-10', 'value': 33000},
    {'time': '03-23', 'type': '1-10', 'value': 32000},
    {'time': '03-22', 'type': '1-10', 'value': 30000},
  ]);

  var chart = context['chart'];
  chart.callMethod('source', [myData]);
  chart.callMethod('render', []);
}

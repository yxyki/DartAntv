// Dart JS示例
// AntV可视化组件（https://antv.antfin.com/zh-cn/g2/3.x/demo/pie/color-rose.html#）
// Dart JS文档（https://api.dart.cn/stable/2.16.2/dart-js/dart-js-library.html）

import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  final div = querySelector("#hint") as DivElement;
  div.text = "dart connected.";

  var chart = context['chart'];
  var myData = JsObject.jsify([
    {'time': '03-19', 'type': '101-1000', 'value': 32000},
    {'time': '03-19', 'type': '31-100', 'value': 30000},
    {'time': '03-19', 'type': '11-30', 'value': 27000},
    {'time': '03-19', 'type': '1-10', 'value': 22000},
    {'time': '03-20', 'type': '101-1000', 'value': 35000},
    {'time': '03-20', 'type': '31-100', 'value': 32000},
    {'time': '03-20', 'type': '11-30', 'value': 30000},
    {'time': '03-20', 'type': '1-10', 'value': 26000},
    {'time': '03-21', 'type': '101-1000', 'value': 39000},
    {'time': '03-21', 'type': '31-100', 'value': 37000},
    {'time': '03-21', 'type': '11-30', 'value': 34000},
    {'time': '03-21', 'type': '1-10', 'value': 28000},
    {'time': '03-22', 'type': '101-1000', 'value': 44000},
    {'time': '03-22', 'type': '31-100', 'value': 42000},
    {'time': '03-22', 'type': '11-30', 'value': 38000},
    {'time': '03-22', 'type': '1-10', 'value': 32000},
    {'time': '03-23', 'type': '101-1000', 'value': 47000},
    {'time': '03-23', 'type': '31-100', 'value': 44000},
    {'time': '03-23', 'type': '11-30', 'value': 40000},
    {'time': '03-23', 'type': '1-10', 'value': 34000},
    {'time': '03-24', 'type': '101-1000', 'value': 48000},
    {'time': '03-24', 'type': '31-100', 'value': 46000},
    {'time': '03-24', 'type': '11-30', 'value': 42000},
    {'time': '03-24', 'type': '1-10', 'value': 35000},
    {'time': '03-25', 'type': '101-1000', 'value': 50000},
    {'time': '03-25', 'type': '31-100', 'value': 48000},
    {'time': '03-25', 'type': '11-30', 'value': 44000},
    {'time': '03-25', 'type': '1-10', 'value': 35000},
  ]);

  chart.callMethod('source', [myData]);
  chart.callMethod('render', []);
}

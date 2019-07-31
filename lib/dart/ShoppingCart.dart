import 'PrintHelper.dart';
import 'Meta.dart';
import 'Item.dart';

class ShoppingCart extends Meta with PrintHelper {
  DateTime date;
  String code;
  List<Item> items;

  ShoppingCart({name}) : this.withCode(name: name, code: null);

  ShoppingCart.withCode({name, this.code})
      : date = DateTime.now(),
        super(0.0, name);

  @override
  getInfo() => '''
  购物车信息：
  --------------
  用户名：$name
  优惠码：${code ?? " 没有 "}
  总价：$price
  日期：$date
  详情：$shoppInfo
  --------------
  ''';

  double get price => items.reduce((value, element) => value + element).price;

  String get shoppInfo {
    var info = "";
    for (var r in items) {
      info += "商品:${r.name},单价：${r.price}  ";
    }
    return info;
  }
}

import 'package:flutter/material.dart';

class CustomScrollWidget extends StatelessWidget {
  List<String> _myGrid = List();
  List<_myMoveBean> _myList = List();

  CustomScrollWidget() {
    this._myGrid
      ..add("http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg")
      ..add("http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg")
      ..add("http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg")
      ..add("http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg")
      ..add("https://img1.doubanio.com/view/photo/m/public/p2561542089.webp")
      ..add(
          "https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2559742751.webp")
      ..add(
          "https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2555084871.webp")
      ..add(
          "https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2562934437.webp")
      ..add(
          "https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561541477.webp")
      ..add(
          "https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561270746.webp")
      ..add(
          "https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p1530516628.8.webp")
      ..add("https://img1.doubanio.com/view/photo/l/public/p2327391897.webp");
    this._myList
      ..add(_myMoveBean(
        imageUrl:
            "https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2546745948.webp",
        title: "夏目友人帐 劇場版",
        des: "2018-09-29(日本)2019-03-07(中国大陆) ",
        love: false,
      ))
      ..add(_myMoveBean(
        imageUrl:
            "https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2555084871.webp",
        title: "恶人传 ",
        des: "罪犯头目张东洙名神秘莫测的连环杀手暴力袭击之后幸存",
        love: false,
      ))
      ..add(_myMoveBean(
        imageUrl:
            "https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2545020183.webp",
        title: "孟买酒店,失控危城",
        des: "2018-09-07(多伦多电影节阿德莱德电影节)",
        love: false,
      ))
      ..add(_myMoveBean(
        imageUrl:
            "https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2562817113.webp",
        title: "亲爱的，热爱的",
        des: "该剧改编自墨宝非宝的小说《蜜汁炖鱿鱼》",
        love: false,
      ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
          child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('哪吒之魔童降世'),
              background: Image.network(
                "https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561876698.webp",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.zero,
            sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate((ctx, index) {
                  return Image.network(
                    this._myGrid[index],
                    fit: BoxFit.cover,
                  );
                }, childCount: this._myGrid.length),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 2.0,
                    crossAxisSpacing: 2.0,
                    childAspectRatio: 0.7)),
          ),
          //List
          new SliverFixedExtentList(
            itemExtent: 80.0,
            delegate: new SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              //创建列表项
              return myListItem(
                bean: this._myList[index],
              );
            }, childCount: this._myList.length),
          ),
        ],
      )),
    );
  }
}

class myListItem extends StatefulWidget {
  final _myMoveBean bean;

  const myListItem({Key key, this.bean}) : super(key: key);

  @override
  _myListItemState createState() => _myListItemState();
}

class _myListItemState extends State<myListItem> {
  bool _isselect = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Image.network(
          widget.bean.imageUrl,
          fit: BoxFit.cover,
        ),
        title: Text(widget.bean.title),
        subtitle: Text(widget.bean.des),
        trailing: new Icon(
          _isselect ? Icons.favorite : Icons.favorite_border,
          color: _isselect ? Colors.red : null,
        ),
        onTap: () {
          setState(() {
            this._isselect = !this._isselect;
          });
        },
      ),
    );
  }
}

class _myMoveBean {
  String imageUrl;
  String title;
  String des;
  bool love;

  _myMoveBean({this.imageUrl, this.title, this.des, this.love});
}

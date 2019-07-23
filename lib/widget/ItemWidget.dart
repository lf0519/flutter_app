import 'package:flutter/material.dart';

class ItemChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("list item"),
          backgroundColor: Colors.green,
        ),
        body:Column(children: <Widget>[
           _itemChat(
            tab: (bean) {
              print("------------${bean._nickName}");
            },
            bean: _ChatBean("resource/images/1.png", "小马", "明天就去那里呀,上班，上班",
                false, "16：30", false),
          ),
          _itemChat(
            tab: (bean) {
              print("------------${bean._nickName}");
            },
            bean: _ChatBean("resource/images/1.png", "夏明", "明天就去那里呀,上班，上班",
                false, "16：30", false),
          ),
          _itemChat(
            tab: (bean) {
              print("------------${bean._nickName}");
            },
            bean: _ChatBean("resource/images/1.png", "孤独的一批狼", "明天就去那里呀,上班，上班",
                false, "16：30", false),
          ),
          _itemChat(
            tab: (bean) {
              print("------------${bean._nickName}");
            },
            bean: _ChatBean("resource/images/1.png", "张翰的", "明天就去那里呀,上班，上班",
                false, "16：30", false),
          ),
          _itemChat(
            tab: (bean) {
              print("------------${bean._nickName}");
            },
            bean: _ChatBean("resource/images/1.png", "向第三地方撒发斯蒂芬方", "明天就去那里呀,上班，上班",
                false, "16：30", false),
          ),

        ],)
      ),
    );
  }
}

typedef TapCallback = void Function(_ChatBean bean);

class _itemChat extends StatefulWidget {
  final TapCallback tab;
  final _ChatBean bean;

  const _itemChat({Key key, @required this.tab, @required this.bean})
      : super(key: key);

  @override
  _itemChatState createState() => _itemChatState();
}

class _itemChatState extends State<_itemChat> {
  @override
  Widget build(BuildContext context) {
    var portrait = Container(
      width: 50,
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.asset(
          widget.bean._portrait,
          fit: BoxFit.cover,
        ),
      ),
    );
    var leading = Stack(
      alignment: Alignment(1.2, -1.2),
      children: <Widget>[
        portrait,
        widget.bean._hasMsg
            ? ClipOval(
                child: Container(
                  width: 10,
                  height: 10,
                  color: Colors.red,
                ),
              )
            : SizedBox()
      ],
    );
    var trailing = Column(
      children: <Widget>[
        Text(widget.bean._time),
        widget.bean._mask ? Icon(Icons.visibility_off) : SizedBox(),
      ],
    );
    return InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: ListTile(
          leading: leading,
          title: Text(
            widget.bean._nickName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(widget.bean._msgDes),
          trailing: trailing,
        ),
      ),
      onTap: () {
        if (this.widget.tab != null) {
          this.widget.tab(widget.bean);
          setState(() {
            this.widget.bean._mask = !this.widget.bean._mask;
            this.widget.bean._hasMsg = !this.widget.bean._hasMsg;
          });
        }
      },
    );
  }
}

class _ChatBean {
  String _portrait;
  String _nickName;
  String _msgDes;
  bool _hasMsg;
  String _time;
  bool _mask;

  _ChatBean(this._portrait, this._nickName, this._msgDes, this._hasMsg,
      this._time, this._mask);
}

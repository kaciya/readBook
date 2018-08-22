import 'package:flutter/material.dart';

class XColor{
  static const redColor = Color.fromRGBO(224, 90, 85, 1.0);
  static const appBarColor = redColor;
  static Color searchBackgroundColor = Colors.white10;

  static Color fontColor = Colors.white;

}
class XTextStyle{
  static const navigationTitleStyle = TextStyle(color: Colors.white,fontSize: 20.0);
  static const readTitleStyle = TextStyle(color: Colors.white,fontSize: 15.0);
  static const barItemTStyle = TextStyle(color: Colors.white,fontSize: 13.0);

}
class DefaultSetting{
  static getDefaultSetting(){
    List rankList = [];
    rankList.add({
      'name':'原创风云榜·新书',
      'path':'/rank/yuepiao',
    });
    rankList.add({
      'name':'24小时热销榜',
      'path':'/rank/hotsales',
    });
    rankList.add({
      'name':'新锐会员周点击榜',
      'path':'/rank/newvipclick',
    });
    rankList.add({
      'name':'推荐票榜',
      'path':'/rank/recom',
    });
    rankList.add({
      'name':'收藏榜',
      'path':'/rank/collect',
    });
    rankList.add({
      'name':'完本榜',
      'path':'/rank/fin',
    });
    rankList.add({
      'name':'签约作家新书榜',
      'path':'/rank/signnewbook',
    });
    rankList.add({
      'name':'公众作家新书榜',
      'path':'/rank/pubnewbook',
    });
    List typeList = [];
    typeList.add({
      'name':'全部分类',
      'chn':'-1',
    });
    typeList.add({
      'name':'玄幻',
      'chn':'21',
    });
    typeList.add({
      'name':'奇幻',
      'chn':'1',
    });
    typeList.add({
      'name':'武侠',
      'chn':'2',
    });
    typeList.add({
      'name':'仙侠',
      'chn':'22',
    });
    typeList.add({
      'name':'都市',
      'chn':'4',
    });
    typeList.add({
      'name':'现实',
      'chn':'15',
    });
    typeList.add({
      'name':'军事',
      'chn':'6',
    });
    typeList.add({
      'name':'历史',
      'chn':'5',
    });
    typeList.add({
      'name':'游戏',
      'chn':'7',
    });
    typeList.add({
      'name':'体育',
      'chn':'8',
    });
    typeList.add({
      'name':'科幻',
      'chn':'9',
    });
    typeList.add({
      'name':'灵异',
      'chn':'10',
    });
    typeList.add({
      'name':'二次元',
      'chn':'12',
    });
    String titleRegex = r'''<div class="book-mid-info">.*?<h4><a href="//book.qidian.com/info/[\s\S]*?>(.*?)</a>''';
    String coverRegex = r'<a href="//book.qidian.com/info/.*?" target="_blank" data-eid="qd_C39" data-bid=".*?"><img src="//([\s\S]*?)"></a>';;
    String introRegex = r'<p class="intro">(.*?)</p>';
    String lastRegex = r'<p class="update"><a href=".*?" target="_blank" data-eid="qd_C43" data-bid=".*?" data-cid=".*?">(.*?)</a><em>&#183;</em><span>.*?</span>';
    String lastDateRegex = r'<p class="update"><a href=".*?" target="_blank" data-eid="qd_C43" data-bid=".*?" data-cid=".*?">.*?</a><em>&#183;</em><span>(.*?)</span>';
    String authorRegex = r'<img src=".*?"><a class="name" href=".*?" target="_blank" data-eid="qd_C41">([\s\S]*?)</a><em>';
    String typeRegex = r'<div class="book-mid-info">.*?data-eid="qd_C42">(.*?)</a><em>|</em><span>$';
    String linkRegex = r'<div class="book-img-box">.*?<a href="//(.*?)" target="_blank" data-eid="qd_C39" data-bid=".*?"><img src="//.*?"></a>.*?</div>';

    Map regex = {
      "titleRegex":titleRegex,
      "coverRegex":coverRegex,
      "introRegex":introRegex,
      "lastRegex":lastRegex,
      "lastDateRegex":lastDateRegex,
      "authorRegex":authorRegex,
      "typeRegex":typeRegex,
      "linkRegex":linkRegex,
    };
    return {'code':100,'rankList':rankList,'typeList':typeList,'doMain':"www.qidian.com","regex":regex};
  }
}
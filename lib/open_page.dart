import 'package:flutter/material.dart';
import 'package:nautilus/nautilus.dart' as nautilus;
import 'package:nautilus/nautilus.dart';

class OpenByPage extends StatefulWidget {
  @override
  _OpenByPageState createState() => _OpenByPageState();
}

class _OpenByPageState extends State<OpenByPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OpenByPage"),
      ),
      body: ListView(
        children: <Widget>[
          FlatButton(
            onPressed: _openItemDetail,
            child: Text("打开淘宝详情"),
          ),
          FlatButton(
            onPressed: _openUrl,
            child: Text("打开Url"),
          )
        ],
      ),
    );
  }

  _openItemDetail() {

    Map<String,String> map = new Map();
    Map<String,String> extParams = new Map();

    extParams['isv_code'] = 'appisvcode';
    map['taokeAppkey'] = '24900413';
    nautilus.openItemDetail(
        itemID: "596734534181",
        schemeType:'taobao_scheme',
        taoKeParams: nautilus.TaoKeParams(
            unionId: "",
            subPid: "mm_114747138_45538443_624654015",
            pid: "mm_114747138_45538443_624654015",
            adzoneId: "624654015",
            extParams:map,
        ),
      openType: OpenType.NATIVE,
      openNativeFailedMode: OpenNativeFailedMode.JUMP_H5,
      extParams:extParams,
    );
  }

//
//  String backUrl="",
//      Map<String, String> extParams,
//  TaoKeParams taoKeParams,
//      bool needPush = false,
//  String schemeType = "tmall_scheme",
//      OpenType openType = OpenType.AUTO,
//  OpenNativeFailedMode openNativeFailedMode =
//      OpenNativeFailedMode.JUMP_H5
  _openUrl() {
    Map<String,String> map = new Map();
    Map<String,String> extParams = new Map();

    extParams['isv_code'] = 'appisvcode';
    map['taokeAppkey'] = '24900413';
    nautilus.openUrl(
        pageUrl:
        "https://uland.taobao.com/coupon/edetail?e=HVOrdZ%2F7fDcNfLV8niU3RwXoB%2BDaBK5LQS0Flu%2FfbSog%2BeE%2BjpQFGNpsAmOX0u61j%2F4sdtHZ%2BsLzuzmZ5TrI3Lkz5dhxGCSPSPn%2BPrXA7uO9yhDGN%2BR1B3uetGVQPjPRJk7mk9sG4quI3wHVtquTqP143wKsrSjPbGXCaNTfARA%2BItRFntfHzyAnaEGRIHvIFF6O9STo8Qi8HzXEgh689T5%2F6mJ0IOYhJTNWSR3CwiY%3D&&app_pvid=59590_11.1.109.76_482_1563445295838&ptl=floorId:2836;app_pvid:59590_11.1.109.76_482_1563445295838;tpp_pvid:100_11.230.60.34_65128_271563445295841774&xId=tIXdOQRCJkECqzbiOX8rDy5e8mB4qpO67eVzVhfXE4zAgaLPKnggqk3s6ZSzwmKRBA0c90UrBSbGyuYx1hx6mv&union_lens=lensId:0b016d4c_0bf6_16c0499faeb_4180",
      taoKeParams: nautilus.TaoKeParams(
            unionId: "",
            subPid: "mm_114747138_45538443_624654015",
            pid: "mm_114747138_45538443_624654015",
            adzoneId: "624654015",
            extParams:map,
    ),
//        needPush: true,
        openType: OpenType.NATIVE,
        openNativeFailedMode: OpenNativeFailedMode.JUMP_H5,
      extParams:extParams,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:player/pages/download.dart';
import 'package:player/pages/local.dart';
import 'package:player/pages/net.dart';
import 'package:player/pages/setting.dart';

class TabNavigationBar extends StatefulWidget {
  @override
  State<TabNavigationBar> createState() => _TabNavigationBarState();
}

class _TabNavigationBarState extends State<TabNavigationBar> {
  int _tabIndex = 0;
  final List<Map<String, dynamic>> _tabList = [
    {
      'icon': const Icon(Icons.folder_open),
      'title': '本地',
      'page': LocalPage(),
    },
    {
      'icon': const Icon(Icons.share),
      'title': '网络',
      'page': NetPage(),
    },
    {
      'icon': const Icon(Icons.download),
      'title': '下载',
      'page': DownloadPage(),
    },
    {
      'icon': const Icon(Icons.settings),
      'title': '设置',
      'page': SettingPage(),
    },
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabList[_tabIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        currentIndex: _tabIndex,
        items: _tabList
            .map((Map<String, dynamic> item) => BottomNavigationBarItem(
                icon: item['icon'] as Widget, label: item['title'] as String))
            .toList(),
        onTap: (int index) {
          setState(() {
            _tabIndex = index;
          });
        },
      ),
    );
  }
}

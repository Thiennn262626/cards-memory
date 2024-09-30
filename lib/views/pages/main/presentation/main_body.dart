import 'package:cards/views/pages/main/widgets/card_list.dart';
import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Phần bên trái với tỷ lệ 1
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.yellowAccent,
            ),
          ),
          // Phần giữa với tỷ lệ 8
          Expanded(
            flex: 8,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.blueGrey,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: CardList(),
                ),
              ],
            ),
          ),
          // Phần bên phải với tỷ lệ 1
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.greenAccent,
            ),
          ),
        ],
      ),
    );
  }
}

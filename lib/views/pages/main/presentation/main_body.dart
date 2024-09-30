import 'package:cards/views/pages/main/bloc/main_bloc.dart';
import 'package:cards/views/pages/main/widgets/card_list.dart';
import 'package:cards/views/pages/main/widgets/my_card_list.dart';
import 'package:cards/views/pages/main/widgets/right_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
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
              Expanded(
                flex: 8,
                child: Column(
                  children: [
                    if (!state.picked) ...[
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.blueGrey,
                        ),
                      ),
                      const Expanded(
                        flex: 3,
                        child: CardList(),
                      ),
                    ] else ...[
                      Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.blueGrey,
                        ),
                      ),
                      const Expanded(
                        flex: 10,
                        child: CardList(),
                      ),
                      Expanded(
                        flex: 3,
                        child: MyCardList(),
                      ),
                    ]
                  ],
                ),
              ),
              // Phần bên phải với tỷ lệ 1
              const Expanded(
                flex: 1,
                child: RightControl(),
              ),
            ],
          ),
        );
      },
    );
  }
}

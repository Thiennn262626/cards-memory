import 'package:cards/domain/entities/card_entity.dart';
import 'package:cards/views/pages/main/bloc/main_bloc.dart';
import 'package:cards/views/pages/main/widgets/card.dart';
import 'package:cards/views/pages/main/widgets/progress_bar_hor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardList extends StatelessWidget {
  const CardList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        // Lấy danh sách lá bài từ state
        final deck = state.cardList.deck;

        // Kiểm tra xem danh sách lá bài có rỗng hay không
        if (deck == null || deck.isEmpty) {
          return const Center(
            child: SizedBox(
              width: 150, // Đặt chiều rộng của Progress bar
              height: 10, // Đặt chiều cao của Progress bar
              child: ProgressBarHorizontal(), // Hiển thị thanh tiến trình ngang
            ),
          );
        }

        // Chia lá bài theo chất
        final suits = ['♠', '♣', '♦', '♥'];
        Map<String, List<CardEntity>> groupedCards = {
          '♠': [],
          '♣': [],
          '♦': [],
          '♥': [],
        };

        for (var card in deck) {
          groupedCards[card.suit]?.add(card);
        }
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Column(
            children: [
              for (var suit in suits) ...[
                // if (suit != '♠') const SizedBox(),
                // Hiển thị mỗi dòng cho mỗi chất

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GridView.builder(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        shrinkWrap:
                            true, // Cho phép GridView nhỏ lại để phù hợp với kích thước
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: groupedCards[suit]!.length,
                          childAspectRatio: state.picked ? 0.8 : 0.75,
                          crossAxisSpacing: 8,
                        ),
                        itemCount: groupedCards[suit]!.length,
                        itemBuilder: (context, index) {
                          final card =
                              groupedCards[suit]![index]; // Lấy lá bài hiện tại
                          return Cardx(card: card);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}

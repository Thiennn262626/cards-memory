// import 'package:cards/core/app_theme.dart';
// import 'package:cards/domain/entities/card_entity.dart';
// import 'package:cards/views/pages/main/bloc/main_bloc.dart';
// import 'package:cards/views/pages/main/widgets/progress_bar_hor.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class CardList extends StatelessWidget {
//   const CardList({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<MainBloc, MainState>(
//       builder: (context, state) {
//         // Lấy danh sách lá bài từ state
//         final deck = state.cardList.deck;
//
//         // Kiểm tra xem danh sách lá bài có rỗng hay không
//         if (deck == null || deck.isEmpty) {
//           return const Center(
//             child: SizedBox(
//               width: 150, // Đặt chiều rộng của Progress bar
//               height: 10, // Đặt chiều cao của Progress bar
//               child: ProgressBarHorizontal(), // Hiển thị thanh tiến trình ngang
//             ),
//           );
//         }
//
//         return Padding(
//           padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
//           child: GridView.builder(
//             physics: const NeverScrollableScrollPhysics(),
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 13,
//               childAspectRatio: 0.85,
//             ),
//             itemCount: deck.length,
//             itemBuilder: (context, index) {
//               final card = deck[index]; // Lấy lá bài hiện tại
//               return Cardx(card: card);
//             },
//           ),
//         );
//       },
//     );
//   }
// }
//
// class Cardx extends StatelessWidget {
//   const Cardx({
//     super.key,
//     required this.card,
//   });
//
//   final CardEntity card;
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.white,
//       borderOnForeground: false,
//       elevation: 1,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             '${card.rank} ', // Hiển thị lá bài
//             style: const TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           if (card.color == 'black')
//             Text(
//               card.suit, // Hiển thị lá bài
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: AppColorScheme.black,
//               ),
//             ),
//           if (card.color == 'red')
//             Text(
//               card.suit, // Hiển thị lá bài
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: AppColorScheme.red,
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }
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
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 13,
                          childAspectRatio: 0.8,
                          crossAxisSpacing: 4,
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
//
// class Cardx extends StatelessWidget {
//   const Cardx({
//     super.key,
//     required this.card,
//   });
//
//   final CardEntity card;
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.white,
//       borderOnForeground: false,
//       elevation: 1,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             '${card.rank} ', // Hiển thị lá bài
//             style: const TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           if (card.color == 'black')
//             Text(
//               card.suit, // Hiển thị lá bài
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: AppColorScheme.black,
//               ),
//             ),
//           if (card.color == 'red')
//             Text(
//               card.suit, // Hiển thị lá bài
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: AppColorScheme.red,
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }

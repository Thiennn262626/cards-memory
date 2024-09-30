import 'package:cards/views/pages/main/bloc/main_bloc.dart';
import 'package:cards/views/pages/main/widgets/card.dart';
import 'package:cards/views/pages/main/widgets/progress_bar_hor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyCardList extends StatelessWidget {
  const MyCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        // Lấy danh sách lá bài từ state
        final deck = state.myCards.deck;

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

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(vertical: 2),
              shrinkWrap:
                  true, // Cho phép GridView nhỏ lại để phù hợp với kích thước
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: deck.length,
                childAspectRatio: 0.75,
                crossAxisSpacing: 8,
              ),
              itemCount: deck.length,
              itemBuilder: (context, index) {
                final card = deck[index];
                return Cardx(card: card);
              },
            ),
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

import 'package:cards/core/app_theme.dart';
import 'package:cards/domain/entities/card_entity.dart';
import 'package:cards/gen/assets.gen.dart';
import 'package:cards/views/pages/main/bloc/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Cardx extends StatefulWidget {
  const Cardx({
    super.key,
    required this.card,
  });

  final CardEntity card;

  @override
  _CardxState createState() => _CardxState();
}

class _CardxState extends State<Cardx> {
  late bool _isClicked;
  @override
  void initState() {
    super.initState();
    _isClicked =
        context.read<MainBloc>().state.selectedCards.contains(widget.card);
  }

  void _handleTap() {
    if (widget.card.isFaceUp) {
      context
          .read<MainBloc>()
          .add(MainEvent.toggleSelectCardEvent(widget.card));
      setState(
        () {
          _isClicked = !_isClicked; // Đảo ngược trạng thái khi click
        },
      );
    }

    // Nếu bạn muốn giữ hiệu ứng một thời gian, có thể sử dụng Future.delayed
    // if (_isClicked) {
    //   Future.delayed(const Duration(milliseconds: 2000), () {
    //     setState(() {
    //       _isClicked = false; // Tắt hiệu ứng sau 200ms
    //     });
    //   });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        _isClicked = state.selectedCards.contains(widget.card);
        if (!widget.card.isFaceUp) {
          return Padding(
            padding: const EdgeInsets.all(1.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(2),
              child: Image.asset(
                Assets.images.isFaceDown.path,
                fit: BoxFit.fill,
              ),
            ),
          );
        } else {
          return GestureDetector(
            onTap: _handleTap, // Gọi hàm khi click vào lá bài
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200), // Thời gian hiệu ứng
              transform: Matrix4.translationValues(
                  0, _isClicked ? -3 : 0, 0), // Di chuyển lên một chút
              decoration: BoxDecoration(
                color: Colors.transparent,
                boxShadow: _isClicked
                    ? [
                        BoxShadow(
                          // color: Colors.yellow.withOpacity(0.3), // Màu phát sáng
                          color: AppColorScheme.header1.withOpacity(0.5),
                          blurRadius: 8,
                          spreadRadius: 2,
                        )
                      ]
                    : null,
                borderRadius: BorderRadius.circular(2), // Thêm bo tròn cho Card
              ),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(2),
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${widget.card.rank} ', // Hiển thị lá bài
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (widget.card.color == 'black')
                          Text(
                            widget.card.suit, // Hiển thị lá bài
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: AppColorScheme.black,
                            ),
                          ),
                        if (widget.card.color == 'red')
                          Text(
                            widget.card.suit, // Hiển thị lá bài
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: AppColorScheme.red,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}

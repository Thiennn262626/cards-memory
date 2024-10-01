import 'package:badges/badges.dart' as badges;
import 'package:cards/core/app_theme.dart';
import 'package:cards/gen/assets.gen.dart';
import 'package:cards/views/pages/main/bloc/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RightControl extends StatelessWidget {
  const RightControl({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return Container(
          color: Colors.transparent,
          child: Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  // Assets.icons.history.path,
                  Icons.history_edu_outlined,
                  size: 35,
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              state.picked ? FireButton() : const PickMyCard(),
            ],
          ),
        );
      },
    );
  }
}

class PickMyCard extends StatelessWidget {
  const PickMyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      buildWhen: (previousState, currentState) {
        // Chỉ xây dựng lại widget khi danh sách selectedCards thay đổi
        return previousState.selectedCards != currentState.selectedCards;
      },
      builder: (context, state) {
        final selectedCards = state.selectedCards.length ?? 0;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: badges.Badge(
            badgeAnimation: const badges.BadgeAnimation.scale(
              animationDuration: Duration(milliseconds: 300),
              curve: Curves.easeInOutCubic,
            ),
            badgeContent: Text(
              selectedCards.toString(),
              style: const TextStyle(color: Colors.white),
            ),
            child: GestureDetector(
              onTap: () {
                context.read<MainBloc>().state.selectedCards.length != 13
                    ? ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Tiếp tục khi chọn đủ 13 lá bài!',
                            style: TextStyle(
                              color: AppColorScheme.white,
                            ),
                          ),
                          duration: const Duration(seconds: 1),
                          backgroundColor: AppColorScheme.black,
                          behavior: SnackBarBehavior
                              .floating, // Nổi lên giữa màn hình
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                        ),
                      )
                    : context
                        .read<MainBloc>()
                        .add(const MainEvent.pickMyCardsEvent());
              },
              child: Image.asset(
                Assets.icons.picker.path,
                width: 50,
                height: 50,
              ),
            ),
          ),
        );
      },
    );
  }
}

class FireButton extends StatefulWidget {
  @override
  _FireButtonState createState() => _FireButtonState();
}

class _FireButtonState extends State<FireButton> with TickerProviderStateMixin {
  bool _isTapped = false;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = Tween<double>(begin: 1.0, end: 1).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTap() {
    setState(() {
      _isTapped = !_isTapped;
      if (_isTapped) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });

    if (_isTapped) {
      Future.delayed(const Duration(milliseconds: 2000), () {
        setState(() {
          _isTapped = false;
          _controller.reverse();
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: GestureDetector(
        onTap: () {
          _onTap();
          print("Button 3 tapped");
        },
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.scale(
              scale: _animation.value,
              child: Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    bottom: -80,
                    child: _isTapped
                        ? Image.asset(
                            Assets.gif.fire.path,
                            width: 150,
                            height: 250,
                          )
                        : const SizedBox.shrink(),
                  ),
                  Image.asset(
                    Assets.icons.play.path,
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

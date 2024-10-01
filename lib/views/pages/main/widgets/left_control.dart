import 'package:badges/badges.dart' as badges;
import 'package:cards/core/app_theme.dart';
import 'package:cards/gen/assets.gen.dart';
import 'package:cards/views/pages/main/bloc/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LeftControl extends StatelessWidget {
  const LeftControl({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return Container(
          color: Colors.transparent,
          padding: EdgeInsets.only(bottom: state.picked ? 15 : 30),
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
              if (state.picked) const RemoveSelectCard(),
              state.picked ? const SortMyCard() : const RemoveSelectCard(),
            ],
          ),
        );
      },
    );
  }
}

class RemoveSelectCard extends StatefulWidget {
  const RemoveSelectCard({super.key});

  @override
  _RemoveSelectCardState createState() => _RemoveSelectCardState();
}

class _RemoveSelectCardState extends State<RemoveSelectCard>
    with TickerProviderStateMixin {
  bool _isPressed = false; // Theo dõi trạng thái binOpen
  bool _isBadgeMoving = false; // Theo dõi trạng thái di chuyển của badge
  late AnimationController _badgeController;
  late Animation<Offset> _badgeAnimation;

  @override
  void initState() {
    super.initState();
    _badgeController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    // Badge sẽ di chuyển theo một đường cong (CurveTween)
    _badgeAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(-1.4, 1.5), // Di chuyển xuống bên trái
    ).animate(CurvedAnimation(
      parent: _badgeController,
      curve: Curves.easeInOutCubic,
    ));
  }

  @override
  void dispose() {
    _badgeController.dispose();
    super.dispose();
  }

  void _onIconTap() {
    setState(() {
      _isPressed = true;
    });
    // Chuyển đổi icon trong 1 giây và bắt đầu di chuyển badge
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _isBadgeMoving = true;
      });
      _badgeController.forward().then((_) {
        // Sau khi badge di chuyển xong, trả lại trạng thái icon binClose
        setState(() {
          _isPressed = false;
          _isBadgeMoving = false;
          _badgeController.reset();
        });
        context.read<MainBloc>().add(const MainEvent.removeSelectCardEvent());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      buildWhen: (previousState, currentState) {
        return previousState.selectedCards != currentState.selectedCards;
      },
      builder: (context, state) {
        final selectedCards = state.selectedCards.length;

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              AnimatedBuilder(
                animation: _badgeAnimation,
                builder: (context, child) {
                  return Positioned(
                    right: -10,
                    top: -15,
                    child: SlideTransition(
                      position: _isBadgeMoving
                          ? _badgeAnimation
                          : Tween<Offset>(begin: Offset.zero, end: Offset.zero)
                              .animate(_badgeController),
                      child: badges.Badge(
                        badgeStyle: badges.BadgeStyle(
                          badgeColor:
                              AppColorScheme.header1, //  Đặt màu nền thành vàng
                        ),
                        badgeAnimation: const badges.BadgeAnimation.rotation(
                          animationDuration: Duration(milliseconds: 300),
                          curve: Curves.easeInOutCubic,
                        ),
                        badgeContent: Text(
                          selectedCards.toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  );
                },
              ),
              GestureDetector(
                onTap: _onIconTap,
                child: Image.asset(
                  _isPressed
                      ? Assets.icons.binOpen.path
                      : Assets.icons.binClose.path, // Thay đổi icon
                  width: _isPressed ? 60 : 50,
                  height: _isPressed ? 60 : 50,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class SortMyCard extends StatelessWidget {
  const SortMyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<MainBloc>().add(const MainEvent.sortMyCardsEvent());
      },
      child: Image.asset(
        Assets.icons.sort.path,
        width: 50,
        height: 50,
      ),
    );
  }
}

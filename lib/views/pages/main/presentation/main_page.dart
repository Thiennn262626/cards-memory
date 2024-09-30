import 'package:cards/core/app_theme.dart';
import 'package:cards/views/pages/main/bloc/main_bloc.dart';
import 'package:cards/views/pages/main/presentation/main_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc()
        ..add(const MainEvent
            .loadCardsEvent()), // Khởi tạo và thêm sự kiện load cards
      child: Scaffold(
        backgroundColor: AppColorScheme.bg,
        body: const MainBody(),
      ),
    );
  }
}

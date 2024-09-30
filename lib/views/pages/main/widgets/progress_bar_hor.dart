import 'dart:async';

import 'package:flutter/material.dart';

class ProgressBarHorizontal extends StatefulWidget {
  const ProgressBarHorizontal({super.key});

  @override
  _ProgressBarHorizontalState createState() => _ProgressBarHorizontalState();
}

class _ProgressBarHorizontalState extends State<ProgressBarHorizontal>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Thiết lập AnimationController với thời gian là 2 giây
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    // Thiết lập Tween để đạt 90% trong 1 giây đầu tiên và hoàn thành trong 1 giây cuối cùng
    _animation = Tween<double>(begin: 0, end: 0.9).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    // Bắt đầu hoạt động của AnimationController
    Timer(const Duration(milliseconds: 0), () {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200, // Đặt chiều rộng của LinearProgressIndicator
          child: LinearProgressIndicator(
            value: (_animation.value < 0.9)
                ? _animation.value * 0.9
                : 0.9 +
                    (_animation.value - 0.9) *
                        0.1, // Chạy nhanh đến 90%, sau đó chậm lại
            backgroundColor: Colors.black, // Màu nền đen
            valueColor: const AlwaysStoppedAnimation<Color>(
                Colors.red), // Màu thanh tiến trình là đỏ
          ),
        ),
      ),
    );
  }
}

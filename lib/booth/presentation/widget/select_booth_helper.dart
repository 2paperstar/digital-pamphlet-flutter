import 'package:digital_pamphlet/booth/presentation/widget/bottom_arrow_indicator.dart';
import 'package:flutter/material.dart';

class SelectBoothHelper extends StatelessWidget {
  const SelectBoothHelper({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Center(
          child: Text('먼저 행사장 화면에서 부스를 선택해주세요!'),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [BottomArrowIndicator()],
                  ),
                ),
                Expanded(flex: 4, child: Container()),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

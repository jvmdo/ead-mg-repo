import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ead_app/presentation/core/app_theme_x.dart';
import 'package:ead_app/presentation/core/text_style_x.dart';
import 'package:ead_app/presentation/widgets/icons/clipboard_list_icon_widget.dart';
import 'package:ead_app/presentation/widgets/icons/door_closed_icon_widget.dart';

class BottomBarWidget extends HookWidget {
  const BottomBarWidget(
    this.tabsRouter, {
    Key? key,
  }) : super(key: key);

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    final _selectedIndex = useState(tabsRouter.activeIndex);

    return Stack(
      children: [
        SizedBox(
          height: 64,
          child: BottomNavigationBar(
            currentIndex: _selectedIndex.value,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Container(),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(),
                label: '',
              ),
            ],
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
              if (index != _selectedIndex.value) {
                _selectedIndex.value = 1 - _selectedIndex.value;
              }
            },
          ),
        ),
        bottomBarItem(context, "History", _selectedIndex.value, 0),
        bottomBarItem(context, "Door", _selectedIndex.value, 1),
      ],
    );
  }

  Positioned bottomBarItem(
    BuildContext context,
    String description,
    int index,
    int pos,
  ) {
    return Positioned(
      left: pos == 0 ? 0.0 : 207.0,
      child: IgnorePointer(
        child: Container(
          width: 206.0,
          height: 64.0,
          color: index != pos ? context.inputColor : Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (pos == 0)
                const ClipboardListIconWidget()
              else
                const DoorClosedIconWidget(),
              const SizedBox(
                width: 8.0,
              ),
              Text(
                description,
                style: context.headline3.copyWith(
                  color: context.backgroundColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

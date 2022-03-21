import '../../../../../utils/import.dart';

class HeaderArea extends StatelessWidget {
  const HeaderArea({
    Key? key,
    required this.size,
    required this.isDark,
  }) : super(key: key);

  final Size size;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      padding: const EdgeInsets.only(
        top: padding20 * 2.5,
      ),
      child: SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Stack(
              children: [
                Container(),
                // 左のボタン
                IconButton(
                  icon: Icon(
                    Icons.menu_rounded,
                    color: isDark == true ? Colors.white : Colors.black,
                  ),
                  onPressed: () {
                    GoRouter.of(context).go('/');
                  },
                ),
              ],
            ),
            // 検索アイコン
            IconButton(
              icon: Icon(
                Icons.search_rounded,
                color: isDark == true ? Colors.white : Colors.black,
              ),
              onPressed: () {
                GoRouter.of(context).go('/');
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter_advanced/pages/ex_lesson/constants.dart';

import '../../../../utils/import.dart';

class ExHomeScreen extends StatefulWidget {
  const ExHomeScreen({Key? key}) : super(key: key);

  @override
  _ExHomeScreenState createState() => _ExHomeScreenState();
}

class _ExHomeScreenState extends State<ExHomeScreen> {
  // ダークモード切り替え
  bool isDark = false;
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    // サイズ取得
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: isDark == true ? backDark : Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding20),
          child: Column(
            children: [
              /// ヘッダーエリア
              HeaderArea(
                size: size,
                isDark: isDark,
              ),
              const SizedBox(height: 30),

              /// 大見出しエリア
              TitleArea(
                size: size,
                isDark: isDark,
              ),
              const SizedBox(height: 30),

              /// 中断タイトル
              Row(
                children: [
                  Text(
                    'Explore',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                      color: isDark == true ? Colors.white : Colors.black,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (isDark == false) {
                          isDark = true;
                        } else {
                          isDark = false;
                        }
                      });
                    },
                    icon: Icon(
                      Icons.tune_rounded,
                      color: isDark == true ? Colors.white : Colors.black,
                    ),
                  )
                ],
              ),

              /// Tab
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TabTextButton(0, 'Recommended'),
                    TabTextButton(1, 'New Models'),
                    TabTextButton(2, '2020 show'),
                  ],
                ),
              ),

              /// おすすめモデル
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RecommendModelCard(
                    size: size,
                    imagePath: 'assets/images/model_1.png',
                    modelName: 'Niketa William',
                    cityName: 'Paris',
                    isDark: isDark,
                  ),
                  RecommendModelCard(
                    size: size,
                    imagePath: 'assets/images/model_2.png',
                    modelName: 'Trisha Louis',
                    cityName: 'London',
                    isDark: isDark,
                  ),
                ],
              ),
              FeatureModelCard(size: size),
            ],
          ),
        ),
      ),
    );
  }

  /// タブ切り替えボタン
  TextButton TabTextButton(index, String text) {
    return TextButton(
      onPressed: () {
        setState(() {
          tabIndex = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          color: tabIndex == index
              ? isDark == true
                  ? Colors.white
                  : textPurple
              : isDark == true
                  ? Colors.grey
                  : Colors.black,
        ),
      ),
    );
  }
}

import '../../../../../utils/import.dart';

class TitleArea extends StatelessWidget {
  const TitleArea({
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Fashion Week',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900, color: isDark == true ? Colors.white : textPurple),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '2021 Fashion show in Paris',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: isDark == true ? Colors.grey : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

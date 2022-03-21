import '../../../../../utils/import.dart';

class RecommendModelCard extends StatelessWidget {
  const RecommendModelCard({
    Key? key,
    required this.size,
    required this.imagePath,
    required this.modelName,
    required this.cityName,
    required this.isDark,
  }) : super(key: key);

  final Size size;
  final String imagePath;
  final String modelName;
  final String cityName;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: padding20,
        bottom: padding20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width * 0.4,
            height: size.height * 0.25,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              //画像
              child: Image.asset(
                imagePath,
                fit: BoxFit.fill,
              ),
            ),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 1.0,
                  blurRadius: 15.0,
                  offset: Offset(0, 10),
                ),
              ],
            ),
          ),

          /// テキストエリア
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 15,
              bottom: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  modelName,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: isDark == true ? Colors.grey : Colors.black,
                  ),
                ),
                Text(
                  cityName,
                  style: TextStyle(
                    color: isDark == true ? Colors.grey : Colors.black,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

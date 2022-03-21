import '../../../../../utils/import.dart';

class FeatureModelCard extends StatelessWidget {
  const FeatureModelCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 180,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        //画像
        child: Image.asset(
          'assets/images/model_3.png',
          fit: BoxFit.cover,
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
    );
  }
}

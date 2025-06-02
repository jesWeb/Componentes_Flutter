import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        //estsos son los atributos que recibe
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          CustomCard1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(name: 'porche 1'
            ,
              imageUrl:
                  'https://images-porsche.imgix.net/-/media/9CD53A02737F40A0806BB5EAE1A80F54_D92CC07A446F4B0A8A492A88DD260C0C_911_carrera_gts_sideshot?w=600&q=45&crop=faces%2Centropy%2Cedges&auto=format'),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
              imageUrl:
                  'https://images-porsche.imgix.net/-/media/3E21D30B38B9493DB0857BBBEF18A927_D65EC42E368B435398BE6AD275F02F59_CM24N3KIX0002-718-cayman-gts-40-side?w=1400&q=45&crop=faces%2Centropy%2Cedges&auto=format'),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
              imageUrl:
                  'https://images-porsche.imgix.net/-/media/E27875C9513D4899B596093AC53B7407_8EA111E8A92F4A7BAC344DAD79DA99EE_718-Boxster-GTS-40-sideshot?w=600&q=45&crop=faces%2Centropy%2Cedges&auto=format'),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

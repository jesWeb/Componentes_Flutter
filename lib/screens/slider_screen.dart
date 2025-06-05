import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double sliderValue = 100;
  bool sliderEnable = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'slider y checks',
        style: TextStyle(color: Colors.white),
      )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
                min: 50,
                max: 400,
                activeColor: AppTheme.tool,
                value: sliderValue,
                onChanged: sliderEnable
                    ? (value) {
                        sliderValue = value;
                        //* este es para que actualize el estado
                        setState(() {});
                        print(value);
                      }
                    : null),

            SingleChildScrollView(
              child: Image(
                  fit: BoxFit.contain,
                  width: sliderValue,
                  image: NetworkImage(
                      'https://static.vecteezy.com/system/resources/thumbnails/046/816/636/small/colorful-and-glowing-nebula-clouds-beautiful-space-landscape-free-photo.jpg')),
            ),
            // Checkbox(
            //     value: sliderEnable,
            //     onChanged: (value) {
            //       sliderEnable = value ?? true;
            //       setState(() {});
            //     })

            Center(
              child: CheckboxListTile(
                  activeColor: AppTheme.primary,
                  title: Text('Habilitar  Slider con checkbox',
                      style: TextStyle(fontSize: 16)),
                  value: sliderEnable,
                  onChanged: (value) => setState(() {
                        sliderEnable = value ?? true;
                      })),
            ),

            SwitchListTile.adaptive(
                activeColor: AppTheme.primary,
                title: Text('Habilitar  Slider con switch',
                    style: TextStyle(fontSize: 16)),
                value: sliderEnable,
                onChanged: (value) => setState(() {
                      sliderEnable = value;
                    })),

            AboutListTile()
          ],
        ),
      ),
    );
  }
}

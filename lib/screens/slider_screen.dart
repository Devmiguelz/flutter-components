import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _value = 100;
  bool _isEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider & Checks'),
      ),
      body: Column(
         children: [
          Slider.adaptive(
            min: 50,
              max: 400,
              activeColor: AppTheme.primaryColor,
              value: _value,
              onChanged: _isEnabled
                  ? (value) {
                      setState(() {
                        _value = value;
                      });
                    }
                  : null),
          /* Checkbox(
              value: _isEnabled,
              onChanged: (value) {
                setState(() {
                  _isEnabled = value ?? true;
                });
              }),

            CheckboxListTile(
              activeColor: AppTheme.primaryColor,
              title: const Text('Habilitar Slider'),
              value: _isEnabled, 
              onChanged: (value) => setState(() => _isEnabled = value ?? true)), */

            SwitchListTile.adaptive(
              activeColor: AppTheme.primaryColor,
              title: const Text('Habilitar Slider'),
              value: _isEnabled, 
              onChanged: (value) => setState(() => _isEnabled = value )),

            Image(image: NetworkImage('https://static.wikia.nocookie.net/teentitansgofanon/images/3/37/Batman1.jpg/revision/latest?cb=20140714234718&path-prefix=es'),
                  width: _value,)
         ],
      ),
    );
  }
}
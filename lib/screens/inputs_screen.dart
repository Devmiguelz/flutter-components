import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int numeroCaracteres = 5;

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'nombre': 'Miguel',
      'apellido': 'Zambrano',
      'email': 'zmiguel96@gmail.com',
      'password': 'Miguel',
      'rol': 'Admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Ingrese su nombre de usuario',
                    counterText: 'Máximo $numeroCaracteres caracteres',
                    suffixIcon: Icons.person,
                    validationFn: (value) {
                      if (value == null || value.isEmpty) {
                        return 'El campo es obligatorio';
                      }

                      if (value.length < numeroCaracteres) {
                        return 'El campo debe tener al menos $numeroCaracteres caracteres';
                      }
                    },
                    formProperty: 'nombre',
                    formValues: formValues),
                const SizedBox(height: 20),
                CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Ingrese su Apellido de usuario',
                    counterText: 'Máximo $numeroCaracteres caracteres',
                    suffixIcon: Icons.person,
                    validationFn: (value) {
                      if (value == null || value.isEmpty) {
                        return 'El campo es obligatorio';
                      }

                      if (value.length < numeroCaracteres) {
                        return 'El campo debe tener al menos $numeroCaracteres caracteres';
                      }
                    },
                    formProperty: 'apellido',
                    formValues: formValues),
                const SizedBox(height: 20),
                CustomInputField(
                    labelText: 'Email',
                    hintText: 'Ingrese su email',
                    counterText: '',
                    inputType: TextInputType.emailAddress,
                    suffixIcon: Icons.email,
                    validationFn: (value) {
                      if (value == null || value.isEmpty) {
                        return 'El campo es obligatorio';
                      }
                    },
                    formProperty: 'email',
                    formValues: formValues),
                const SizedBox(height: 20),
                CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Ingrese su contraseña',
                    counterText: '',
                    obscureText: true,
                    suffixIcon: Icons.password,
                    validationFn: (value) {
                      if (value == null || value.isEmpty) {
                        return 'El campo es obligatorio';
                      }
                    },
                    formProperty: 'password',
                    formValues: formValues),
                const SizedBox(height: 20),

                DropdownButtonFormField<String>(
                  value: 'Admin',
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'User', child: Text('User')),
                  ],
                  onChanged: (value) {
                    formValues['rol'] = value ?? 'admin';
                  },
                ),

                ElevatedButton(
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Guardar'))),
                    onPressed: () {
                      FocusManager.instance.primaryFocus?.unfocus();

                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no validado');
                        return;
                      }

                      print(formValues);
                    })
              ],
            ),
          ),
        )));
  }
}

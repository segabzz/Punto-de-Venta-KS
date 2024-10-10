import 'package:flutter/material.dart';

class Ingresar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Ingresar'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Iniciar Sesion'),
              Tab(text: 'Registro'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildLoginTab(context),
            _buildRegisterTab(context),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginTab(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Image.asset(
            'assets/images/Usuario.png',
            width: 133,
            height: 116,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Usuario'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Contraseña'),
            obscureText: true,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Lógica para iniciar sesión
            },
            child: Text('Iniciar Sesion'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('No tienes una cuenta? Registrate ---->'),
              TextButton(
                onPressed: () {
                  DefaultTabController.of(context).animateTo(1);
                },
                child: Text('Registrarse'),
                style: TextButton.styleFrom(foregroundColor: Colors.green),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRegisterTab(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Nombre del Usuario'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Contraseña'),
            obscureText: true,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'E-Mail'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Telefono'),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Lógica para guardar
                },
                child: Text('Guardar'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Lógica para salir
                },
                child: Text('Salir'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
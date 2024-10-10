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
            child: Text('Iniciar Sesión'),
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
            decoration: InputDecoration(labelText: 'Nombre de Usuario'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Correo Electrónico'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Contraseña'),
            obscureText: true,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Lógica para registrar
            },
            child: Text('Registrar'),
          ),
        ],
      ),
    );
  }
}
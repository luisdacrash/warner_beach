import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:warner_beach/menu_item.dart';
import 'package:warner_beach/image_button.dart';
import 'package:warner_beach/screens/load_screen.dart';
import 'package:warner_beach/menu_button.dart';

class HomeScreen extends StatelessWidget {
  static var name = "home_screen";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200),
          child: AppBar(
            leading: IconButton(onPressed: ()=>{context.goNamed(LoadScreen.name)}, icon: const Icon(Icons.arrow_back)),
            flexibleSpace: 
            const Center(child: FadeInImage(placeholder:  AssetImage( "assets/images/imagen_logo.png"),image:  AssetImage( "assets/images/imagen_logo.png"),)),
            backgroundColor: Colors.lightBlue[900],
          ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  GestureDetector(
                    onTap: ()=>{print('Buscar')},
                    child: const MenuButton(icon: Icons.search, text: "Buscar"),
                  ),
        
                  GestureDetector(
                    onTap: ()=>{print("Entradas")},
                    child: const MenuButton(icon: Icons.airplane_ticket_sharp, text: "Mis Entradas"),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  GestureDetector(
                    onTap: ()=>{print("Atracciones")},
                    child: const ImageButton(image: "assets/images/imagen_atracciones.png",text: "Atracciones",width: 400,height: 250,)
                  ),
        
                  GestureDetector(
                    onTap: ()=>{print("Restaurantes")},
                    child: const ImageButton(image: "assets/images/imagen_restaurante.png",text: "Restaurantes",width: 400,height: 250,)
                  )
                ],
              ),    
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  GestureDetector(
                    onTap: ()=>{print("Mapa")},
                    child: const ImageButton(image: "assets/images/imagen_mapa.png",text: "Mapa",width: 800,height: 250,)
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 700,
                child: MenuItem(icon: Icons.shop, text: 'Tienda')
              ),
              const SizedBox(
                width: 700,
                child: MenuItem(icon: Icons.map, text: 'Cómo llegar')
              ),
              const SizedBox(
                width: 700,
                child: MenuItem(icon: Icons.schedule, text: 'Horario de apertura')
              ),
              const SizedBox(
                width: 700,
                child: MenuItem(icon: Icons.card_giftcard, text: 'Otros servicios')
              ),
              const SizedBox(
                width: 700,
                child: MenuItem(icon: Icons.book, text: 'Normas de funcionamiento')
              ),
            ],                
          ),
        ),
      ),       
    );
  }
}

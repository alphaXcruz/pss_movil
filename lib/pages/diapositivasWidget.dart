import 'package:flutter/material.dart';
import 'package:pss_movil/generated/assets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final double width = constraints.maxWidth;
          final double height = constraints.maxHeight;

          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //SizedBox(height: height * 0.0000002), // Espacio para la barra de estado
              Image.asset(
                Assets.imagesLogoID,
                width: 200,
                height: 200,
              ),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  children: <Widget>[
                    buildPage(
                      context,
                      imagePath: Assets.imagesImagen1,
                      subtitle: 'Conectando',
                      description: '¡Bienvenido a SupportGenius! Tu compañero de confianza para resolver cualquier problema.',
                      height: height * 0.7,
                    ),
                    buildPage(
                      context,
                      imagePath: Assets.imagesImagen2,
                      subtitle: 'Soluciones',
                      description: 'Preparados para ayudarte en cada paso. Tu solución inmediata está aquí.',
                      height: height * 0.7,
                    ),
                    buildPage(
                      context,
                      imagePath: Assets.imagesImagen3,
                      subtitle: 'Experiencia',
                      description: 'Conectando personas con soluciones. Inicia tu experiencia ahora mismo.',
                      height: height * 0.7,
                    ),
                  ],
                ),
              ),
              SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: WormEffect(
                  activeDotColor: Colors.green,
                  dotHeight: 10,
                  dotWidth: 10,
                ),
              ),
              SizedBox(height: height * 0.03),
              SizedBox(
                width: width * 0.8, // Ancho del botón responsivo
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  child: Text('Comenzar'),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text('¿No tienes cuenta? Regístrate'),
              ),
              SizedBox(height: height * 0.02), // Espacio para la navegación inferior
            ],
          );
        },
      ),
    );
  }

  Widget buildPage(BuildContext context, {required String imagePath, required String subtitle, required String description, required double height}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imagePath, height: height * 0.4),
          SizedBox(height: height * 0.05),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          SizedBox(height: height * 0.02),
          Text(
            description,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
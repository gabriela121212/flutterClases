import 'package:flutter/material.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';

class Category {
  final String name;
  final String imageUrl;
  Category({required this.name, required this.imageUrl});
}

class Categorias extends StatelessWidget {
  Categorias({super.key});

  final List<Category> categorias = [
    Category(
      name: 'Categoria 1',
      imageUrl:
          'https://plus.unsplash.com/premium_photo-1711031505781-2a45c879ceac?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW0lQzMlQTFnZW5lcyUyMGltcHJlc2lvbmFudGVzfGVufDB8fDB8fHww&fm=jpg&q=60&w=3000',
    ),
    Category(
      name: 'Categoria 2',
      imageUrl:
          'https://cdn.pixabay.com/photo/2023/03/16/08/42/camping-7856198_640.jpg',
    ),
    Category(
      name: 'Categoria 3',
      imageUrl:
          'https://media.istockphoto.com/id/636379014/es/foto/manos-la-formaci%C3%B3n-de-una-forma-de-coraz%C3%B3n-con-silueta-al-atardecer.jpg?s=612x612&w=0&k=20&c=R2BE-RgICBnTUjmxB8K9U0wTkNoCKZRi-Jjge8o_OgE=',
    ),
    Category(
      name: 'Categoria 4',
      imageUrl:
          'https://ichef.bbci.co.uk/ace/ws/640/cpsprodpb/9db5/live/48fd9010-c1c1-11ee-9519-97453607d43e.jpg.webp',
    ),
    Category(
      name: 'Categoria 5',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAvOTdPxzNS5A_qxE_wiDMo6qD55nsEFU7LA&s',
    ),
  ];

  final CarouselSliderController buttonCarouselController =
      CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Categorías')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),

            // 🔹 Carrusel principal
            CarouselSlider(
              items: categorias
                  .map(
                    (cat) => ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        cat.imageUrl,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  )
                  .toList(),
              controller: buttonCarouselController,
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.8,
                aspectRatio: 16 / 9,
                initialPage: 0,
              ),
            ),

            const SizedBox(height: 30),

            // 🔹 Lista horizontal con avatares y nombres
            SizedBox(
              height: 130,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                itemCount: categorias.length,
                separatorBuilder: (context, index) => const SizedBox(width: 16),
                itemBuilder: (context, index) {
                  final category = categorias[index];
                  return Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(category.imageUrl),
                      ),
                      const SizedBox(height: 8),
                      Text(category.name),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

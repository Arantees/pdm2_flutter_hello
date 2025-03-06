import 'package:flutter/material.dart';

class PhotoBookPage extends StatefulWidget {
  const PhotoBookPage({super.key});

  @override
  State<PhotoBookPage> createState() => _PhotoBookPageState();
}

class _PhotoBookPageState extends State<PhotoBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PhotoBook'),
      ),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    'https://picsum.photos/seed/${index * 5}/640/480',
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                ListTile(
                  title: Text('Lorem ipsum dolor sit amet...'),
                  subtitle: Text('Subtitulo'),
                ),
                OverflowBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.share),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

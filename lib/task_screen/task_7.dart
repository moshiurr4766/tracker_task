import 'package:flutter/material.dart';

class Task7 extends StatelessWidget {
  const Task7({super.key});

  final List<String> imageUrls = const [
    'https://picsum.photos/id/10/500/500',
    'https://picsum.photos/id/11/500/500',
    'https://picsum.photos/id/12/500/500',
    'https://picsum.photos/id/13/500/500',
    'https://picsum.photos/id/14/500/500',
    'https://picsum.photos/id/15/500/500',
    'https://picsum.photos/id/16/500/500',
    'https://picsum.photos/id/17/500/500',
    'https://picsum.photos/id/18/500/500',
    'https://picsum.photos/id/19/500/500',
    'https://picsum.photos/id/20/500/500',
    'https://picsum.photos/id/21/500/500',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Grid Gallery'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            crossAxisSpacing: 10, 
            mainAxisSpacing: 10, 
            childAspectRatio: 1, 
          ),
          itemCount: imageUrls.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                imageUrls[index],
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return const Center(
                    child: Icon(Icons.error, color: Colors.red),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newsapp2/models/news_model.dart';
import 'package:newsapp2/widgets/null_image.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({required this.model, super.key});
  final NewsModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: model.image != null && model.image!.isNotEmpty
                ? CachedNetworkImage(
                    imageUrl: model.image!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    errorWidget: (context, url, error) => const NullImage(),
                  )
                : const NullImage(),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            model.heading,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          model.description != null
              ? Text(
                  model.description!,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.grey, fontSize: 16),
                )
              : const Text(''),
        ],
      ),
    );
  }
}



// model.image != null && model.image!.isNotEmpty
          //     ? CachedNetworkImage(
          //         imageUrl: model.image!,
          //         fit: BoxFit.cover,
          //         width: double.infinity,
          //         height: 200,
          //         placeholder: (context, url) => const Center(
          //           child: CircularProgressIndicator(),
          //         ),
          //         errorWidget: (context, url, error) => const Center(
          //           child:
          //               Icon(Icons.broken_image, size: 50, color: Colors.grey),
          //         ),
          //       )
          //     : const Icon(
          //         Icons.image_not_supported_outlined,
          //         size: 50,
          //         color: Colors.grey,
          //       ),
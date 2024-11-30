import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newsapp2/models/news_model.dart';
import 'package:newsapp2/widgets/null_image.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({required this.model, super.key});
  final NewsModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'News Details',
        ),
        backgroundColor: Colors.amber,
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          // Allows scrolling when content is long
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image Section
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: model.image != null && model.image!.isNotEmpty
                    ? CachedNetworkImage(
                        imageUrl: model.image!,
                        height: 250,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        errorWidget: (context, url, error) => const NullImage(),
                      )
                    : const NullImage(),
              ),
              const SizedBox(height: 20),

              // Heading Section
              Text(
                model.heading,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 12),

              // Author and Date Info (Scrollable Row)
              Row(
                children: [
                  const Icon(Icons.person, size: 20, color: Colors.grey),
                  const SizedBox(width: 8),
                  Expanded(
                    // Allow the author text to expand
                    child: SingleChildScrollView(
                      // Makes the author name scrollable if needed
                      scrollDirection: Axis.horizontal,
                      child: Text(
                        model.author ?? 'Unknown',
                        style: const TextStyle(
                            fontSize: 16, color: Colors.black54),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Icon(Icons.schedule_rounded,
                      size: 20, color: Colors.grey),
                  const SizedBox(width: 8),
                  Expanded(
                    // Allow the date text to expand
                    child: SingleChildScrollView(
                      // Makes the date scrollable if needed
                      scrollDirection: Axis.horizontal,
                      child: Text(
                        model.date ?? 'Unknown',
                        style: const TextStyle(
                            fontSize: 16, color: Colors.black54),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Description Section
              model.description != null
                  ? Text(
                      model.description!,
                      textAlign: TextAlign.start,
                      style:
                          const TextStyle(fontSize: 16, color: Colors.black87),
                    )
                  : const SizedBox.shrink(),
              const SizedBox(height: 12),

              // Content Section
              model.content != null
                  ? Text(
                      model.content!,
                      textAlign: TextAlign.start,
                      style:
                          const TextStyle(fontSize: 16, color: Colors.black87),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}

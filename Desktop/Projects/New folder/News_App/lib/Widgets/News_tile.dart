import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_flutter_app/clases/article_model.dart';
import 'package:shimmer/shimmer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Newstile extends StatefulWidget {
  const Newstile({super.key, required this.Article});

  final article_model Article;

  @override
  State<Newstile> createState() => _NewstileState();
}

class _NewstileState extends State<Newstile> {
  late final WebViewController controller;
  var loadingPercentage = 0;
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(NavigationDelegate(
        onPageStarted: (url) {
          setState(() {
            loadingPercentage = 0;
          });
        },
        onProgress: (progress) {
          setState(() {
            loadingPercentage = progress;
          });
        },
        onPageFinished: (url) {
          setState(() {
            loadingPercentage = 100;
          });
        },
      ))
      ..loadRequest(
        Uri.parse(widget.Article.url!),
      );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return Stack(children: [
            WebViewWidget(
              controller: controller,
            ),
            if (loadingPercentage < 100)
              LinearProgressIndicator(
                value: loadingPercentage / 100.0,
              ),
          ]);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Column(children: [
          ClipRRect(
            child: CachedNetworkImage(
              imageUrl: widget.Article.image ?? "",
              placeholder: (context, url) => Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
               highlightColor: Colors.grey[100]!,
           child: Container(
    color: Colors.grey,
  ),
),
              errorWidget: (context, url, error) => Icon(Icons.error),
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            //
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Text(
              widget.Article.title!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: widget.Article.subtitle != null
                ? Text(
                    maxLines: 2,
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                    widget.Article.subtitle!)
                :Text(''),
          ),
        ]),
      ),
    );
  }
}

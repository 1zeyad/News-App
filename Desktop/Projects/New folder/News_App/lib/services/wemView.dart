// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:my_flutter_app/clases/article_model.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class Newstile extends StatefulWidget {
//   const Newstile({super.key, required this.Article});

//   final article_model Article;

//   @override
//   State<Newstile> createState() => _NewstileState();
// }

// class _NewstileState extends State<Newstile> {
//   late final WebViewController controller;

//   @override
//   void initState() {
//     super.initState();
//     controller = WebViewController()
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..loadRequest(
//         Uri.parse('https://www.youtube.com/watch?v=3nnmC2tS5YA'),
//       );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.of(context).push(
//           MaterialPageRoute(
//             builder: (context) {
//               return Scaffold(
//                 appBar: AppBar(
//                   title: Text('WebView'),
//                 ),
//                 body: WebViewWidget(controller: controller),
//               );
//             },
//           ),
//         );
//       },
//       child: Padding(
//         padding: const EdgeInsets.only(top: 10, bottom: 10),
//         child: Column(
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(12),
//               child: CachedNetworkImage(
//                 imageUrl: widget.Article.image ?? "",
//                 placeholder: (context, url) => CircularProgressIndicator(),
//                 errorWidget: (context, url, error) => Icon(Icons.error),
//                 height: 200,
//                 width: double.infinity,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             const SizedBox(height: 10),
//             Padding(
//               padding: const EdgeInsets.only(left: 6),
//               child: Text(
//                 widget.Article.title ?? 'No Title',
//                 maxLines: 2,
//                 overflow: TextOverflow.ellipsis,
//                 style: const TextStyle(
//                     color: Colors.black87,
//                     fontSize: 15,
//                     fontWeight: FontWeight.w500),
//               ),
//             ),
//             const SizedBox(height: 3),
//             Padding(
//               padding: const EdgeInsets.only(left: 6),
//               child: Text(
//                 widget.Article.subtitle ?? 'No Subtitle',
//                 maxLines: 2,
//                 style: const TextStyle(color: Colors.grey, fontSize: 14),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

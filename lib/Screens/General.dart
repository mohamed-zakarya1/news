import 'package:flutter/material.dart';
import 'package:news/Providers/news_provider.dart';
import 'package:provider/provider.dart';
import 'package:news/Widgets/cusom_widget.dart';

class General extends StatelessWidget {
  int count = 0;
   General({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('General Articles'),
      ),
      body: Consumer<NewsProvider>(builder: (context, value, child) {
        if ((value.model != null || value.model == null) && count == 0) {
          count++;
          value.fetchAPI('general');
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(itemBuilder: (context, index) {
              return CusomWidget(author: value.model!.model[index]['author'],
                  description: value.model!.model[index]['description'],
                  URL: value.model!.model[index]['urlToImage'],
                  Published: value.model!.model[index]['publishedAt'],
                  content: value.model!.model[index]['content'], tot: value.model!.total,
              );
            },
            itemCount: value.model?.model.length,
          );
        }

      },),
    );
  }
}

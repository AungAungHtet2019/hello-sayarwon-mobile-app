import 'package:flutter/material.dart';
import 'package:hellosayarwon/hellosayarwon/domain/entities/paras/get_articles_para.dart';
import 'package:hellosayarwon/hellosayarwon/presentation/providers/article_provider.dart';
import 'package:provider/provider.dart';

class TestPage extends StatefulWidget {
  static const String routeName = "/TestPage";
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Page"),
      ),
      body: ListView(
        children: [
          ListTile(title: const Text("Refresh Articles"), onTap: _refreshArticles, ),
          ListTile(title: const Text("Load More Articles"), onTap: _loadMoreArticles, ),
          ListTile(title: const Text("Article Detail"), onTap: _articleDetail, ),
        ],
      ),
    );
  }

  Future<void> _refreshArticles() async{
    print("TestPage->_refreshArticles");
    String accessToken = "";
    String query = "";
    int categoryId = 0;
    int page = 1;
    GetArticlesPara getArticlesPara = GetArticlesPara(accessToken: accessToken, query: query, categoryId: categoryId, page: page);
    bool status = await Provider.of<ArticleProvider>(context, listen: false).getArticlesPlz(getArticlesPara: getArticlesPara);
    print("TestPage->_refreshArticles status $status");
  }
  Future<void> _loadMoreArticles() async{

  }
  Future<void> _articleDetail() async{

  }
}
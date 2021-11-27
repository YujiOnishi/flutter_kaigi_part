import 'package:atomic_design_handson/components/core/organisms/article_body.dart';
import 'package:atomic_design_handson/components/core/organisms/footer.dart';
import 'package:atomic_design_handson/components/core/organisms/image_header.dart';
import 'package:atomic_design_handson/components/core/organisms/side_info_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndexTemplate extends StatefulWidget {
  const IndexTemplate({Key? key, this.data}) : super(key: key);
  final Map? data;

  @override
  _IndexTemplateState createState() => _IndexTemplateState();
}

class _IndexTemplateState extends State<IndexTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data!['title']),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ImageHeaderOrganisms(data: widget.data!['header']),
            Container(
                padding: const EdgeInsets.only(
                  top: 30,
                  bottom: 30,
                  right: 50,
                  left: 50,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.black12,
                      width: 1000,
                      padding: const EdgeInsets.only(
                        top: 50,
                        bottom: 50,
                        right: 50,
                        left: 50,
                      ),
                      child: ArticleBodyOrganisms(
                          data: widget.data!['body']['articles']),
                    ),
                    Container(
                      width: 200,
                      padding: const EdgeInsets.only(
                        top: 0,
                        bottom: 0,
                        right: 0,
                        left: 30,
                      ),
                      color: Colors.white,
                      height: 1000,
                    ),
                  ],
                )),
            Container(
              padding: const EdgeInsets.only(
                top: 0,
                bottom: 30,
                right: 0,
                left: 0,
              ),
              child: FooterOrganisms(data: widget.data!['footer']),
            ),
          ],
        ),
      ),
    );
  }
}

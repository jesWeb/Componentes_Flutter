import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListviewBuilderScreen extends StatefulWidget {
  const ListviewBuilderScreen({super.key});

  @override
  State<ListviewBuilderScreen> createState() => _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends State<ListviewBuilderScreen> {
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  final ScrollController scrollControlado = ScrollController();

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollControlado.addListener(() {
      if ((scrollControlado.position.pixels + 500) >=
          scrollControlado.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  Future fetchData() async {
    if (isLoading) {
      return;
    }

    isLoading = true;

    setState(() {});

    await Future.delayed(Duration(seconds: 3));

    add5();

    isLoading = false;
    setState(() {});

    if (scrollControlado.position.pixels + 100 <=
        scrollControlado.position.maxScrollExtent) {
      return;
    }

    scrollControlado.animateTo(scrollControlado.position.pixels + 120,
        duration: Duration(milliseconds: 300), curve: Curves.fastOutSlowIn);
  }

  void add5() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
  }

  Future<void> onRefresh() async {
    await Future.delayed(Duration(seconds: 2));
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1);
    add5();
   
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator.adaptive(
              color: AppTheme.primary,
              onRefresh: onRefresh,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                controller: scrollControlado,
                itemCount: imagesIds.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                      width: double.maxFinite,
                      height: 250,
                      fit: BoxFit.contain,
                      placeholder: const AssetImage('assets/jar-loading.gif'),
                      image: NetworkImage(
                        'https://picsum.photos/500/300?image=${imagesIds[index]}',
                      ));
                },
              ),
            ),
            if (isLoading)
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: loadingIcon(),
                ),
              )
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class loadingIcon extends StatelessWidget {
  const loadingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.9,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        width: 50,
        height: 50,
        child: CircularProgressIndicator(color: AppTheme.primary),
      ),
    );
  }
}

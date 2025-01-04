import 'package:flutter/material.dart';

void main() async {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AnimationPage(),
    );
  }
}

class ImplicitPage extends StatefulWidget {
  const ImplicitPage({super.key});

  @override
  State<ImplicitPage> createState() => _ImplicitPageState();
}

class _ImplicitPageState extends State<ImplicitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SecondPage(
                        index: index,
                      );
                    }));
                  },
                  child: Hero(
                    tag: "title $index",
                    child: const Icon(
                      Icons.abc,
                      size: 50,
                    ),
                  ));
            }),
      ),
    );
  }
}

// ignore: must_be_immutable
class SecondPage extends StatefulWidget {
  SecondPage({super.key, required this.index});

  int index;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child:
              Hero(tag: "title ${widget.index}", child: const Icon(Icons.abc))),
    );
  }
}

class ExplicitPage extends StatefulWidget {
  const ExplicitPage({super.key});

  @override
  State<ExplicitPage> createState() => _ExplicitPageState();
}

class _ExplicitPageState extends State<ExplicitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          curve: Curves.easeInBack,
          tween: Tween<double>(begin: 5, end: 20),
          duration: const Duration(seconds: 2),
          builder: (context, value, child) {
            return Padding(
              padding: EdgeInsets.only(top: value * 10),
              child: Text(
                "flutter animation",
                style: TextStyle(fontSize: 2 * value),
              ),
            );
          },
          child: const Text(
            "flutter animation",
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<Color?>? colorAnimation;
  Animation<double>? sizeAnimation;
  Animation<double>? curveAnimation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    curveAnimation = CurvedAnimation(
      parent: animationController!,
      curve: Curves.fastOutSlowIn,
    );

    colorAnimation = ColorTween(begin: Colors.grey, end: Colors.red)
        .animate(curveAnimation!);

    sizeAnimation = TweenSequence(<TweenSequenceItem<double>>[
      TweenSequenceItem(tween: Tween(begin: 20, end: 70), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 70, end: 30), weight: 2),
      TweenSequenceItem(tween: Tween(begin: 30, end: 50), weight: 5),
      TweenSequenceItem(tween: Tween(begin: 50, end: 20), weight: 1),
    ]).animate(animationController!);

    // animationController!.addListener(() {
    //   print(animationController!.value);
    // });

    animationController!.addStatusListener((state) {
      print(state.name);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: animationController!,
          builder: (context, _) {
            return IconButton(
              onPressed: () {
                animationController!.isCompleted
                    ? animationController!.reverse()
                    : animationController!.forward();
              },
              icon: Icon(
                Icons.favorite,
                // size: 50,
                // size: animationController!.value == 0
                //     ? 50
                //     : animationController!.value * 100,
                size: sizeAnimation!.value * 5,
                color: colorAnimation!.value,
              ),
            );
          },
        ),
      ),
    );
  }
}

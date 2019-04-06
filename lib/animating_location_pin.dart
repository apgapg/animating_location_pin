library animating_location_pin;

import 'package:flutter/material.dart';

class AnimatingLocationPin extends StatefulWidget {
  final double pinSize;
  final double shadowSizeFactor;
  final String pinAsset;
  final String shadowAsset;
  final double pinJumpHeight;
  final Duration duration;

  AnimatingLocationPin({
    this.pinSize = 80.0,
    this.shadowSizeFactor = 0.43,
    this.pinJumpHeight = 40.0,
    this.duration,
    this.pinAsset,
    this.shadowAsset,
  });

  @override
  _AnimatingLocationPinState createState() => _AnimatingLocationPinState();
}

class _AnimatingLocationPinState extends State<AnimatingLocationPin> with SingleTickerProviderStateMixin {
  static const double pinSize = 80.0;
  static const double shadowSizeFactor = 0.43;
  AnimationController _controller;
  Animation<double> translationAnim;
  Animation<double> opacityAnim;
  Animation<double> scaleAnim;

  @override
  void initState() {
    _controller = AnimationController(duration: widget.duration ?? Duration(milliseconds: 500), vsync: this);
    final Animation curve = CurvedAnimation(parent: _controller, curve: Curves.decelerate);
    translationAnim = Tween(begin: 0.0, end: -widget.pinJumpHeight).animate(curve);
    opacityAnim = Tween(begin: 0.6, end: 0.3).animate(curve);
    scaleAnim = Tween(begin: 1.0, end: 1.3).animate(curve);
    _controller.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        if (_controller != null) _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        if (_controller != null) _controller.forward();
      }
    });
    _controller.addListener(() {
      setState(() {});
    });
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 64.0,
          ),
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Transform.translate(
                offset: Offset(0, translationAnim.value),
                child: widget.pinAsset != null
                    ? Image.asset(
                        widget.pinAsset,
                        height: pinSize,
                      )
                    : Image.asset(
                        'assets/images/pin.png',
                        package: 'animating_location_pin',
                        height: pinSize,
                      ),
              ),
              Positioned(
                bottom: 0.0,
                child: Transform.scale(
                  scale: scaleAnim.value,
                  origin: Offset(pinSize * shadowSizeFactor, pinSize * shadowSizeFactor),
                  child: Opacity(
                    opacity: opacityAnim.value,
                    child: Transform.translate(
                      offset: Offset((translationAnim.value * 0.3) - (pinSize * 0.5), -2+translationAnim.value * 0.3),
                      child: widget.shadowAsset != null
                          ? Image.asset(
                              widget.shadowAsset,
                              height: pinSize * shadowSizeFactor,
                            )
                          : Image.asset(
                              'assets/images/shadow.png',
                              package: 'animating_location_pin',
                              height: pinSize * shadowSizeFactor,
                            ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

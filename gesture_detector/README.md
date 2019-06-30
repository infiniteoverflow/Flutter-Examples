# gesture_detector

A new Flutter application which explains the use of Gesture Detectors in Flutter

## How to setup gestures for Widgets

 - Wrap the widget under the GestureDetector Widget and then you can add different gesture listeners.
 
 ```dart
 
  GestureDetector(

          onTap: () {
            print("Puppy Clicked");
          },

          onDoubleTap: () {
            print("Puppy double clicked");
          },

          onLongPress: () {
            print("Puppy Long pressed");
          },

          onVerticalDragStart: (DragStartDetails details) {
            print("Puppy dragged vertically");
            print(details);
          },

          onVerticalDragUpdate: (DragUpdateDetails details) {
            print("Puppy Vertically updated");
            print(details);
          },

          child: Center(
            child: Image(
              image: AssetImage("assets/images/puppy.jpeg")
            ),
          ),
 )
 
 ```
 

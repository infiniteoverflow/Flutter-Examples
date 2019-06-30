# cupertino_switch

A new Flutter application which implements a CupertinoSwitch.

## How to implement a CupertinoSwitch Widget

- Use the following code to implement a switch with initially false

```dart

    CupertinoSwitch(
        value: currentState,
        onPressed: (bool state) {
            setState(() {
                currentState = true;
            });
        }
        activeColor: Colors.red,
    )

```

### Screenshot

![](./screenshots/screen1.png) ![](./screenshots/screen2.png)

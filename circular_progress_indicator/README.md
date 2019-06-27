# circular_progress_indicator

A new Flutter application which implements a CircularProgressIndicator

## How to implement a CircularProgressIndicator

- Use the code below to implement a CircularProgressIndicator

```dart

              CircularProgressIndicator(
                value: progress,
                backgroundColor: Colors.amber[100],
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
              ),

```

- The variable progress takes value from 0 to 1 such that 0 means 0% and 1 means 100% and all other
values lying between them


### Screenshots

![](./screenshots/screen2.png) ![](./screenshots/screen3.png) ![](./screenshots/screen1.png)

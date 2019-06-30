# linear_progress_indicator

A new Flutter application which implements a LinearProgressIndicator

## How to implement a LinearProgressIndicator

- Use the code below to implement a LinearProgressIndicator

```dart

              LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.amber[100],
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
              ),

```

- The variable progress takes value from 0 to 1 such that 0 means 0% and 1 means 100% and all other
values lying between them


### Screenshots

![](./screenshot/screen1.png) ![](./screenshot/screen2.png) ![](./screenshot/screen3.png)

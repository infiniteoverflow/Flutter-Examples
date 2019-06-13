# time_picker

A new Flutter application which implements a time picker Widget

## How to implement Time Picker Widget

- Declare the required varibles to store the current time and the selected time

```

    TimeOfDay _time = TimeOfDay.now();
    TimeOfDay picked;

```

- Declare method to call the Time Picker Widget

```

  Future<Null> selectTime(BuildContext context) async {
    picked = await showTimePicker(
        context: context,
        initialTime: _time,
    );

    if(picked != null && picked != _time) {
      setState(() {
        _time = picked;
      });
    }
  }

```

- Call the above method in any Widget

```

        IconButton(
          icon: Icon(Icons.alarm),
          onPressed: () {
            selectTime(context);
          },
        )

```


### Screenshot

![](screenshots/screen1.png) ![](screenshots/screen2.png) ![](screenshots/screen3.png)
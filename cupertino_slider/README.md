# cupertino_slider

A new Flutter application which implements a CupertinoSlider.

## How to implement a CupertinoSlider

- Use the following code to implement a CupertinoSlider

```

        CupertinoSlider(
            value: value,
            onChanged: (double value) {
              setState(() {
                this.value = value;
                print(this.value);
              });
            },
          min: 0,
          max: 100,
          divisions: 10,
          activeColor: Colors.amber
        )

```

- You can refer to the code of Slider Widget which is same as CupertinoSlider Widget

### Screenshot

![](./screenshot/screen.png)
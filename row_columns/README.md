# row_columns

A new Flutter project to explain the working of Rows and Columns.

* Rows can be defined as:

```
Row(
    children: <Widget> [
        widget1,
        widget2,
        widget3
    ]
)
```

* Columns can be defined as:

```
Column(
    children: <Widget> [
        widget1,
        widget2,
        widget3
    ]
)
```

* Expanded Widget can be used to equally divide the widgets within the space of the screen. It can be used as a child widget for Rows and Columns.

```
Row(
    children: <Widget> [
        Expanded(
            child: widget
        ),
        widget2,
        widget3
    ]
)

Column(
    children: <Widget> [
        widget1,
        widget2,
        widget3
    ]
)
```
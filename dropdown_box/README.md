# Dropdown_box

A new Flutter project which explains how to use Dropdown box in flutter.

## Steps to implement Drop down box

* Create a dropdown box using the DropDownButton widget

```

DropdownButton<String>(
                items: _currencies.map((String dropDownStringItem) {
                  return DropdownMenuItem<String>(
                    value: dropDownStringItem,
                    child: Text(dropDownStringItem),
                  );
                }).toList(),
                onChanged: (String newValueSelected) {
                  // Your code to execute, when a menu item is selected from drop down
                  _onDropDownItemSelected(newValueSelected);
                },
                value: _currentItemSelected,
              )

```

<hr>

![](./screenshot/screen1.png) ![](./screenshot/screen2.png)

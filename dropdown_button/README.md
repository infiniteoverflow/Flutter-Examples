# dropdown_button

A new Flutter application which explains how to use DropdownButton in flutter.

## How to use a Dropdown widget in flutter

- Use the following code to implement a dropdown button with the items specified in items array.

```

    DropdownButton<String>(
                          value: selected,
                          onChanged: (String value) {
                            setState(() {
                              selected = value;
                            });
                          },
                          items: items.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList()
                      ),

```

- The value attribute sets the value of the selected item to show up on the Dropdown button

```

    value: selectedItem

```
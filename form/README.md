# form

An Form is an optional container for grouping together multiple form field widgets (e.g. TextField widgets).

Each individual form field should be wrapped in a FormField widget, with the Form widget as a common ancestor of all of those. 

Creating form with validation:

Flutter allows you to create validated forms using the Form widget that acts as a container for grouping and validating multiple widgets used for data entry as TextField.

Each individual form field must be grouped into a FormField widget, with the Form widget as a common ancestor to all of them.

We can call the FormState to save, reset, or validate each FormField that is a descendant of this form. To get formstate, we can use Form.of with a context whose ancestor is the Form, or pass a GlobalKey to the Form constructor and call GlobalKey.currentState.

So we can define a basic roadmap for creating and validating forms:

Create a Form with a GlobalKey;
Add a TextFormField with validation logic;
Create a button to validate and submit the form;

For a complete exemple visit: http://www.macoratti.net/19/07/flut_fomval1.htm


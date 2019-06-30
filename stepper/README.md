# stepper

A new Flutter application which implements a Stepper

## How to implement a Stepper

- First of all declare the items that have to be converted into a Step in a ListView

```dart

    List<Step> steps = [
        Step(
          title: Text("Step 1"),
          content: Text("Welcome to Step 1"),
          subtitle: Text("Introduction")
        ),
    
        Step(
            title: Text("Step 2"),
            content: Text("Welcome to Step 2"),
        ),
    ];



```

 - Then pass this list to the  step attribute of Stepper Class
 
 ```dart

      Stepper(
        steps: steps,
        currentStep: _currentStep,
        onStepContinue: () {
          setState(() {
            if(_currentStep < steps.length-1)
              _currentStep++;
          });
        },
        onStepCancel: () {
          setState(() {
            if(_currentStep >0)
              _currentStep--;
          });
        },
        onStepTapped: (int value) {
          setState(() {
            _currentStep = value;
          });
        },
      )


```
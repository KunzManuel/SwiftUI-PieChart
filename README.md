# SwiftUI-PieChart
Sample project for a simple Pie Chart in SwiftUI. This example was created while writing the following article.

## How to use
```Swift
VStack {
    PieChart([
        (.red, 50),
        (.blue, 50),
        (.purple, 50)
    ])
    HStack {
        PieChart([
            (.red, 1),
            (.blue, 2),
            (.purple, 3),
            (.green, 4),
        ])
        PieChart([
            (.red, 50),
            (.blue, 50),
            (.purple, 50)
    ])					
  }

}
.padding()
```
![simulator_screenshot_99F0AEB8-D4F5-447E-A94E-2A01586D7BBF](https://user-images.githubusercontent.com/33420796/112624597-20829280-8e2e-11eb-9a12-82a4eb29a6d7.png)



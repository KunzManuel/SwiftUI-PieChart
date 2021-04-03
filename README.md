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


![Simulator Screen Shot - iPhone 12 Pro - 2021-04-03 at 11 18 42](https://user-images.githubusercontent.com/33420796/113474305-9068cc80-946f-11eb-9c99-90c7321276d0.png)

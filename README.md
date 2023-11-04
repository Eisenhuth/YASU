# Yet Another Swift Utility

![](https://img.shields.io/badge/Swift-5.9-F05138?logo=swift)
[![Workflow Badge](https://github.com/Eisenhuth/YASU/actions/workflows/swift.yml/badge.svg)](https://github.com/Eisenhuth/YASU/actions/workflows/swift.yml)

packaging some basic boilerplate functions.
```swift
import YASU
```
----
### loading some json data from a url

```swift
@State private var myDataType: MyDataType?

var body: some View {

    let myDataSourceUrl = URL(string: "https://my.datasource.url")!
    
    VStack {
        Text(myDataType.SomePropertyValue ?? "")
    }
    .task{
        await myDataType = loadData(myDataSourceUrl)
    }
}
```
----
### loading some json from the bundle

```swift
var myDataType: MyDataType = Bundle.main.decode("MyBundledJsonFile.json")

var body: some View {    
    VStack {
        Text(myDataType.SomePropertyValue)
    }
}
```

#### inout

> 当函数体内修改参数的值，需要反馈到函数外时，需要把参数添加inout关键字

```Swift
var dynamicName:String = "jack"

func function4(name:inout String) {
    name = "rose"
    print(name)
}

dynamicName
// 调用时，参数前会自动添加&符号
function4(name: &dynamicName)
dynamicName
```
![](https://github.com/CalvinCheungCoder/Swift/blob/master/13-%E5%87%BD%E6%95%B0%E5%85%B3%E9%94%AE%E5%AD%97(inout)/13-01.png)

> var（swift3.0已经废弃）


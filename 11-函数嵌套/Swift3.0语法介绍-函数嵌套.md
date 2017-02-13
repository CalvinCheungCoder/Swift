#### 函数嵌套

> 函数嵌套的主要好处在于可以对外屏蔽不必要的功能

```Swift
func operation(operationType:String, a:Int, b: Int) -> Int {
    
    // 内部定义的函数
    func add () ->Int {
        return a + b
    }
    
    func minus () ->Int {
        return a - b
    }
    
    if operationType == "add" {
        return add()
    }else {
        return minus()
    }
    
}

operation(operationType: "add", a: 1, b: 2)
```
![](https://github.com/CalvinCheungCoder/Swift/blob/master/11-%E5%87%BD%E6%95%B0%E5%B5%8C%E5%A5%97/11-01.png)


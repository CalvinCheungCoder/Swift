> 闭包和函数类似，可以理解成函数的简写形式，其本质是匿名的可执行代码块。在该代码块中，封装了其所处环境的所有状态。在闭包之前声明的所有变量和常量都可以被它捕获。

#### 闭包的定义

闭包的定义方式：{(参数名1:类型, 参数名2:类型) -> 返回值类型 in 功能实现 }

```Swift
let addClosure = {
    (num1:Int, num2:Int) -> Int in
    
    return num1 + num2
}

let minusClosure = {
    (num1:Int, num2:Int) -> Int in
    
    return num1 - num2
}
```

#### 把闭包作为函数的输入参数

```Swift
func calc(num1:Int, num2:Int, closure:(Int, Int) ->Int) -> Int {
    return closure(num1, num2)
}
```

#### 调用函数，把闭包作为参数传入

```Swift
let result1 = calc(num1: 100, num2: 200, closure: addClosure)
let result2 = calc(num1: 100, num2: 200, closure: minusClosure)
```
![](https://github.com/CalvinCheungCoder/Swift/blob/master/12-%E9%97%AD%E5%8C%85closure/12-01.png)



#### 1.函数赋值给常量 

```Swift
func add(a:Int, b:Int) -> Int {
    return a + b
}

// 函数作为对象，赋值给常量
let myAdd = add

var result = myAdd(1, 2)
```

#### 2.函数作为返回值
```Swift
func minus(a:Int, b:Int) ->Int {
    return a - b
}

/*
 参数：operationType: String
 返回值：(a: Int, b:Int) -> Int 返回一个函数，该函数有两个参数，并且返回一个Int型的返回值
 */
func operation (operationType: String) -> (_ a: Int, _ b:Int) -> Int {
    if operationType == "add" {
        return add
    }
    return minus
}

// 调用方法1
operation(operationType: "add")(3,4)

// 调用方法2：把返回的函数赋值给常量returnFunc
let returnFunc = operation(operationType: "add")
result = returnFunc(3,4)
```

#### 3.函数作为参数
```Swift
func largeNumber(a:Int, b:Int) -> Int {
    if a > b {
        return a
    }
    return b
}

func smallNumber(a:Int, b:Int) -> Int {
    if a < b {
        return a
    }
    return b
}

func comparePlus(funcParam:(Int, Int) ->Int,a:Int, b:Int) -> Int {
    
    return funcParam(a, b)
    
}

comparePlus(funcParam: largeNumber, a: 3, b: 4)
comparePlus(funcParam: smallNumber, a: 3, b: 4)
```



> 为了更好的重用代码，对于一个函数中的参数可以预先不指定具体的类型，而采用占位符的方式，待具体执行时，再指定具体的类型。

##### 不使用泛型
假如需要对比两个Int、Double或者String类型的值是否相同，则必须要填写如下3个不同的函数。

```Swift
func intValueCompare(param1:Int, param2:Int) -> Bool {
    return param1 == param2
}

func doubleValueCompare(param1:Double, param2:Double) -> Bool {
    return param1 == param2
}

func stringValueCompare(param1:String, param2:String) -> Bool {
    return param1 == param2
}

intValueCompare(param1: 1, param2: 1)
doubleValueCompare(param1: 1.0, param2: 2.0)
stringValueCompare(param1: "hi", param2: "swift")
```

##### 定义泛型
* 为了更好的重用代码，对于一个函数中的参数可以预先不指定具体的类型，而采用占位符的方式，待具体执行时，再指定具体的类型。
* 形式：func 函数名<泛型类型名称: 父类, 协议> (参数1: 泛型类型名称 ) -> 返回值类型 { 函数体 }

```Swift
func objValueCompare<Type:Equatable>(param1:Type, param2:Type) -> Bool {
    return param1 == param2
}

objValueCompare(param1: 1, param2: 1)
objValueCompare(param1: 1.0, param2: 2.0)
objValueCompare(param1: "hi", param2: "swift")
```
![](https://github.com/CalvinCheungCoder/Swift/blob/master/21-%E6%B3%9B%E5%9E%8Bgeneric/21-01.png)


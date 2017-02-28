> 扩展extension在swift中的作用类似于OC中的分类category，常用于给一些系统自带类或者第三方SDK增加功能(方法)，原因在于这些类的实现不对外公开。

##### 扩展类的方法
```Swift
// 扩展String类的方法
extension String {
    func addPrefix (prefixString:String) -> String {
        return prefixString + self
    }
    
}

var myString = "swift"
var newString = myString.addPrefix(prefixString: "hi ")
myString // 调用类扩展方法，并不改变self的值
newString
```
![](https://github.com/CalvinCheungCoder/Swift/blob/master/22-%E6%89%A9%E5%B1%95extension/22-01.png)

##### 扩展计算属性

swift中的扩展extension比OC的分类category强大的一点，在于可以对基本类型Int/Double进行扩展。在扩展中不能添加普通的属性，但是可以添加计算属性，所谓计算属性指的是其值是通过计算得到的属性。其基本形式为var 属性名:类型 { 计算方法}
```Swift
extension Double {
    var $:Double {return (self/6.5)}
    var €:Double {return (self/8)}
}

var RMB = 100.0
var dollor = RMB.$
var euro = RMB.€
```
![](https://github.com/CalvinCheungCoder/Swift/blob/master/22-%E6%89%A9%E5%B1%95extension/22-02.png)

##### mutating关键字
在扩展中添加的函数中，需要修改self的值时，需要在函数关键字func前添加mutation关键字，否则修改self时编译器会报错。另外，还要注意一点，self在声明时，不能是常量let。
```Swift
extension String {
    mutating func changeString(prefixString:String) -> String {
        self = prefixString + self
        return self
    }
}

var myString2 = "swift"
var newString2 = myString2.changeString(prefixString: "hi ")
myString2 // 原字符串的值发生了改变
newString2
```
![](https://github.com/CalvinCheungCoder/Swift/blob/master/22-%E6%89%A9%E5%B1%95extension/22-03.png)



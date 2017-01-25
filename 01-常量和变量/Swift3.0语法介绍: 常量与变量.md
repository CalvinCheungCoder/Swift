### Swift3.0语法介绍: 常量与变量

##### 常量

```Swift
//指定常量的类型
let a:Int = 1
let b:Double = 3.14
let isSuccess:Bool = true
let aString:String = "HelloSwift"


//不指定常量的类型，由编译器自动判断
let c = 2
let d = 2.1

//不可以修改常量的值
let e = 3
/* 执行报错:note: change 'let' to 'var' to make it mutable
e = 4
*/

```

!()[https://github.com/CalvinCheungCoder/Swift/blob/master/01-%E5%B8%B8%E9%87%8F%E5%92%8C%E5%8F%98%E9%87%8F/01_01.png]

#### 变量

```Swift
//指定变量的类型并赋值
var f:Int
f = a
var bString:String = "Hello"

//不指定变量的类型,根据赋值进行判断
var g = a

//修改变量的值
f = 100
g = 200
bString = "Hello Swift"

```


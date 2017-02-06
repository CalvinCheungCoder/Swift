#### 基本运算符

```Swift
let a = 1
let b = 2

var c = a + b

var d = a - b

var e = a * b

var f1 = a / b
// 强制类型转换
var f2 = Double(a) / Double(b)

// 取余
var g = a % b

```

![](https://github.com/CalvinCheungCoder/Swift/blob/master/02-%E8%BF%90%E7%AE%97%E7%AC%A6/02_01.png)

#### 比较运算符

```Swift
// 基础比较运算符
var result:Bool
result = a == b
result = a > b
result = a < b
result = a >= b
result = a <= b
result = a != b

// 字符串比较
let string1 = "hello"
let string2 = "world"
if (string1 == string2) {
    print("string1 is equal to string2")
}else {
    print("string1 is NOT equal to string2")
}
```

![](https://github.com/CalvinCheungCoder/Swift/blob/master/02-%E8%BF%90%E7%AE%97%E7%AC%A6/02_02.png)


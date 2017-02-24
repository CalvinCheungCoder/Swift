##### 枚举类型的定义
```Swift
// 简易定义:首字母大写
enum Color {
    case blue
    case red
    case green
    case gray
    case white
    case black
}

// 复杂定义
enum ColorWithDesc:String {
    case blue = "蓝色"
    case red = "红色"
    case green = "绿色"
    case gray = "灰色"
    case white = "白色"
    case black = "黑色"
}
```

#####  枚举类型的使用
```Swift
// 获取成员
let myColor1:Color = Color.blue
print(myColor1)

// 获取成员以及成员的描述信息(裸数据)
let myColor2:ColorWithDesc = ColorWithDesc.blue
print(myColor2)
print(myColor2.rawValue)
```
![](https://github.com/CalvinCheungCoder/Swift/blob/master/18-%E6%9E%9A%E4%B8%BEenum/18-01.png)
##### switch配合使用
```Swift
// 设值
var myColor:Color = Color.blue
// 枚举
switch myColor {
case Color.blue:
    print("It is Blue")
    break
case Color.red:
    print("It is Red")
    break
default:
    break
}
```
![](https://github.com/CalvinCheungCoder/Swift/blob/master/18-%E6%9E%9A%E4%B8%BEenum/18-02.png)



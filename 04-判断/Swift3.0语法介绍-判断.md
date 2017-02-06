#### if/else判断

```Swift
//简单判断
let isSuccess = true

if isSuccess {
    print("success!")
}else {
    print("failue!")
}

//多条件判断
let i = 100
let j = 200
if i>=100 && j>=200 {
    print("YES!")
}else {
    print("NO!")
}
```
![](https://github.com/CalvinCheungCoder/Swift/blob/master/04-%E5%88%A4%E6%96%AD/04_01.png)

#### switch判断

```Swift
let sex = "Male"
switch sex {
    
case "Male":
    print("He is a boy")
    break
    
case "Female":
     print("She is a girl")
    break
    
default:
    print("unknown")
    break
}
```
![](https://github.com/CalvinCheungCoder/Swift/blob/master/04-%E5%88%A4%E6%96%AD/04_02.png)



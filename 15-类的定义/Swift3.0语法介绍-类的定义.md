##### 类的定义

```Swift
class Person {
    
    // 定义类的属性
    var name:String?
    var sex:String = "Female"
    var age:Int?
    var height:Double?
    var weight:Double?
    var nationality:String = "China"
    
    // 定义类的方法
    func sleep() {
        print("\(name) sleep")
    }
    
    func eat(food:String) {
        print("\(self.name) eat \(food)")
    } 
}
```

##### 对象--类的实例化
```Swift
var person = Person()
```

##### 对象的属性的设置(setter)与访问(getter)

```Swift
// 设置对象的属性
person.name = "jack"
person.sex = "male"
person.age = 34
person.height = 1.75
person.weight = 65.0

// 访问对象的属性
person.name
person.sex
person.age
person.height
person.weight
person.nationality
```

##### 调用对象的方法
```Swift
person.sleep()
person.eat(food: "rice")
```
![](https://github.com/CalvinCheungCoder/Swift/blob/master/15-%E7%B1%BB%E7%9A%84%E5%AE%9A%E4%B9%89/15-01.png)



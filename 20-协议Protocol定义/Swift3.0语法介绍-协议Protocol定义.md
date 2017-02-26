##### 定义协议
* 协议的首字母建议大写。
* 在协议中定义的变量(属性)都必须指定get/set限定符，用来标示变量是否支持读写。如果只使用了{get}，则在遵循协议的类或者结构中声明相应的变量时，可以使用关键字let。如果使用了{get set}，则在遵循协议的类或者结构中，必须使用var来声明相应的变量。

```Swift
// 租赁协议
protocol RentProtocol {
    // 协议中定义的属性，必须指定{get}或{get set}
    var pricePerMonth:Double {get}
    var duration:Int {get set}
    var discount:Double {get set}
    
    // 协议中定义函数(方法)
    func payment() -> Double //付款
    func cancel() //取消租赁合同
}
```
##### 定义遵守协议的类
可以在不同的类中，对协议中的方法设置不同的功能实现，如RentProtocol协议中的cancel方法，如下。
```Swift
class PersonalRenter:RentProtocol {
    var personName:String?
    
    // 协议中定义的属性
    let pricePerMonth:Double = 500.0
    var duration:Int = 3
    var discount:Double = 1.0
    
    func payment() -> Double {
        let amount = self.pricePerMonth *  self.discount * Double(duration)
        return amount
    }
    
    func cancel() {
        print("与个人客户的租赁协议取消")
    }
}

class BusinessRenter:RentProtocol {
    var companyName:String?
    
    // 协议中定义的属性
    let pricePerMonth:Double = 400.0
    var duration:Int = 12
    var discount:Double = 0.9
    
    func payment() -> Double {
        let amount = self.pricePerMonth *  self.discount * Double(duration)
        return amount
    }
    
    func cancel() {
        print("与企业客户的租赁协议取消")
    }
}
```
##### 调用协议中的方法和属性
```Swift
var person = PersonalRenter()
person.personName = "jack"
person.duration = 6
let personAmount = person.payment()
print("\(person.personName)(个人)应付租金\(personAmount)元")
person.cancel()

var company = BusinessRenter()
company.companyName = "Government"
company.duration = 24
let companyAmount = company.payment()
print("\(company.companyName)(企业)应付租金\(companyAmount)元")
company.cancel()
```
![](https://github.com/CalvinCheungCoder/Swift/blob/master/20-%E5%8D%8F%E8%AE%AEProtocol%E5%AE%9A%E4%B9%89/20-01.png)


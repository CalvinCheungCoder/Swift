##### 定义协议
```Swift
// 租赁协议
protocol RentProtocol {
    
    func rent()
}

// 合作协议
protocol CorporationProtocol {
    func corporate()
}
```


#####  遵守多个协议
 多个协议之间用逗号隔开。
 
```Swift
class Renter:RentProtocol, CorporationProtocol {
    
    func rent() {
        
    }
    
    func corporate() {
        
    }
    
}
```

##### 超类+协议
形式：超类, 协议1, 协议2.....

```Swift
// 定义父类/超类
class Person {
    var name:String?
    var sex:String?
    var height:Double?
    var weight:Double?
}

class Worker:Person, RentProtocol, CorporationProtocol {
    func rent() {
        
    }
    
    func corporate() {
        
    }
}
```



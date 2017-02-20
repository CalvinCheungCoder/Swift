//: Playground - noun: a place where people can play

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


var person = Person()


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

person.sleep()
person.eat(food: "rice")

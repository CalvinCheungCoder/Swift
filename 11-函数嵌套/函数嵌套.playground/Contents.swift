//: Playground - noun: a place where people can play

// 函数嵌套

func operation(operationType:String, a:Int, b: Int) -> Int {
    
    // 内部定义的函数
    func add () ->Int {
        return a + b
    }
    
    func minus () ->Int {
        return a - b
    }
    
    if operationType == "add" {
        return add()
    }else {
        return minus()
    }
    
}

operation(operationType: "add", a: 1, b: 2)

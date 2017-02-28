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


extension Double {
    var $:Double {return (self/6.5)}
    var €:Double {return (self/8)}
}

var RMB = 100.0
var dollor = RMB.$
var euro = RMB.€


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
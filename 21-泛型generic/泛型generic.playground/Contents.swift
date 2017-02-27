
func intValueCompare(param1:Int, param2:Int) -> Bool {
    return param1 == param2
}

func doubleValueCompare(param1:Double, param2:Double) -> Bool {
    return param1 == param2
}

func stringValueCompare(param1:String, param2:String) -> Bool {
    return param1 == param2
}

intValueCompare(param1: 1, param2: 1)
doubleValueCompare(param1: 1.0, param2: 2.0)
stringValueCompare(param1: "hi", param2: "swift")


func objValueCompare<Type:Equatable>(param1:Type, param2:Type) -> Bool {
    return param1 == param2
}

objValueCompare(param1: 1, param2: 1)
objValueCompare(param1: 1.0, param2: 2.0)
objValueCompare(param1: "hi", param2: "swift")
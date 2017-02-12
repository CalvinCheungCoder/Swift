//: Playground - noun: a place where people can play


// 1.函数定义
// 函数定义形式：func 函数名(参数:类型, 参数:类型, ...) -> 返回值 { 函数体 }
func add(a: Int, b:Int) -> Int {
    return a + b
}

// 调用时会附带参数名称，更加清晰
func add2(c: Int, d:Int) -> Int {
    return c + d
}

func printName(firstName: String, lastName:String) -> String {
    return firstName + " " + lastName
}

// 定义函数时，给参数指定默认值
func addWithDefaultValue(a:Int = 0, b:Int = 1) -> Int {
    return a + b
}


// 2.函数调用
// 方法一：第一个参数不写标签
let c = add(a: 1, b: 2)

// 方法二：第一个参数写标签
let d = add2(c: 1, d: 2)

printName(firstName: "Hi", lastName: "Swift")

// 调用时使用默认值
addWithDefaultValue()
addWithDefaultValue(a: 2) // b取默认值，a取2


// 3.参数与返回值

// 有参数有返回值
func func1(a: String, b: String) -> String {
    return a + b
}
func1(a: "Hello", b: "World")

// 无参数有返回值
func func2() -> Int {
    return 100
}
func2()

// 有参数无返回值
func func3 (a:String) {
    print(a)
}
func3(a: "你好")

// 无参数无返回值
func func4() {
    print("无参数无返回值")
}
func4()

// 参数数量不确定
func func5(words:String...) {
    for word in words {
        print(word)
    }
}

func5(words: "Hello", "World")
func5(words: "Hi")


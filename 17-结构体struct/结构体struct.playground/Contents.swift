// 定义一个Point结构体，用于描述二维坐标系中的一个点，这个点有一个x轴坐标和一个y轴坐标,另外还有一个点名称
struct Point2D {
    var x:Double
    var y:Double
    var pointName:String
}

// 指定初始值
struct Point3D {
    var x:Double = 0
    var y:Double = 0
    var z:Double = 0
}

// 在结构体中定义函数
struct PointWithFunc {
    var x:Double = 0
    var y:Double = 0
    func printPoint() {
        print("Point X is \(x), Y is \(y)")
    }
}


// 定义结构体时，如果不指定初始值，那么在初始化时需要手工指定
var point1 = Point2D(x: 0, y: 0, pointName: "zeroPoint")

// 在定义结构体时，如果已经指定了初始值，那么初始化时可以不再赋值
var point2 = Point3D()


point1.x = 10.0
point1.y = 20.0
point1.pointName = "NewPoint"

print(point1)
print(point1.x)
print(point1.y)
print(point1.pointName)


// 结构体的拷贝
var point3 = point1
point3.x = 100
point3.y = 200
point3.pointName = "The Third Point"
print(point1, point3)

// 调用结构体中定义的函数
var point4 = PointWithFunc(x: 50, y: 150)
point4.printPoint()

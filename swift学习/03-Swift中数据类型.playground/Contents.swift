//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
    Swift类型的介绍
    Swift中的数据类型也有:整型/浮点型/对象类型/结构体类型等等
    先了解整型和浮点型
    整型
    有符号
    Int8 : 有符号8位整型
    Int16 : 有符号16位整型
    Int32 : 有符号32位整型
    Int64 : 有符号64位整型
    Int : 和平台相关(默认,相当于OC的NSInteger)
    无符号
    UInt8 : 无符号8位整型
    UInt16 : 无符号16位整型
    UInt32 : 无符号32位整型
    UInt64 : 无符号64位整型
    UInt : 和平台相关(常用,相当于OC的NSUInteger)(默认)
    浮点型
    Float : 32位浮点型
    Double : 64浮点型(默认)
*/

/*
  · swift有一个特性就是：类型推导
  · swift是强类型语言
  · swift中任何一个标识符都有明确的类型
 */

// 比如
let a:Int = 10 // 可以写成 let a = 10
let btn:UIButton = UIButton() // 可以写成 let btn = UIButton()

let view = UIView()
let label = UILabel()
let image = UIImage()
let imageView = UIImageView()


// 或者

var b = 20 // 类型推导 b为20 是Int类型
b = 30 // 正确写法
// b = 30.0 // 错误写法 b是Int类型







		
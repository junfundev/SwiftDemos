//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
    Swift中在进行基本运算时必须保证类型一致,否则会出错
    · 相同类型之间才可以进行运算
    · 因为Swift中没有隐式转换
    数据类型的转化
    · Int类型转成Double类型:Double(标识符)
    · Double类型转成Int类型:Int(标识符)
 */

// 比如

// 1、类型一致可以相互加减乘除
let a = 10
let b = 20
let c = 30
let d = 40

let ab = a + b
let aXb = a * b
let aJb = a-b

let aCb = a/b  // 结果是：0
let aCbd = Double(a)/Double(b) // 结果是：0.5


// 2、类型不一致必须转为一致

let m = 10
let n = 20.9

let mPn = m + Int(n)
let nPm = Double(m) + n

let mXn = m * Int(n)
let nXm = Double(m) * n

let mCn = m/Int(n) // 10/20 此时mCn的类型是和后面m的类型一致 Int
let nCm = n/Double(m) // 20.9/10 此时nCm的类型是和后面n的类型一致 Double

		

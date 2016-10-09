//: Playground - noun: a place where people can play

import UIKit

/*
 一. 分支的介绍

 · 分支即if/switch/三目运算符等判断语句
 · 通过分支语句可以控制程序的执行流程
 */


/* 
 二. if分支语句
 
 和OC中if语句有一定的区别
 · 判断句可以不加()
 · 在Swift的判断句中必须有明确的真假
 · 不再有非0即真
 · 必须有明确的Bool值
 · Bool有两个取值:false/true
 */

 // 1、 if
let a = 10
if a==10 {
    print("a = 10")
}

// 2、if else 判断分数在哪一个级别里面
let score = 98

if score<60 {
    print("不及格")
}else if score <= 70{
    print("一般")
}else if score <= 80{
    print("良好")
}else if score <= 90{
    print("中等")
}else{
    print("优秀")
}

// 3、判断是否存在
/*
 · 这个是可选类型,因为只有声明成可选类型后,才可以判断是否为空
 · 可选类型会在后续讲解,可先了解即可
 */

let view:UIView? = UIView()

/* 错误写法
if view {
    print("View存在")
}
*/

if view != nil {
    print("view存在")
}


// 三、三目运算 和OC中一样
let m = 10
let n = 20

let result = m > n ? m : n


// 四、guard的使用
/*
· guard是swift 2.0新增的语法
· 他与if语法非常相似，设计它的目的是提高程序的可读性
· guard语句必须带有else语句，它的语法如下：
  - 当条件表达式为true的时候跳过else语句中内容，执行语句组内容
  - 条件表达式为false是的执行else语句中的内容，跳转语句一般是return，break，continue和throw
 */

// 1、比如判断一个人能不能去网吧上网
/*
 · 首先想一下我们去网吧上网的条件大概一下三个：
   · 年龄符合18岁
   · 身份证是否携带
   · 钱是否携带足够
 */

let myage = 20
let identityCard = true
let moneyIsEnough = true

// 利用if语句写一个上网的条件
func online(age:Int){
    if age >= 18 {
        print("年龄符合")
        
        if identityCard {
            print("携带了身份证")
            
            if moneyIsEnough {
                print("钱也够了，可以开机上网")
            }else{
                print("钱没有带够，不能上网")
            }
            
        }else{
            print("没有携带身份证")
        }
    }else{
        print("年龄不符合，不能上网")
    }
}


// 利用guard语句写一个上网的条件 返回一个空void
/* 
 如果guard后面的判断句为true时，那么执行后面的语句块
 如果guard后面的判断句为false时，那么执行else里面的{}
 */
func online2(age:Int) -> Void{
    guard age >= 18 else {
        print("年龄没有达到，不能上网")
        return
    }
    
    guard identityCard else {
        print("身份证没有带，不能上网")
        return
    }
    
    guard moneyIsEnough else {
        print("钱没有带够，不能上网")
        return
    }
    
    print("年龄达到，可以上网")
    print("身份证带了，可以上网")
    print("钱也带够了，可以上网")
}

online2(age: myage)

// 利用guard语句封装一个是否可以上网的方法
func isCanOnline(age:Int,identityCard:Bool,moneyIsEnough:Bool) -> Bool{

    guard age >= 18 else {
        print("年龄没有达到")
        return false
    }
    guard identityCard else {
        print("身份证没有的带")
        return false
    }
    guard moneyIsEnough else {
        print("钱没有带")
        return false
    }
    
    return true
}

// 调用方法
if isCanOnline(age: 17, identityCard: true, moneyIsEnough: true) {
    print("可以上网")
}else{
    print("不能上网")
}

// guard就像守卫军一样，满足条件就给放行通过，不满足就直接拦住 😁😁😁


// 五、switch用法
/*
 · Switch作为选择结构中必不可少的语句也被加入到了Swift中
 · 只要有过编程经验的人对Switch语句都不会感到陌生
 · 但苹果对Switch进行了大大的增强，使其拥有其他语言中没有的特性
 */

// 5.1> switch的简单用法
/*
 · 基本用法和OC一致
 · 不同之处：
   - switch后面可以不跟()
   - case后面可以不跟break，系统会默认有break
 */
// 比如:判断一个人是否是男女
let sex = 0

switch sex {
case 0:
    print("女")
case 1:
    print("男")
default:
    print("不男不女")
}

/*
  · 一个case判断中,可以判断多个值
  · 多个值以,隔开
 */
let sex1 = 0

switch sex1 {
case 0,1:
    print("正常人")
default:
    print("不男不女")
}

// 如果希望出现之前的case穿透,则可以使用关键字fallthrough

let sex2 = 0

switch sex2 {
case 0:
    fallthrough
case 1:
    print("正常人")
default:
    print("不男不女")
}


// 5.2> switch支持浮点型判断

// 比如判断是否是π
let num = 3.14
switch num {
case 3.14:
    print("π")
default:
    print("非π")
}

// 5.3> switch支持字符串判断
let q = 10
let w = 30
var resultQW = 0
let operation = "+"

switch operation {
case "+":
    resultQW = q + w
case "-":
    resultQW = q - w
case "*":
    resultQW = q * w
case "/":
    resultQW = q / w
default:
    print("非正常操作")
}

// 5.4> switch支持区间判断 ***
/*
  · 什么是区间?
    - 通常我们指的是数字区间:0~10,100~200
  · swift中的区间常见有两种
    - 开区间:0..<10 表示:0~9,不包括10
    - 闭区间:0...10 表示:0~10
*/

// 比如判断一个人的成绩
let scoreTwo = 80
switch scoreTwo {
case 0..<60:
    print("不及格")
case 60..<80:
    print("良好")
case 80..<90:
    print("中等")
case 90...100:
    print("优秀")
default:
    print("没有成绩")
}





















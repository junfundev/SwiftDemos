//: Playground - noun: a place where people can play

import UIKit

let m:Int = 20

// 创建一个常量对象
/*
  注意:声明为常量不可以修改的意思是指针不可以再指向其他对象.但是可以通过指针拿到对象,修改其中的属性
  view : UIView = [[UIView alloc] init];
  Swift对象中不需要*
 */
// swift中创建对象
// 在实际开发中建议优先使用常量

let view:UIView = UIView()

// 设置属性
view.backgroundColor = UIColor.red

view.backgroundColor = UIColor.black

view.frame = CGRect.init(x: 0, y: 0, width: 100, height: 100)

view.alpha = CGFloat.init(1)
view.alpha = 1.0

view.isHidden = Bool.init(1)


/*
 创建一个UIImageView
 */
let image:UIImageView = UIImageView(frame: CGRect.init(x: 0, y: 0, width: 100, height: 100))

image.image = UIImage.init(named: "chrismasImage")

view.addSubview(image)



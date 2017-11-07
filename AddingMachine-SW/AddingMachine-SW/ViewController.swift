//
//  ViewController.swift
//  AddingMachine-SW
//
//  Created by jyz on 2017/11/7.
//  Copyright © 2017年 HDGS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numText1: UITextField?
    var numText2: UITextField?
    var numLable: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupUI()
    }
    func calc(){
        
        print("\(numText1?.text)---\(numText2?.text)")
        
        //将文本框 的内容转化为int
        guard let num1 = Int(numText1?.text ?? ""),
              let num2 = Int(numText2?.text ?? "")
        else {
            print("必须输入数字才能运算")
            return
            
        }
        //处理 结果
        numLable?.text = "\(num1+num2)"
    }
    func setupUI() -> () {
        //1.两个textField
        let tf1 = UITextField(frame: CGRect(x: 20, y: 20, width: 100, height: 30))
        tf1.borderStyle = .roundedRect
        tf1.text="0"
        view.addSubview(tf1)
        let tf2 = UITextField(frame: CGRect(x: 140, y: 20, width: 100, height: 30))
        tf2.borderStyle = .roundedRect
        tf2.text="0"
        view.addSubview(tf2)
        numText1 = tf1
        numText2 = tf2
        
        //2.三个label
        let l1 = UILabel(frame: CGRect(x: 120, y: 20, width: 20, height: 30))
        l1.text="+"
        l1.textAlignment = .center
        view.addSubview(l1)
        
        let l2 = UILabel(frame: CGRect(x: 240, y: 20, width: 20, height: 30))
        l2.text="="
        l2.textAlignment = .center
        view.addSubview(l2)
        
        let l3 = UILabel(frame: CGRect(x: 260, y: 20, width: 100, height: 30))
        l3.text="0"
        l3.textAlignment = .right
        view.addSubview(l3)
        numLable = l3
        
        //3.一个button
        
        let btn = UIButton()
        btn.setTitle("计算", for: UIControlState(rawValue: 0))
        btn.setTitleColor(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1), for: UIControlState(rawValue: 0))
        
        btn.sizeToFit()
        btn.center = view.center
        view.addSubview(btn)
        btn.addTarget(self, action: #selector(calc), for:.touchUpInside)
        
    }

   


}


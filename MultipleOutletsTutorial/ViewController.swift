//
//  ViewController.swift
//  MultipleOutletsTutorial
//
//  Created by gdql－Apple on 16/3/29.
//  Copyright © 2016年 gdql－Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //实现逻辑协议
        for subview in view.subviews where subview.tag == 10 {
            let button = subview as! UIButton
            button.addTarget(self, action: "changeColorRed", forControlEvents: .TouchUpInside)
        }
        
        for subview in view.subviews where subview.tag == 20 {
            let button = subview as! UIButton
            button.addTarget(self, action: "changeColorYellow", forControlEvents: .TouchUpInside)
        }
    }

    //实现动作事件
    func changeColorRed(sender: AnyObject){
        let button: UIButton = sender as! UIButton
        button.tintColor = UIColor.redColor()
    }
    
    func changeColorYellow(sender: AnyObject){
        let button: UIButton = sender as! UIButton
        button.tintColor = UIColor.yellowColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  swfit_uikit_demo
//
//  Created by shuzhenguo on 16/7/14.
//  Copyright © 2016年 shuzhenguo. All rights reserved.
//


/*
 
 swfit 中   uikit  学习
 
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "按钮和标签"
        //UIButton
        let button = UIButton(type:UIButtonType.RoundedRect);
        //设置按钮的位置和大小
        button.frame=CGRectMake(20, 120, 100, 150);
        //设置背景色
        button.backgroundColor=UIColor.redColor();
        //设置按钮的文字
        button.setTitle("push_tableView", forState:.Normal);
        //设置按钮的文字颜色
        button.setTitleColor(UIColor.blackColor(), forState: .Normal);
        //设置按钮的点击事件
         button.addTarget(self, action: #selector(ViewController.buttonTag(_:)), forControlEvents: .TouchUpInside);
        //设置tag值
        button.tag=10;
        //加到视图上
        self.view.addSubview(button);
 
        
        
        
        
        
        let button1 = UIButton(type:UIButtonType.RoundedRect);
        button1.frame=CGRectMake(140, 120, 100, 150);
        button1.setTitle("改变lable", forState: .Normal);
        button1.addTarget(self, action: #selector(ViewController.buttonTag(_:)), forControlEvents: .TouchUpInside);
        button1.tag=11;
        button1.backgroundColor=UIColor.grayColor();
        button1.layer.masksToBounds = true
        //设置按钮的圆角半径为10
        button1.layer.cornerRadius = 5
        //设置按钮的边框宽度为4
        button1.layer.borderWidth = 1
        //设置按钮的边框颜色
        button1.layer.borderColor = UIColor.lightGrayColor().CGColor

        
        
        self.view.addSubview(button1);
        
        
        
        
        //位置和大小
        let lable = UILabel(frame: CGRectMake(20, 280, 280, 80));
        //设置要显示的文字
        lable.text="hello word lable"
        //设置文字的大小和字体
        lable.font=UIFont(name: "宋体",size: 12);
        //设置文字的阴影颜色
        lable.shadowColor=UIColor.blueColor();
        //设置标签文字的阴影在横向和纵向的偏移距离
        lable.shadowOffset=CGSizeMake(90, 90);
         //设置文字的对其的方式
        lable.textAlignment=NSTextAlignment.Center;
        //文字颜色
        lable.textColor=UIColor.grayColor();
        //设置lable的tag
        lable.tag=12;
        //背景颜色
        lable.backgroundColor=UIColor.blackColor();
        //加到视图上
        self.view.addSubview(lable);
        
        
        
        
        
        
    }
    
    
    //触发button
    func buttonTag(btn:UIButton) {
            if btn.tag==10{
            //触发此事件，进入tableView
            let tableView = ManTableViewController()
            self.navigationController?.pushViewController(tableView, animated:true);
 
        }else{
            //通过tag获取lable
            let lable = (self.view .viewWithTag(12)) as! UILabel
             lable.text="我点了button1";
            
        }
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ManTableViewController.swift
//  swfit_uikit_demo
//
//  Created by shuzhenguo on 16/7/14.
//  Copyright © 2016年 shuzhenguo. All rights reserved.
//

import UIKit

class ManTableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title="tableView";
        /// 屏幕宽
         let screenWidth = UIScreen.mainScreen().bounds.size.width
        /// 屏幕高
         let screenHeight = UIScreen.mainScreen().bounds.size.height

        //设置位置和类型
        let  tableView = UITableView(frame: CGRectMake(0, 0, screenWidth, screenHeight), style: .Plain);
        //实现协议
        tableView.dataSource=self;
        tableView.delegate=self;
        
        //加载视图
        self.view .addSubview(tableView);

    }
    
    
    // MARK: -  几章节）
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    //section的个数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    
    //cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell")
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
            cell?.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        }
        cell?.textLabel?.text = "tableviewCell"
        return cell!
    }
    
    // MARK: - UITableViewDelegate点击
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print(indexPath.row);
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

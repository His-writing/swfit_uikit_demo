swfit3.0之UILable,UIButton,UITableView的简单使用


UILable
//位置和大小
let lable = UILabel(frame: CGRectMake(20, 280, 280, 80));
//设置要显示的文字
lable.text=”hello word lable”
//设置文字的大小和字体
lable.font=UIFont(name: “宋体”,size: 12);
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

UIButton
//UIButton
let button = UIButton(type:UIButtonType.RoundedRect);
//设置按钮的位置和大小
button.frame=CGRectMake(20, 120, 100, 150);
//设置背景色
button.backgroundColor=UIColor.redColor();
//设置按钮的文字
button.setTitle(“push_tableView”, forState:.Normal);
//设置按钮的文字颜色
button.setTitleColor(UIColor.blackColor(), forState: .Normal);
//设置按钮的点击事件
button.addTarget(self, action: #selector(ViewController.buttonTag(_:)), forControlEvents: .TouchUpInside);
//设置tag值
button.tag=10;
//加到视图上
self.view.addSubview(button);

UITableView
class ManTableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

override func viewDidLoad() {
super.viewDidLoad()

self.title=”tableView”;
/// 屏幕宽
let screenWidth = UIScreen.mainScreen().bounds.size.width
/// 屏幕高
let screenHeight = UIScreen.mainScreen().bounds.size.height

//设置位置和类型
let tableView = UITableView(frame: CGRectMake(0, 0, screenWidth, screenHeight), style: .Plain);
//实现协议
tableView.dataSource=self;
tableView.delegate=self;

//加载视图
self.view .addSubview(tableView);

}

// MARK: – 几章节）
func numberOfSectionsInTableView(tableView: UITableView) -> Int {
return 1
}

//section的个数
func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
return 9
}

//cell
func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
var cell = tableView.dequeueReusableCellWithIdentifier(“cell”)
if cell == nil {
cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: “cell”)
cell?.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
}
cell?.textLabel?.text = “tableviewCell”
return cell!
}

// MARK: – UITableViewDelegate点击
func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
print(indexPath.row);
}

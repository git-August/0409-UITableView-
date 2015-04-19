//
//  ViewController.m
//  0409-UITableView
//
//  Created by Ibokan on 15/4/9.
//  Copyright (c) 2015年 focus. All rights reserved.
//

#import "ViewController.h"
//#define <#macro#>
#import "WHProvice.h"
@interface ViewController () <UITableViewDataSource> {
    NSArray * _sections;
}

@end

@implementation ViewController

- (void)viewDidLoad {
//    [super viewDidLoad];//不放到开头!!!?
    // Do any additional setup after loading the view, typically from a nib.
    //1.创建tableview
    UITableView * table = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    table.dataSource = self;
    [self.view addSubview:table];
#pragma mark虽然自己觉得很不错了,但是还是不够格:以面向对象的思想,简单重复的代码可以用类方法规避!
    /*
    WHProvice * hebei_provice = [[WHProvice alloc] init];
    hebei_provice.header = @"河北";
    hebei_provice.cities = @[@"邢台",@"石家庄",@"衡水",@"秦皇岛"];
    hebei_provice.footer = @"好山好水,魅力河北";
    WHProvice * shandong_provice = [[WHProvice alloc] init];
    shandong_provice.header = @"山东";
    shandong_provice.cities = @[@"烟台",@"青岛",@"济南"];
    shandong_provice.footer = @"山东多义士";
    WHProvice * henan_provice = [[WHProvice alloc] init];
    henan_provice.header = @"河南";
    henan_provice.cities = @[@"商丘",@"郑州"];
    henan_provice.footer = @"河南人口众多";
     */
#pragma mark 终极代码之一
    /*
    WHProvice * hebei_provice = [WHProvice proviceWithheader:@"河北"
                                                   andcities:@[@"邢台",@"石家庄",@"衡水",@"秦皇岛"]
                                                   andfooter:@"好山好水,魅力河北"];
    WHProvice * shandong_provice = [WHProvice proviceWithheader:@"山东"
                                                   andcities:@[@"烟台",@"青岛",@"济南"]
                                                   andfooter:@"山东多义士"];
    WHProvice * henan_provice = [WHProvice proviceWithheader:@"河南"
                                                   andcities:@[@"商丘",@"郑州"]
                                                   andfooter:@"河南人口众多"];
    WHProvice * jiangsu_provice = [WHProvice proviceWithheader:@"江苏"
                                                     andcities:@[@"扬州"]
                                                     andfooter:@"烟花三月下扬州"];
    */
    _sections =@[
//                 @[@"邢台",@"石家庄",@"衡水",@"秦皇岛"],
//                 @[@"烟台",@"青岛",@"济南"],
//                 @[@"商丘",@"郑州"],
//                 @[@"扬州"],
//                 ];//可读性差,不便于架构扩展
                 //如何实现为不同省份添加不同的省份名称和不同的后语?
                /* @{
//                     @"header":@[@"河北"],//error
                     @"header":@"河北",
                     @"cities":@[@"邢台",@"石家庄",@"衡水",@"秦皇岛"],
                     @"footer":@"好山好水,魅力河北",
                 },
                 @{
                     @"header":@"山东",
                     @"cities":@[@"烟台",@"青岛",@"济南"],
                     @"footer":@"山东多义士",
                 },
                 @{
                     @"header":@"河南",
                     @"cities":@[@"商丘",@"郑州"],
                     @"footer":@"河南人口众多",
                 },
                 @{
                     @"header":@"江苏",
                     @"cities":@[@"扬州"],
                     @"footer":@"烟花三月下扬州",
                 },*///当看到重复,是否能想到重构,简洁代码之面向对象!
//                 hebei_provice,
//                 shandong_provice,
//                 henan_provice,
//                 jiangsu_provice,
#pragma mark 终极代码之二
    [WHProvice proviceWithheader:@"四川" andcities:@[@"成都",@"绵阳",@"雅安",@"攀枝花",@"乐山",@"广安",@"巴中"] andfooter:@"人杰地灵"],
    [WHProvice proviceWithheader:@"新疆" andcities:@[@"乌鲁木齐",@"克拉玛依",@"吐鲁番",@"哈密地区"]             andfooter:@"葡萄好吃"],
    [WHProvice proviceWithheader:@"西藏" andcities:@[@"拉萨",@"昌都地区",@"日喀则地区",@"阿里地区"]             andfooter:@"圣洁"],
    [WHProvice proviceWithheader:@"香港" andcities:@[@"湾仔",@"九龙区",@"黄大仙区",@"沙田区"]                  andfooter:@"古惑仔"],
    [WHProvice proviceWithheader:@"台湾" andcities:@[@"台北",@"高雄",@"基隆",@"台中",@"台南",@"新竹",@"嘉义"]   andfooter:@"传统文化传承地"],

    [WHProvice proviceWithheader:@"河北" andcities:@[@"邢台",@"石家庄",@"衡水",@"秦皇岛"] andfooter:@"好山好水,魅力河北"],
    [WHProvice proviceWithheader:@"山东" andcities:@[@"烟台",@"青岛",@"济南"]            andfooter:@"山东多义士"],
    [WHProvice proviceWithheader:@"河南" andcities:@[@"商丘",@"郑州"]                   andfooter:@"河南人口众多"],
    [WHProvice proviceWithheader:@"江苏" andcities:@[@"扬州"]                          andfooter:@"烟花三月下扬州"],
                 ];
//    [super viewDidLoad];
}
#pragma mark 组数，调试中进入两次
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
//    NSLog(@"number of section");//?2次？
    return _sections.count;
}
#pragma mark 组中行数，调试中进入2*section次
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //1.简单粗暴程序
//    switch (section) {
//        case 0:
//            return 4;
//            break;
//        case 1:
//            return 3;
//            break;
//        case 2:
//            return 2;
//            break;
//        default:
//            break;
//    }
    //数组封装数据不宜扩展,没有前途的程序
    /*
    NSArray * row = _sections[section];
    return row.count;
//    字典封装数据,走的还是封装范
    NSDictionary * row_dic = _sections[section];
    NSArray * row = [row_dic objectForKey:@"cities"];
    */
#pragma mark 面向对象之返回每一组中的行数
    WHProvice * provice = [[WHProvice alloc] init];
    provice = _sections[section];
    return provice.cities.count;
}
#pragma mark 行中内容
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell * contain = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
//    switch (indexPath.section) {
//        case 0:
//            switch (indexPath.row) {
//                case 0:
//                    contain.textLabel.text = @"邢台";
//                    break;
//                    
//                default:
//                    break;
//            }
//            break;
//            
//        default:
//            break;
//    }
#pragma mark 数组结构管理数据
//    contain.textLabel.text = _sections[indexPath.section][indexPath.row];
//    return contain;
    //字典封装数据,走的还是封装范
    /*
    NSDictionary * row_dic = _sections[indexPath.section];
    NSArray * row = [row_dic objectForKey:@"cities"];
    contain.textLabel.text = row[indexPath.row];
    */
#pragma mark 面向对象之返回每一行的cell内容
    WHProvice * provice = [[WHProvice alloc] init];
    provice = _sections[indexPath.section];
    contain.textLabel.text = provice.cities[indexPath.row];
    return contain;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
//    return @"省份";
    //字典封装数据,走的还是封装范
    /*
     NSDictionary * row_dic = _sections[section];
    //假如本应返回的数组类型,我却赋值给字符串类型,不易察觉的错误!
    NSString * header = [row_dic objectForKey:@"header"];
     */
    WHProvice * provice = _sections[section];
    return provice.header;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
//    return @"好不好,做比较,到蓝天,最可靠";
    //字典封装数据,走的还是封装范
    /*
    NSDictionary * row_dic = _sections[section];
    //假如本应返回的数组类型,我却赋值给字符串类型,不易察觉的错误!
    NSString * footer = [row_dic objectForKey:@"footer"];
    */
    WHProvice * provice = [[WHProvice alloc] init];
    provice = _sections[section];
    return provice.footer;
}

-(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView{
//    NSLog(@"%@",tableView);
    //高级应用:利用快速枚举法实现从数组中读取省对象,然后利用点方法从省对象读取header,最后利用可变数组的自动添加方法从header添加对象
    NSMutableArray * text = [NSMutableArray array];
    for (WHProvice * retrieve in _sections) {
        [text addObject:retrieve.header];
//        NSLog(@"%@",retrieve.header);
    }
    return text;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  OCUITableViewController.m
//  iosDemo
//
//  Created by cindy on 2020/3/29.
//  Copyright © 2020 cindy. All rights reserved.
//

#import "OCUITableViewController.h"

@interface OCUITableViewController () <UITableViewDataSource>


//数据视图来显示大量相同格式的信息的数据视图
//例如：通讯录等
@property (weak, nonatomic) IBOutlet UITableView *tableView;

-(void)initTabaleView;



@end

@implementation OCUITableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
   [self initTabaleView];
    
    
}

-(void)initTabaleView{
    self.tableView.dataSource = self;
   
    
  
    
    
}
    
    

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//必须实现的方法
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    NSString *cellString = @"CellStringTag";
   UITableViewCell * cell = [_tableView dequeueReusableCellWithIdentifier:cellString];
    if(nil == cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:cellString];
    }
    
   NSString *str =  [NSString stringWithFormat:@"第%ld组，第%ld行！",indexPath.section,indexPath.row];
    cell.textLabel.text = str;
    
    return cell;
}

//必须实现的方法
//获取每组元素的个数（行数）
//必须要实现的协议函数
//程序在显示数据时会调用此函数
//返回值：表示每组元素的个数
//p1：数据视图对象本身
//p2：那一组需要的行数
- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 15;
}

//可以不实现，默认为1，设置数据视图的组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}




@end

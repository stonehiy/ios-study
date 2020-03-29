//
//  HomeViewController.m
//  iosDemo
//
//  Created by cindy on 2020/3/13.
//  Copyright © 2020 cindy. All rights reserved.
//

#import "ViewController.h"
#import "HomeViewController.h"
#import "LoginViewController.h"
#import "MyTabbarViewController.h"
#import "iosDemo-Swift.h"
#import "OCUITableViewController.h"



@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)btnLogin:(id)sender {
    
    UIViewController *vc =  [[LoginViewController alloc] init];
    [self.navigationController pushViewController: vc animated:YES];
}

- (IBAction)btnTabbar:(id)sender {
    UIViewController *vc1 = [[Tab1ViewController alloc] init];
    UIViewController *vc2 = [[Tab2ViewController alloc] init];
    UIViewController *vc3 = [[Tab3ViewController alloc] init];
    
    vc1.tabBarItem.title = @"首页";
    vc1.tabBarItem.badgeValue = @"1234";
    vc1.tabBarItem.image = [UIImage imageNamed:@"aixin"];

    
    vc2.tabBarItem.title = @"发现";
    vc2.tabBarItem.image = [UIImage imageNamed:@"caidan"];
    
    vc3.tabBarItem.title = @"我的";
    vc3.tabBarItem.image = [UIImage imageNamed:@"dingdan"];
    
    
    MyTabbarViewController *tabbarVc =  [[MyTabbarViewController alloc] init];
    [tabbarVc addChildViewController:vc1];
    [tabbarVc addChildViewController:vc2];
    [tabbarVc addChildViewController:vc3];
    [self.navigationController pushViewController:tabbarVc animated:YES];
    
    
}

- (IBAction)btnTableViewPage:(id)sender {
    
    OCUITableViewController *bableView = [[OCUITableViewController alloc] init];
    [self.navigationController pushViewController:bableView animated:YES];
    
    
    
}

@end

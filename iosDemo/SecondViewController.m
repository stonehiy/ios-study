//
//  SecondViewController.m
//  iosDemo
//
//  Created by cindy on 2020/3/10.
//  Copyright © 2020 cindy. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)btnOut:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)btnOutRoot:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}
- (IBAction)btnOutOther:(id)sender {
   NSArray<UIViewController *> * array = [self.navigationController viewControllers];
//    for (NSArray* controller in array) {
//        if(controller. == )
//    }
    
    
    [self.navigationController popToViewController:array[1] animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

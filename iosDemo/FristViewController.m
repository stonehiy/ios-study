//
//  FristViewController.m
//  iosDemo
//
//  Created by cindy on 2020/3/10.
//  Copyright © 2020 cindy. All rights reserved.
//

#import "FristViewController.h"

@interface FristViewController ()

@end

@implementation FristViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)btnOut:(id)sender {
    NSLog(@"--------");
    [self.navigationController popViewControllerAnimated:YES];
    
}

@end

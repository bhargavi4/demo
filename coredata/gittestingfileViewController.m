//
//  gittestingfileViewController.m
//  coredata
//
//  Created by siva bhargavi on 24/01/17.
//  Copyright © 2017 siva bhargavi. All rights reserved.
//

#import "gittestingfileViewController.h"

@interface gittestingfileViewController ()

@end

@implementation gittestingfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    int a = 5;
    int b = 10;
    
    int sum = a + b;
    
    NSLog(@"The result is: %d", sum);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

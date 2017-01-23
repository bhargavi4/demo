//
//  ViewController.h
//  coredata
//
//  Created by siva bhargavi on 20/01/17.
//  Copyright © 2017 siva bhargavi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *first;

@property (weak, nonatomic) IBOutlet UITextField *second;

- (IBAction)buttoact:(UIButton *)sender;
@end


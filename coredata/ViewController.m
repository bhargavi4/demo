//
//  ViewController.m
//  coredata
//
//  Created by siva bhargavi on 20/01/17.
//  Copyright © 2017 siva bhargavi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSManagedObjectContext *context;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AppDelegate *appdelegate = [[UIApplication sharedApplication] delegate];
    context=[appdelegate.persistentContainer viewContext];
    // Do any additional setup after loading the view, typically from a nib.
    [self fetchdatafromcoredata];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttoact:(UIButton *)sender {
    NSManagedObject *obj = [NSEntityDescription insertNewObjectForEntityForName:@"Test" inManagedObjectContext:context];
    [obj setValue:_first.text forKey:@"first"];
    [obj setValue:_second.text forKey:@"second"];
    NSError *error = nil;
    if (![context save:&error]) {
        NSLog(@"Saving Failed!, Error and its Desc %@ %@", error, [error localizedDescription]);
    }  else{
        NSLog(@"saved");
    }
    
    [self fetchdatafromcoredata];
}
-(void)fetchdatafromcoredata{
    NSFetchRequest *fetchreq = [[NSFetchRequest alloc]initWithEntityName:@"Test"];
    NSError *error = nil;
    NSArray *arrdata = [context executeFetchRequest:fetchreq error:&error];
    NSLog(@"%@",arrdata);

    if (error !=nil) {
        NSLog(@"error");
    }else{
        NSLog(@"fetched");
    }
    
    for (NSManagedObject *obj in arrdata) {
        NSLog(@"%@",obj);
    }
    
}
@end

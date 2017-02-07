//
//  ViewController.m
//  imgpicker
//
//  Created by Sreenika Jaihan on 31/05/16.
//  Copyright © 2016 Sreenika Jaihan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(nextview) userInfo:nil repeats:NO];
    
    
    [super viewDidLoad];
    [self nextview];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)nextview{
    NSLog(@"sucess");
    
    ImageViewController *imgae = [[ImageViewController alloc]initWithNibName:@"ImageViewController" bundle:nil];
    [self presentViewController:imgae animated:YES completion:nil];
 }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

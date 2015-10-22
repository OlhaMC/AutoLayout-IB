//
//  ViewController.m
//  AutoLayout-IB
//
//  Created by Admin on 21.10.15.
//  Copyright (c) 2015 OlhaF. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) NSString * textInfoForLable;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString * fileAddress = [[NSBundle mainBundle] pathForResource:@"Data" ofType:@".txt"];
    
    self.textInfoForLable = [NSString stringWithContentsOfFile:fileAddress encoding:NSASCIIStringEncoding error:nil];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Button Actions

- (IBAction)loadAction:(UIButton*)sender
{
    self.lable.text = self.textInfoForLable;
}

- (IBAction)clearAction:(UIButton*)sender
{
    self.lable.text  = @"";
}

@end

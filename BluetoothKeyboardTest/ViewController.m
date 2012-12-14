//
//  ViewController.m
//  BluetoothKeyboardTest
//
//  Created by RyusukeHotta on 12/12/13.
//  Copyright (c) 2012年 RyusukeHotta. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    
    MyUIApplication* app = (MyUIApplication*)[UIApplication sharedApplication];
    
    app.keyboardEventDelegate = self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)keyboardWithCode:(unsigned long)code event:(unsigned long)event flag:(unsigned long)flag
{
    _labelCode.text = [NSString stringWithFormat:@"%lu (%02lXh)",code,code];
    _labelEvent.text = [NSString stringWithFormat:@"%ld",event];
    _labelFlag.text = [NSString stringWithFormat:@"%02lXh",flag];
}

@end

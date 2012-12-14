//
//  ViewController.h
//  BluetoothKeyboardTest
//
//  Created by RyusukeHotta on 12/12/13.
//  Copyright (c) 2012年 RyusukeHotta. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyUIApplication.h"


@interface ViewController : UIViewController<MyKeyboardInputEventDelegate>
{
    IBOutlet UILabel* _labelCode;
    IBOutlet UILabel* _labelFlag;
    IBOutlet UILabel* _labelEvent;
    
}

@end

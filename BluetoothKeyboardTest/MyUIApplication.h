//
//  MyUIApplication.h
//  BluetoothKeyboardTest
//
//  Created by RyusukeHotta on 12/12/13.
//  Copyright (c) 2012年 RyusukeHotta. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol MyKeyboardInputEventDelegate<NSObject>

- (void)keyboardWithCode:(unsigned long)code event:(unsigned long)event flag:(unsigned long)flag;

@end 

@interface MyUIApplication : UIApplication


@property (nonatomic, retain) id<MyKeyboardInputEventDelegate> keyboardEventDelegate;

@end

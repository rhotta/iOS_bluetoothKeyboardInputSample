//
//  MyUIApplication.m
//  BluetoothKeyboardTest
//
//  Created by RyusukeHotta on 12/12/13.
//  Copyright (c) 2012年 RyusukeHotta. All rights reserved.
//

#import "MyUIApplication.h"



@implementation MyUIApplication
@synthesize keyboardEventDelegate;

- (void)sendEvent:(UIEvent *)event
{

    
    unsigned long *eventBuf;

    [super sendEvent:event];
    
    
    if(event.type != 0xffffffff || event.subtype != 0) return;
    
    
    if (keyboardEventDelegate && [event respondsToSelector:@selector(_gsEvent)]) {
        eventBuf = (unsigned long*)[event performSelector:@selector(_gsEvent)];
        [keyboardEventDelegate keyboardWithCode:eventBuf[15] event:eventBuf[2] flag:eventBuf[12]];
    
        /*
        
        for(int i=0;i<20;i++)
        {
            NSLog(@"[%d]=%lX",i,eventBuf[i]);
        }
         */
    }
    
    
}

- (void)dealloc
{
    [keyboardEventDelegate release];
    [super dealloc];
}
@end

//
//  ObserverModal.h
//  Demo
//
//  Created by gongguifei on 2017/10/19.
//  Copyright © 2017年 ggf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GCBObservers.h"

@protocol ObserverModalDelegate;

@interface ObserverModal : NSObject

- (void)addDelegate:(id<ObserverModalDelegate>) delegate;
- (void)removeDelegate:(id<ObserverModalDelegate>) delegate;

- (void)notifyDelegates;
@end


@protocol ObserverModalDelegate
- (void)sayHello;
@end

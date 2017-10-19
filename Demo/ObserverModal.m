//
//  ObserverModal.m
//  Demo
//
//  Created by gongguifei on 2017/10/19.
//  Copyright © 2017年 ggf. All rights reserved.
//

#import "ObserverModal.h"
#import "LazyMacro.h"

@interface ObserverModal ()
@property (nonatomic, strong) GCBObservers *observers;
@end

@implementation ObserverModal

LazyMethod(observers, GCBObservers)

- (void)addDelegate:(id<ObserverModalDelegate>) delegate {
    [self.observers addObserver:delegate];
}
- (void)removeDelegate:(id<ObserverModalDelegate>) delegate {
    [self.observers removeObserver:delegate];
}

- (void)notifyDelegates {
    [self.observers enumerateObserversUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        id<ObserverModalDelegate> delegate = obj;
        [delegate sayHello];
    }];
}
@end

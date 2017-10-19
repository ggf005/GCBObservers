//
//  GCBObservers.m
//  GCBObservers
//
//  Created by gongguifei on 2017/10/19.
//  Copyright © 2017年 ggf. All rights reserved.
//

#import "GCBObservers.h"
#import "GCBObserverAdapter.h"

@interface GCBObservers<ObjectType> ()
@property (nonatomic, strong) NSMutableArray<ObjectType> *observers;
@end

@implementation GCBObservers

- (NSMutableArray *)observers {
    if (_observers == nil) {
        _observers = [NSMutableArray array];
    }
    return _observers;
}

- (BOOL)containObserver:(id)observer {
    return [self.observers containsObject:observer];
}

- (void)addObserver:(id)observer {
    if (observer == nil) {
        return;
    }
    
    if (![self.observers containsObject:observer]) {
        [self.observers addObject:observer];
    }
}

- (void)removeObserver:(id)observer {
    if ([self.observers containsObject:observer]) {
        [self.observers removeObject:observer];
    }
}

- (void)enumerateObserversUsingBlock:(void (^)(id obj, NSUInteger idx, BOOL *stop))block {
    [self.observers enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (block) {
            block(obj, idx, stop);
        }
    }];
}

@end

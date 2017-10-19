//
//  GCBObservers.h
//  GCBObservers
//
//  Created by gongguifei on 2017/10/19.
//  Copyright © 2017年 ggf. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GCBObservers<ObjectType> : NSObject

- (BOOL)containObserver:(ObjectType)observer;

- (void)addObserver:(ObjectType)observer;
- (void)removeObserver:(ObjectType)observer;

- (void)enumerateObserversUsingBlock:(void (^)(ObjectType obj, NSUInteger idx, BOOL *stop))block;
@end

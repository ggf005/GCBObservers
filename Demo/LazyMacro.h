//
//  LazyMacro.h
//  GCBObservers
//
//  Created by gongguifei on 2017/10/19.
//  Copyright © 2017年 ggf. All rights reserved.
//

#ifndef LazyMacro_h
#define LazyMacro_h


#define LazyMethod(name, class) \
- (class *)name { \
    if (_##name == nil) {    \
        _##name = [class new];\
    }\
    return _##name;\
}

#endif /* LazyMacro_h */

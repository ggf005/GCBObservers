//
//  ViewController.m
//  Demo
//
//  Created by gongguifei on 2017/10/19.
//  Copyright © 2017年 ggf. All rights reserved.
//

#import "ViewController.h"
#import "ObserverModal.h"

@interface ViewController ()<ObserverModalDelegate>
@property (nonatomic, strong) ObserverModal *observerModal;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _observerModal = [ObserverModal new];
    [_observerModal addDelegate:self];
    [_observerModal notifyDelegates];
}


- (void)sayHello {
    NSLog(@"hello");
}

@end

//
//  ViewController.m
//  YYDispatchQueuePoolSourceAnalysis
//
//  Created by MisterBooo on 2017/12/9.
//  Copyright © 2017年 MisterBooo. All rights reserved.
//

#import "ViewController.h"
#import "YYDispatchQueuePool.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    YYDispatchQueuePool *pool = [[YYDispatchQueuePool alloc] initWithName:@"file.read" queueCount:5 qos:NSQualityOfServiceBackground];
    dispatch_queue_t queue1 = [pool queue];
    dispatch_queue_t queue2 = [pool queue];
                               
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    YYDispatchQueuePool *pool = [[YYDispatchQueuePool alloc] initWithName:@"file.read" queueCount:5 qos:NSQualityOfServiceBackground];
    dispatch_queue_t queue1 = [pool queue];
    dispatch_queue_t queue2 = [pool queue];
    dispatch_queue_t queue = YYDispatchQueueGetForQOS(NSQualityOfServiceUserInteractive);
}
 


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

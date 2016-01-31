//
//  QueueLL.m
//  DataStructuresWithTests
//
//  Created by Amitai Blickstein on 1/30/16.
//  Copyright © 2016 Amitai Blickstein, LLC. All rights reserved.
//

#import "QueueLL.h"

@interface QueueLL()
@property (nonatomic, strong) LinkedList *list;
@end

@implementation QueueLL

-(instancetype)init {
    if (!(self = [super init])) return nil;
    
    _list = [LinkedList new];
    
    return self;
}

-(void)enqueue:(NSInteger)value {
    [self.list addToBack:value];
}

-(NSInteger)peek {
    return self.list.head.value;
}

-(NSInteger)dequeue {
    NSInteger valueToReturn = [self peek];
    [self.list removeFromFront];
    return valueToReturn;
}

-(NSString *)printQueue {
    return [self.list printList];
}

-(NSInteger)indexOfValue:(NSInteger)aValue {
    return [self.list indexOfValue:aValue];
}

-(BOOL)containsValue:(NSInteger)aValue {
    return [self.list containsValue:aValue];
}

/**
 *  Ideally, this would dealloc each node as well.
 */
-(void)removeAll {
    self.list.head = nil;
    self.list.tail = nil;
    self.list.count = 0;
}

-(BOOL)isEmpty {
    return [self.list isEmpty];
}

@end

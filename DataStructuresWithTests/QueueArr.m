//
//  QueueArr.m
//  DataStructuresWithTests
//
//  Created by Amitai Blickstein on 1/31/16.
//  Copyright © 2016 Amitai Blickstein, LLC. All rights reserved.
//

#import "QueueArr.h"

@interface QueueArr()
@property (nonatomic, strong) NSMutableArray <NSNumber*> *array;
@end

@implementation QueueArr

-(instancetype)init {
    if (!(self = [super init])) return nil;
    
    _array = [NSMutableArray new];
    
    return self;
}

-(void)enqueue:(NSInteger)value {
    [self.array addObject:@(value)];
}

-(NSInteger)peek {
    return self.array.firstObject.integerValue;
}

-(NSInteger)dequeue {
    NSInteger valueToReturn = [self peek];
    [self.array removeObjectAtIndex:0];
    return valueToReturn;
}

-(void)removeAll {
    [self.array removeAllObjects];
}

-(BOOL)isEmpty {
    return self.array.count == 0;
}

-(NSString *)printQueue {
    NSLog(@"%@", [self.array description]);
    return [self.array description];
}

-(NSInteger)indexOfValue:(NSInteger)aValue {
    return [self.array indexOfObject:@(aValue)];
}

-(BOOL)containsValue:(NSInteger)aValue {
    return [self.array containsObject:@(aValue)];
}

@end

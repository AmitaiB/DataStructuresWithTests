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

-(void)push:(NSInteger)value {
    [self.list addToFront:value];
}

-(NSInteger)pop {
    NSInteger valueToReturn = self.list.head.value;
    [self.list removeFromFront];
    return valueToReturn;
}


-(NSString *)printStack {
    return [self.list printList];
}

-(NSInteger)indexOfValue:(NSInteger)aValue {
    return [self.list indexOfValue:aValue];
}

-(BOOL)containsValue:(NSInteger)aValue {
    return [self.list containsValue:aValue];
}

@end

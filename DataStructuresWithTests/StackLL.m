//
//  StackLL.m
//  DataStructuresWithTests
//
//  Created by Amitai Blickstein on 1/27/16.
//  Copyright © 2016 Amitai Blickstein, LLC. All rights reserved.
//

/**
 Implemented with a Linked List.
 */

#import "StackLL.h"
#import "LinkedList.h"

@interface StackLL()
@property (nonatomic, strong) LinkedList *list;
@end

@implementation StackLL

<<<<<<< HEAD
-(void)push:(id)value {
    [self.list addToFront:value];
}

-(id)pop {
    id valueToPop = self.list.head.value;
    [self.list removeFromFront];
    return valueToPop;
}

-(void)printAndEmpty {
    NSInteger i = 0;
    NSInteger stopNum = 100;
    while (![self.list isEmpty] && i < stopNum) {
        NSLog(@"%luth value: %@", i, [self pop]);
        NSLog(@"(self.list.count = %lu)", self.list.count);
        i++;
    }
}

=======
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
>>>>>>> nsinteger-branch

@end

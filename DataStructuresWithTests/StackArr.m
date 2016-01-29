//
//  StackArr.m
//  DataStructuresWithTests
//
//  Created by Amitai Blickstein on 1/28/16.
//  Copyright © 2016 Amitai Blickstein, LLC. All rights reserved.
//

#import "StackArr.h"

@interface StackArr()
@property (nonatomic, strong) NSMutableArray <NSNumber*> *array;
@property (nonatomic) NSInteger itemsNum;
@end

@implementation StackArr

-(instancetype)init {
    if (!(self = [super init])) return nil;
    
        // The array of items contained in the stack. Init to 0, will
        // expand as needed during Push.
    _array = [NSMutableArray arrayWithCapacity:0];

        // Not the size of the array, but the number of items in the stack.
    _itemsNum = 0;
    
    
    return self;
}

-(void)push:(NSInteger)value {
        // itemsNum = 0 ... first push
        // itemsNum = length ... growth boundary
    if (self.itemsNum == self.array.count) {
        NSInteger newLength = self.itemsNum == 0 ? 4 : self.itemsNum * 2;
        __block NSMutableArray <NSNumber*> *longerArray = [NSMutableArray arrayWithCapacity:newLength];
     
        [self.array enumerateObjectsUsingBlock:^(NSNumber * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            longerArray[idx] = obj;
        }];
        self.array = longerArray;
    }
    
    self.array[self.itemsNum] = @(value);
    self.itemsNum++;

    //  The easy way:
    //    [self.array addObject:@(value)];
}

-(NSInteger)pop {
    NSInteger valueToReturn = self.array.lastObject.integerValue;
    [self.array removeLastObject];
    return valueToReturn;
}

-(NSString *)printStack {
    __block NSMutableString *description = [@"" mutableCopy];
    [self.array enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(NSNumber * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
    }];
}


-(NSInteger)indexOfValue:(NSInteger)aValue {
    
}

-(BOOL)containsValue:(NSInteger)aValue {
    
}


@end

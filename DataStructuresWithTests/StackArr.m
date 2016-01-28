//
//  StackArr.m
//  DataStructuresWithTests
//
//  Created by Amitai Blickstein on 1/28/16.
//  Copyright © 2016 Amitai Blickstein, LLC. All rights reserved.
//

#import "StackArr.h"

@interface StackArr()
@property (nonatomic, strong) NSArray *array;
@end

@implementation StackArr

-(instancetype)init {
    if (!(self = [super init])) return nil;
    
    _array = [NSArray new];
    
    return self;
}



@end

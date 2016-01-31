//
//  TreeNode.m
//  DataStructuresWithTests
//
//  Created by Amitai Blickstein on 1/31/16.
//  Copyright © 2016 Amitai Blickstein, LLC. All rights reserved.
//

#import "TreeNode.h"

@implementation TreeNode

    /**
     TODO: enum with options dictionary, for parent and children, and value.
     */


-(instancetype)initWithValue:(NSInteger)aValue {
    if (!(self = [super init])) return nil;
        
    _value = aValue;
    
    return self;
}

-(instancetype)init {
    return [self initWithValue:-1];
}

@end

//
//  BinaryTreeNode.m
//  DataStructuresWithTests
//
//  Created by Amitai Blickstein on 1/31/16.
//  Copyright © 2016 Amitai Blickstein, LLC. All rights reserved.
//

#import "BinaryTreeNode.h"

@implementation BinaryTreeNode
+(instancetype)treeNodeWithValue:(NSInteger)value {
    return [[self alloc] initWithValue:value];
}

-(instancetype)initWithValue:(NSInteger)value {
    if (!(self = [super init])) return nil;
    _value = value;
    return self;
}
@end

//
//  Tree.m
//  DataStructuresWithTests
//
//  Created by Amitai Blickstein on 1/31/16.
//  Copyright © 2016 Amitai Blickstein, LLC. All rights reserved.
//

#import "Tree.h"
/**
 *  A k-ary tree is a rooted tree in which each node has no more than k children.
 *  A binary tree is the special case where k=2.
 */
@interface Tree()
@property (nonatomic) NSInteger k;
@end

@implementation Tree

-(instancetype)init {
    if (!(self = [super init])) return nil;
    
    _root = [TreeNode new];
    
    return self;
}

-(BOOL)isEmpty {
    return self.root == nil;
}

-(void)addValue:(NSInteger)value {
    TreeNode *newNode = [TreeNode new];
    newNode.value = value;
    
    if ([self isEmpty]) {
        self.root = newNode;
    } else {
        
    }
}


/**
 *  Breadth-first traversal, default k = 2
 *
 *  @return Returns the next free node, acc. to a breadth-first walk | k = 2.
 */
/*
-(TreeNode*)nextFreeNode {

}
 */

@end

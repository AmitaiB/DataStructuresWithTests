//
//  BinarySearchTree.m
//  DataStructuresWithTests
//
//  Created by Amitai Blickstein on 2/2/16.
//  Copyright © 2016 Amitai Blickstein, LLC. All rights reserved.
//

#import "BinarySearchTree.h"

@interface BinarySearchTree()
@property (nonatomic, strong) BinaryTreeNode *root;
@end

@implementation BinarySearchTree

-(BOOL)isEmpty {
    return self.root == nil;
}

-(void)addValue:(NSInteger)value {

    if ([self isEmpty]) {
        self.root = [BinaryTreeNode treeNodeWithValue:value];
    } else {
        [self addValue:value recurisvelyViaNode:self.root];
    }
}

-(void)addValue:(NSInteger)value recurisvelyViaNode:(BinaryTreeNode*)node {
//    if (node == nil) { node = [BinaryTreeNode treeNodeWithValue:value]; }
    if (value <  node.value) { [self addValue:value recurisvelyViaNode:node.LHS]; }
    if (value >= node.value) { [self addValue:value recurisvelyViaNode:node.RHS]; }
}

-(BOOL)containsValue:(NSInteger)value {
    return [self nodeWithValue:value] != nil;
}

-(BinaryTreeNode*)nodeWithValue:(NSInteger)value {
    if (self.root.value == value) {
        return self.root;
    } else {
        return [self nodeWithValue:value recursivelyViaNode:self.root];
    }
    
    return nil;
}

-(BinaryTreeNode*)nodeWithValue:(NSInteger)value recursivelyViaNode:(BinaryTreeNode*)node {
    if (node  == nil) { return nil; }
    if (value <  node.value) { return [self nodeWithValue:value recursivelyViaNode:node.LHS]; }
    if (value >= node.value) { return [self nodeWithValue:value recursivelyViaNode:node.RHS]; }
    
    /**
     *  Not sure about this one: maybe return nil instead?
     */
    return [BinaryTreeNode treeNodeWithValue:value];
}

@end

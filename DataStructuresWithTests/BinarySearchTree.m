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
@property (nonatomic, strong) NSMutableArray <NSNumber*> *printOutLog;
@end

@implementation BinarySearchTree

-(instancetype)init {
    if (!(self = [super init])) return nil;
    
    _printOutLog = [NSMutableArray new];
    
    return self;
}

-(BOOL)isEmpty {
    return self.root == nil;
}

-(void)addValue:(NSInteger)value {
    if ([self isEmpty]) { self.root = [BinaryTreeNode treeNodeWithValue:value]; }
    else { [self addValue:value fromNode:self.root]; }
}

-(void)addValue:(NSInteger)value fromNode:(BinaryTreeNode *)node {
    if (node == nil) { node = [BinaryTreeNode treeNodeWithValue:value]; }
    if (value <  node.value) { [self addValue:value fromNode:node.LHS]; }
    if (value >= node.value) { [self addValue:value fromNode:node.RHS]; }
}

-(BOOL)containsValue:(NSInteger)value {
    return [self nodeWithValue:value] != nil;
}

/**
 *  Add value "just works" -style.
 *
 *  @param value The value to store in the tree.
 *
 *  @return The node containing the sought value.
 */
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

-(void)treeTraversalFromNode:(BinaryTreeNode *)node withSelector:(SEL)selectorToPerformOnNodes withObject:(id)obj {
    if (node != nil) {
        [self treeTraversal:node.LHS];
        [node performSelector:selectorToPerformOnNodes withObject:obj];
        [self treeTraversal:node.RHS];
    }
}

-(void)treeTraversal:(BinaryTreeNode *)node {
    if (node != nil) {
        [self treeTraversal:node.LHS];
        [self visit:node];
        [self treeTraversal:node.RHS];
    }
}

-(void)visit:(BinaryTreeNode*)node {
    NSLog(@"\nNode value: %lu", node.value);
    [self.printOutLog addObject:@(node.value)];
}

-(void)printOutTheLog {
    __block NSMutableString *prettyLog = [NSMutableString new];
    [self.printOutLog enumerateObjectsUsingBlock:^(NSNumber * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [prettyLog appendFormat:@"\nNode #%lu: %@", idx, obj];
    }];
    
    NSLog(@"%@", prettyLog);
}

@end

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

-(BOOL)isEmpty { return self.root == nil; }

-(void)addValue:(NSInteger)value {
    [self addValue:value fromNode:self.root];
}

-(void)addValue:(NSInteger)value fromNode:(BinaryTreeNode *)node
{
    if (node == nil) { node = [BinaryTreeNode treeNodeWithValue:value]; }
    if (value <  node.value) { [self addValue:value fromNode:node.LHS]; }
    if (value >= node.value) { [self addValue:value fromNode:node.RHS]; }
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
}

    //-(void)treeTraversalFromNode:(BinaryTreeNode *)node withSelector:(SEL)selectorToPerformOnNodes withObject:(id)obj {
//    if (node != nil) {
//        [self treeTraversal:node.LHS];
//        [node performSelector:selectorToPerformOnNodes withObject:obj];
//        [self treeTraversal:node.RHS];
//    }
//}

//-(void)printOutTheLog {
//    __block NSMutableString *prettyLog = [NSMutableString new];
//    [self.printOutLog enumerateObjectsUsingBlock:^(NSNumber * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        [prettyLog appendFormat:@"\nNode #%lu: %@", idx, obj];
//    }];
//    NSLog(@"%@", prettyLog);
//}

@end

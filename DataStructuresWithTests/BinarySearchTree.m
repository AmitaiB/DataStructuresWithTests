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
    } else if (value < self.root.value) {
        
    }
}

-(void)addValue:(NSInteger)value recurisvelyViaNode:(BinaryTreeNode*) {
    
}

@end

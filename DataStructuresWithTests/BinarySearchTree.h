//
//  BinarySearchTree.h
//  DataStructuresWithTests
//
//  Created by Amitai Blickstein on 2/2/16.
//  Copyright © 2016 Amitai Blickstein, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BinaryTreeNode.h"

@interface BinarySearchTree : NSObject

-(BOOL)isEmpty;
-(void)addValue:(NSInteger)value;




-(BinaryTreeNode*)nodeWithValue:(NSInteger)value;
-(BOOL)containsValue:(NSInteger)value;

-(void)treeTraversalFromNode:(BinaryTreeNode*)node withSelector:(SEL)selectorToPerformOnNodes withObject:(id)obj;
    ///-(void)preOrderTraversal:(BinaryTreeNode*)node;
    ///-(void)postOrderTraversal:(BinaryTreeNode*)node;
@end

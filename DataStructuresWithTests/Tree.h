//
//  Tree.h
//  DataStructuresWithTests
//
//  Created by Amitai Blickstein on 1/31/16.
//  Copyright © 2016 Amitai Blickstein, LLC. All rights reserved.
//
/**
 *  A tree data structure can be defined recursively (locally) as
 *  a collection of nodes (starting at a root node), where each node
 *  is a data structure consisting of a value, together with a list
 *  of references to nodes (the "children"), with the constraints that:
 *    1) no reference is duplicated, and 
 *    2) none points to the root.
 */
#import <Foundation/Foundation.h>
#import "TreeNode.h"

@interface Tree : NSObject
@property (nonatomic, strong) TreeNode *root;

-(BOOL)isEmpty;
-(void)addValue:(NSInteger)value;

@end

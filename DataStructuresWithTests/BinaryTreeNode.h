//
//  BinaryTreeNode.h
//  DataStructuresWithTests
//
//  Created by Amitai Blickstein on 1/31/16.
//  Copyright © 2016 Amitai Blickstein, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinaryTreeNode : NSObject

@property (nonatomic) NSInteger value;
//@property (nonatomic, strong) BinaryTreeNode *parent;
//@property (nonatomic, strong) NSMutableSet *children;
@property (nonatomic, strong) BinaryTreeNode *LHS;
@property (nonatomic, strong) BinaryTreeNode *RHS;

+(instancetype)treeNodeWithValue:(NSInteger)value;
-(instancetype)initWithValue:(NSInteger)value;


@end

//
//  Node.h
//  DataStructures
//
//  Created by Amitai Blickstein on 1/25/16.
//  Copyright © 2016 Amitai Blickstein, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node <T> : NSObject

@property (nonatomic, strong) id value;
@property (nonatomic, strong) Node *next;
@property (nonatomic, strong) Node *previous;

-(instancetype)initWithValue:(T)value;

@end

//
//  Node.h
//  DataStructures
//
//  Created by Amitai Blickstein on 1/25/16.
//  Copyright © 2016 Amitai Blickstein, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property (nonatomic) NSInteger value;
@property (nonatomic, strong) Node *next;
@property (nonatomic, strong) Node *previous;

-(instancetype)initWithValue:(NSInteger)value;

@end

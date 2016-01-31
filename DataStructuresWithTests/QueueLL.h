//
//  QueueLL.h
//  DataStructuresWithTests
//
//  Created by Amitai Blickstein on 1/30/16.
//  Copyright © 2016 Amitai Blickstein, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedList.h"

@interface QueueLL : NSObject

-(void)enqueue:(NSInteger)value;
-(NSInteger)dequeue;
-(NSInteger)peek;
-(void)removeAll;
-(BOOL)isEmpty;

-(NSString *)printQueue;
-(NSInteger)indexOfValue:(NSInteger)aValue;
-(BOOL)containsValue:(NSInteger)aValue;


@end

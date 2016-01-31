//
//  QueueArr.h
//  DataStructuresWithTests
//
//  Created by Amitai Blickstein on 1/31/16.
//  Copyright © 2016 Amitai Blickstein, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedList.h"

@interface QueueArr : NSObject

-(void)enqueue:(NSInteger)value;
-(NSInteger)dequeue;
-(NSInteger)peek;
-(void)removeAll;
-(BOOL)isEmpty;

-(NSString *)printQueue;
-(NSInteger)indexOfValue:(NSInteger)aValue;
-(BOOL)containsValue:(NSInteger)aValue;


@end

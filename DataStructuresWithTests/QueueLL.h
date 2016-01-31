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

-(void)push:(NSInteger)value;
-(NSInteger)pop;

-(NSString *)printStack;
-(NSInteger)indexOfValue:(NSInteger)aValue;
-(BOOL)containsValue:(NSInteger)aValue;


@end

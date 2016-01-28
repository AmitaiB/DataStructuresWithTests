//
//  StackLL.h
//  DataStructuresWithTests
//
//  Created by Amitai Blickstein on 1/27/16.
//  Copyright © 2016 Amitai Blickstein, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StackLL <T> : NSObject

-(void)printAndEmpty;

-(void)push:(T)value;
-(T)pop;


@end

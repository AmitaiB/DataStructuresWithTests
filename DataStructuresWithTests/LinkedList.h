//
//  LinkedList.h
//  DataStructures
//
//  Created by Amitai Blickstein on 1/26/16.
//  Copyright © 2016 Amitai Blickstein, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface LinkedList<T> : NSObject

@property (nonatomic, strong) Node<T> *head;
@property (nonatomic, strong) Node<T> *tail;
@property (nonatomic) NSInteger count;

-(NSString *)printList;
-(BOOL)isEmpty;
-(void)addToFront:(id)valueToAdd;
-(void)addToBack:(id)valueToAdd;
-(void)removeFromFront;
-(void)removeFromBack;
-(void)removeAll;
<<<<<<< HEAD
=======

-(NSInteger)indexOfValue:(NSInteger)aValue;
-(BOOL)containsValue:(NSInteger)aValue;


//-(Node*)shift;
//-(Node*)pop;
>>>>>>> nsinteger-branch


@end

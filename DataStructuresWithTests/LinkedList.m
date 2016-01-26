//
//  LinkedList.m
//  DataStructures
//
//  Created by Amitai Blickstein on 1/26/16.
//  Copyright © 2016 Amitai Blickstein, LLC. All rights reserved.
//

#import "LinkedList.h"

@implementation LinkedList

-(BOOL)isEmpty {
    if (self.head == nil) return YES;
    else return NO;
}

-(void)addToFront:(NSInteger)valueToAdd {
    Node *nodeToAdd = [[Node alloc] init:valueToAdd];

    if (self.isEmpty) { self.tail = nodeToAdd; }
    else { nodeToAdd.next = self.head; }

    self.head = nodeToAdd;
        //If not Empty
}

-(void)addToBack:(NSInteger)valueToAdd {
    
}

@end

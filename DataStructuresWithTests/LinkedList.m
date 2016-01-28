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
    if (self.count <= 0) return YES;
    else return NO;
}

-(void)addToFront:(NSInteger)valueToAdd {
    Node *nodeToAdd = [[Node alloc] initWithValue:valueToAdd];

    if (self.isEmpty) { [self listWithSingleNode:nodeToAdd]; }
    else {
        nodeToAdd.next = self.head;
        self.head = nodeToAdd;
        self.head.next.previous = self.head;
    }

    self.count++;
}

-(void)addToBack:(NSInteger)valueToAdd {
    Node *nodeToAdd = [[Node alloc] initWithValue:valueToAdd];
    
    if (self.isEmpty) { [self listWithSingleNode:nodeToAdd]; }
    else {
        nodeToAdd.previous = self.tail;
        self.tail = nodeToAdd;
        self.tail.previous.next = nodeToAdd;
    }
    
    self.count++;
}

-(void)listWithSingleNode:(Node*)soleNode {
    self.head = soleNode;
    self.tail = soleNode;
}


-(void)removeFromFront {
    [self commonRemoveFrontBack:YES];
}

-(void)removeFromBack {
    [self commonRemoveFrontBack:NO];
}

-(void)commonRemoveFrontBack:(BOOL)removeFromFront {
    if (self.isEmpty) { return; }
    
    if (self.count == 1) {
        self.head = nil;
        self.tail = nil;
    }
    
    if (self.count > 1) {
        if (removeFromFront) {
            Node *oldHead = self.head;
            self.head = oldHead.next;
            oldHead.next = nil;
            self.head.previous = nil;
        }
        else {
            Node *oldTail = self.tail;
            self.tail = oldTail.previous;
            oldTail.previous = nil;
            self.tail.next = nil;
        }
// For singly linked lists (step through each element):
//            Node *currentNode = self.head;
//            while (currentNode.next != self.tail) {
//                currentNode = currentNode.next;
//        }
    }
    
    self.count--;
    [self printList];
}


-(void)removeAll {
    self.head = nil;
    self.tail = nil;
    self.count = 0;
    [self printList];
}

    //Walk through the list, check each node for the value;
    //return the value of the first hit.
-(NSInteger)indexOfValue:(NSInteger)aValue {
    Node *indexNode = self.head;
    NSInteger index = 0;
    while (![indexNode isEqual:self.tail]) {
        if (indexNode.value == aValue) {
            return index;
        }
        
        indexNode = indexNode.next;
        index++;
    }
    
    return -1;
}

-(BOOL)containsValue:(NSInteger)aValue {
    return [self indexOfValue:aValue] != -1;
}

-(NSString *)printList {
    if ([self isEmpty]) {
        NSLog(@"It's Empty!");
        return @"It's Empty!";
    }
    
    NSMutableString *description = [@"" mutableCopy];
    Node *indexNode = self.head;
    NSInteger index = 0;
    while (![indexNode isEqual:self.tail]) {
        [description appendString:[NSString stringWithFormat:@"Node(%lu) value:%lu\n", index, indexNode.value]];
        indexNode = indexNode.next;
        index++;
    }
    [description appendFormat:@"Count: %lu", self.count];
    NSLog(@"%@", description);
    
    /*
    for (NSInteger i = 0; i < self.count; i++) {
        NSString *nodeDesc = [NSString stringWithFormat:@"Node(%lu) value:%lu\n", i, indexNode.value];
        NSLog(@"%@", nodeDesc);
        [description appendString:nodeDesc];
        indexNode = indexNode.next;
    }
    NSLog(@"Count: %lu", self.count);
     */
    
    return [description copy];
}


@end

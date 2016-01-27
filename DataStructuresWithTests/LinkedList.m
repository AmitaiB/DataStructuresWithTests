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

    if (self.isEmpty) { self.tail = nodeToAdd; }
    else { nodeToAdd.next = self.head; }

    self.head = nodeToAdd;
    self.count++;
}

-(void)addToBack:(NSInteger)valueToAdd {
    Node *nodeToAdd = [[Node alloc] initWithValue:valueToAdd];
    
    if (self.isEmpty) { self.head = nodeToAdd; }
    else { self.tail.next = nodeToAdd; }
    
    self.tail = nodeToAdd;
    self.count++;
}

-(void)removeFromBack {
    if (self.isEmpty) { return; }

    if (self.count == 1) {
        self.head = nil;
        self.tail = nil;
    }
    
    if (self.count > 1) {
        Node *currentNode = self.head;
        while (currentNode.next != self.tail) {
            currentNode = currentNode.next;
        }
        currentNode.next = nil;
        self.tail = currentNode;
    }
    self.count--;
    [self printList];
}

-(void)removeFromFront {
    if (self.isEmpty) { return; }
    
    if (self.count == 1) {
        self.head = nil;
        self.tail = nil;
    }
    
    if (self.count > 1) {
        Node *oldHead = self.head;
        self.head = oldHead.next;
        oldHead.next = nil;
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

-(void)printList {
    Node *indexNode = self.head;
    for (NSInteger i = 0; i < self.count; i++) {
        NSLog(@"Node(%lu) value:%lu", i, indexNode.value);
        indexNode = indexNode.next;
    }
    NSLog(@"Count: %lu", self.count);
}


@end

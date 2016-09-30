//
//  NSError+PersianDescription.m
//
//  Created by Ahmad on 9/30/16.
//  Copyright © 2016 Ahmad. All rights reserved.
//

#import "NSError+PersianDescription.h"

@implementation NSError (PersianDescription)

-(NSString *)persianDescription {
    
    NSString *fileName = [self.domain stringByAppendingString:@"+PersianDescription"];
    NSString *filePath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"plist"];
    
    if (!filePath) {
        return self.localizedDescription;
    }
    
    NSDictionary *strings = [[NSDictionary alloc] initWithContentsOfFile:filePath];
    NSString *codeString = [NSString stringWithFormat:@"%li",(long)self.code];
    NSString *persian = [strings objectForKey:codeString];
    
    if (!persian) {
        persian = self.localizedDescription;
    }
    
    return persian;
    
}

@end

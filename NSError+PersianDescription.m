//
//  NSError+PersianDescription.m
//  BookInIran
//
//  Created by Ahmad on 9/30/16.
//  Copyright © 2016 Ahmad. All rights reserved.
//

#import "NSError+PersianDescription.h"

@implementation NSError (PersianDescription)

-(NSString *)persianDescription {
    
    if (![self.domain isEqualToString:NSURLErrorDomain]) {
        return self.localizedDescription;
    }
    
    NSString *persian = @"";
    
    switch (self.code) {
        case -1001: // time out
            persian = @"پاسخی از سمت سرور دریافت نشد";
            break;
        default:
            persian = self.localizedDescription;
            break;
    }
    
    return persian;
    
}

@end

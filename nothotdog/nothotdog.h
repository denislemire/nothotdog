//
//  nothotdog.h
//  nothotdog
//
//  Created by Denis Lemire on 2025-01-11.
//

#import <Foundation/Foundation.h>

//! Project version number for nothotdog.
FOUNDATION_EXPORT double nothotdogVersionNumber;

//! Project version string for nothotdog.
FOUNDATION_EXPORT const unsigned char nothotdogVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <nothotdog/PublicHeader.h>

@interface NotHotDog : NSObject
- (BOOL)isHotDog:(NSString *)item;
@end

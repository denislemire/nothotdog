//
//  nothotdog.m
//  nothotdog
//
//  Created by Denis Lemire on 2025-01-11.
//

#import "nothotdog.h"

@implementation NotHotDog

- (BOOL)isHotDog:(NSString *)item {
    // Check if the string is exactly the hotdog emoji
    return [item isEqualToString:@"🌭"];
}

@end

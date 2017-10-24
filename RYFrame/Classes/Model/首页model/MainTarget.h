//
//  MainTarget.h
//
//  Created by   on 2017/10/24
//  Copyright (c) 2017 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface MainTarget : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) double categoryId;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end

//
//  MainProperties.h
//
//  Created by   on 2017/10/24
//  Copyright (c) 2017 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface MainProperties : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *cityCode;
@property (nonatomic, assign) BOOL isPaid;
@property (nonatomic, strong) NSString *cityTitle;
@property (nonatomic, strong) NSString *contentType;
@property (nonatomic, assign) double rankingListId;
@property (nonatomic, assign) double categoryId;
@property (nonatomic, strong) NSString *key;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end

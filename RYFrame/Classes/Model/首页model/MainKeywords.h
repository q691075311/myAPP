//
//  MainKeywords.h
//
//  Created by   on 2017/10/24
//  Copyright (c) 2017 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface MainKeywords : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) double keywordType;
@property (nonatomic, strong) NSString *keywordName;
@property (nonatomic, assign) double categoryId;
@property (nonatomic, strong) NSString *categoryTitle;
@property (nonatomic, assign) double keywordId;
@property (nonatomic, assign) double realCategoryId;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end

//
//  MainKeywords.m
//
//  Created by   on 2017/10/24
//  Copyright (c) 2017 __MyCompanyName__. All rights reserved.
//

#import "MainKeywords.h"


NSString *const kMainKeywordsKeywordType = @"keywordType";
NSString *const kMainKeywordsKeywordName = @"keywordName";
NSString *const kMainKeywordsCategoryId = @"categoryId";
NSString *const kMainKeywordsCategoryTitle = @"categoryTitle";
NSString *const kMainKeywordsKeywordId = @"keywordId";
NSString *const kMainKeywordsRealCategoryId = @"realCategoryId";


@interface MainKeywords ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation MainKeywords

@synthesize keywordType = _keywordType;
@synthesize keywordName = _keywordName;
@synthesize categoryId = _categoryId;
@synthesize categoryTitle = _categoryTitle;
@synthesize keywordId = _keywordId;
@synthesize realCategoryId = _realCategoryId;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict {
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if (self && [dict isKindOfClass:[NSDictionary class]]) {
            self.keywordType = [[self objectOrNilForKey:kMainKeywordsKeywordType fromDictionary:dict] doubleValue];
            self.keywordName = [self objectOrNilForKey:kMainKeywordsKeywordName fromDictionary:dict];
            self.categoryId = [[self objectOrNilForKey:kMainKeywordsCategoryId fromDictionary:dict] doubleValue];
            self.categoryTitle = [self objectOrNilForKey:kMainKeywordsCategoryTitle fromDictionary:dict];
            self.keywordId = [[self objectOrNilForKey:kMainKeywordsKeywordId fromDictionary:dict] doubleValue];
            self.realCategoryId = [[self objectOrNilForKey:kMainKeywordsRealCategoryId fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation {
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.keywordType] forKey:kMainKeywordsKeywordType];
    [mutableDict setValue:self.keywordName forKey:kMainKeywordsKeywordName];
    [mutableDict setValue:[NSNumber numberWithDouble:self.categoryId] forKey:kMainKeywordsCategoryId];
    [mutableDict setValue:self.categoryTitle forKey:kMainKeywordsCategoryTitle];
    [mutableDict setValue:[NSNumber numberWithDouble:self.keywordId] forKey:kMainKeywordsKeywordId];
    [mutableDict setValue:[NSNumber numberWithDouble:self.realCategoryId] forKey:kMainKeywordsRealCategoryId];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description  {
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict {
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];

    self.keywordType = [aDecoder decodeDoubleForKey:kMainKeywordsKeywordType];
    self.keywordName = [aDecoder decodeObjectForKey:kMainKeywordsKeywordName];
    self.categoryId = [aDecoder decodeDoubleForKey:kMainKeywordsCategoryId];
    self.categoryTitle = [aDecoder decodeObjectForKey:kMainKeywordsCategoryTitle];
    self.keywordId = [aDecoder decodeDoubleForKey:kMainKeywordsKeywordId];
    self.realCategoryId = [aDecoder decodeDoubleForKey:kMainKeywordsRealCategoryId];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_keywordType forKey:kMainKeywordsKeywordType];
    [aCoder encodeObject:_keywordName forKey:kMainKeywordsKeywordName];
    [aCoder encodeDouble:_categoryId forKey:kMainKeywordsCategoryId];
    [aCoder encodeObject:_categoryTitle forKey:kMainKeywordsCategoryTitle];
    [aCoder encodeDouble:_keywordId forKey:kMainKeywordsKeywordId];
    [aCoder encodeDouble:_realCategoryId forKey:kMainKeywordsRealCategoryId];
}

- (id)copyWithZone:(NSZone *)zone {
    MainKeywords *copy = [[MainKeywords alloc] init];
    
    
    
    if (copy) {

        copy.keywordType = self.keywordType;
        copy.keywordName = [self.keywordName copyWithZone:zone];
        copy.categoryId = self.categoryId;
        copy.categoryTitle = [self.categoryTitle copyWithZone:zone];
        copy.keywordId = self.keywordId;
        copy.realCategoryId = self.realCategoryId;
    }
    
    return copy;
}


@end

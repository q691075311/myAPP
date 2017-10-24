//
//  MainProperties.m
//
//  Created by   on 2017/10/24
//  Copyright (c) 2017 __MyCompanyName__. All rights reserved.
//

#import "MainProperties.h"


NSString *const kMainPropertiesCityCode = @"cityCode";
NSString *const kMainPropertiesIsPaid = @"isPaid";
NSString *const kMainPropertiesCityTitle = @"cityTitle";
NSString *const kMainPropertiesContentType = @"contentType";
NSString *const kMainPropertiesRankingListId = @"rankingListId";
NSString *const kMainPropertiesCategoryId = @"categoryId";
NSString *const kMainPropertiesKey = @"key";


@interface MainProperties ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation MainProperties

@synthesize cityCode = _cityCode;
@synthesize isPaid = _isPaid;
@synthesize cityTitle = _cityTitle;
@synthesize contentType = _contentType;
@synthesize rankingListId = _rankingListId;
@synthesize categoryId = _categoryId;
@synthesize key = _key;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict {
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if (self && [dict isKindOfClass:[NSDictionary class]]) {
            self.cityCode = [self objectOrNilForKey:kMainPropertiesCityCode fromDictionary:dict];
            self.isPaid = [[self objectOrNilForKey:kMainPropertiesIsPaid fromDictionary:dict] boolValue];
            self.cityTitle = [self objectOrNilForKey:kMainPropertiesCityTitle fromDictionary:dict];
            self.contentType = [self objectOrNilForKey:kMainPropertiesContentType fromDictionary:dict];
            self.rankingListId = [[self objectOrNilForKey:kMainPropertiesRankingListId fromDictionary:dict] doubleValue];
            self.categoryId = [[self objectOrNilForKey:kMainPropertiesCategoryId fromDictionary:dict] doubleValue];
            self.key = [self objectOrNilForKey:kMainPropertiesKey fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation {
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.cityCode forKey:kMainPropertiesCityCode];
    [mutableDict setValue:[NSNumber numberWithBool:self.isPaid] forKey:kMainPropertiesIsPaid];
    [mutableDict setValue:self.cityTitle forKey:kMainPropertiesCityTitle];
    [mutableDict setValue:self.contentType forKey:kMainPropertiesContentType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.rankingListId] forKey:kMainPropertiesRankingListId];
    [mutableDict setValue:[NSNumber numberWithDouble:self.categoryId] forKey:kMainPropertiesCategoryId];
    [mutableDict setValue:self.key forKey:kMainPropertiesKey];

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

    self.cityCode = [aDecoder decodeObjectForKey:kMainPropertiesCityCode];
    self.isPaid = [aDecoder decodeBoolForKey:kMainPropertiesIsPaid];
    self.cityTitle = [aDecoder decodeObjectForKey:kMainPropertiesCityTitle];
    self.contentType = [aDecoder decodeObjectForKey:kMainPropertiesContentType];
    self.rankingListId = [aDecoder decodeDoubleForKey:kMainPropertiesRankingListId];
    self.categoryId = [aDecoder decodeDoubleForKey:kMainPropertiesCategoryId];
    self.key = [aDecoder decodeObjectForKey:kMainPropertiesKey];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_cityCode forKey:kMainPropertiesCityCode];
    [aCoder encodeBool:_isPaid forKey:kMainPropertiesIsPaid];
    [aCoder encodeObject:_cityTitle forKey:kMainPropertiesCityTitle];
    [aCoder encodeObject:_contentType forKey:kMainPropertiesContentType];
    [aCoder encodeDouble:_rankingListId forKey:kMainPropertiesRankingListId];
    [aCoder encodeDouble:_categoryId forKey:kMainPropertiesCategoryId];
    [aCoder encodeObject:_key forKey:kMainPropertiesKey];
}

- (id)copyWithZone:(NSZone *)zone {
    MainProperties *copy = [[MainProperties alloc] init];
    
    
    
    if (copy) {

        copy.cityCode = [self.cityCode copyWithZone:zone];
        copy.isPaid = self.isPaid;
        copy.cityTitle = [self.cityTitle copyWithZone:zone];
        copy.contentType = [self.contentType copyWithZone:zone];
        copy.rankingListId = self.rankingListId;
        copy.categoryId = self.categoryId;
        copy.key = [self.key copyWithZone:zone];
    }
    
    return copy;
}


@end

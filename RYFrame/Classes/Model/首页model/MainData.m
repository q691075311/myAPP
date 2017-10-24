//
//  MainData.m
//
//  Created by   on 2017/10/24
//  Copyright (c) 2017 __MyCompanyName__. All rights reserved.
//

#import "MainData.h"


NSString *const kMainDataThirdClickStatUrls = @"thirdClickStatUrls";
NSString *const kMainDataIsShareFlag = @"isShareFlag";
NSString *const kMainDataIsAd = @"isAd";
NSString *const kMainDataLink = @"link";
NSString *const kMainDataAdType = @"adType";
NSString *const kMainDataTargetId = @"targetId";
NSString *const kMainDataClickAction = @"clickAction";
NSString *const kMainDataShowTokens = @"showTokens";
NSString *const kMainDataClickType = @"clickType";
NSString *const kMainDataRealLink = @"realLink";
NSString *const kMainDataCover = @"cover";
NSString *const kMainDataRecSrc = @"recSrc";
NSString *const kMainDataName = @"name";
NSString *const kMainDataOpenlinkType = @"openlinkType";
NSString *const kMainDataIsLandScape = @"isLandScape";
NSString *const kMainDataRecTrack = @"recTrack";
NSString *const kMainDataDisplayType = @"displayType";
NSString *const kMainDataClickTokens = @"clickTokens";
NSString *const kMainDataAdId = @"adId";
NSString *const kMainDataDescription = @"description";


@interface MainData ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation MainData

@synthesize thirdClickStatUrls = _thirdClickStatUrls;
@synthesize isShareFlag = _isShareFlag;
@synthesize isAd = _isAd;
@synthesize link = _link;
@synthesize adType = _adType;
@synthesize targetId = _targetId;
@synthesize clickAction = _clickAction;
@synthesize showTokens = _showTokens;
@synthesize clickType = _clickType;
@synthesize realLink = _realLink;
@synthesize cover = _cover;
@synthesize recSrc = _recSrc;
@synthesize name = _name;
@synthesize openlinkType = _openlinkType;
@synthesize isLandScape = _isLandScape;
@synthesize recTrack = _recTrack;
@synthesize displayType = _displayType;
@synthesize clickTokens = _clickTokens;
@synthesize adId = _adId;
@synthesize dataDescription = _dataDescription;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict {
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if (self && [dict isKindOfClass:[NSDictionary class]]) {
            self.thirdClickStatUrls = [self objectOrNilForKey:kMainDataThirdClickStatUrls fromDictionary:dict];
            self.isShareFlag = [[self objectOrNilForKey:kMainDataIsShareFlag fromDictionary:dict] boolValue];
            self.isAd = [[self objectOrNilForKey:kMainDataIsAd fromDictionary:dict] boolValue];
            self.link = [self objectOrNilForKey:kMainDataLink fromDictionary:dict];
            self.adType = [[self objectOrNilForKey:kMainDataAdType fromDictionary:dict] doubleValue];
            self.targetId = [[self objectOrNilForKey:kMainDataTargetId fromDictionary:dict] doubleValue];
            self.clickAction = [[self objectOrNilForKey:kMainDataClickAction fromDictionary:dict] doubleValue];
            self.showTokens = [self objectOrNilForKey:kMainDataShowTokens fromDictionary:dict];
            self.clickType = [[self objectOrNilForKey:kMainDataClickType fromDictionary:dict] doubleValue];
            self.realLink = [self objectOrNilForKey:kMainDataRealLink fromDictionary:dict];
            self.cover = [self objectOrNilForKey:kMainDataCover fromDictionary:dict];
            self.recSrc = [self objectOrNilForKey:kMainDataRecSrc fromDictionary:dict];
            self.name = [self objectOrNilForKey:kMainDataName fromDictionary:dict];
            self.openlinkType = [[self objectOrNilForKey:kMainDataOpenlinkType fromDictionary:dict] doubleValue];
            self.isLandScape = [[self objectOrNilForKey:kMainDataIsLandScape fromDictionary:dict] boolValue];
            self.recTrack = [self objectOrNilForKey:kMainDataRecTrack fromDictionary:dict];
            self.displayType = [[self objectOrNilForKey:kMainDataDisplayType fromDictionary:dict] doubleValue];
            self.clickTokens = [self objectOrNilForKey:kMainDataClickTokens fromDictionary:dict];
            self.adId = [[self objectOrNilForKey:kMainDataAdId fromDictionary:dict] doubleValue];
            self.dataDescription = [self objectOrNilForKey:kMainDataDescription fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation {
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    NSMutableArray *tempArrayForThirdClickStatUrls = [NSMutableArray array];
    
    for (NSObject *subArrayObject in self.thirdClickStatUrls) {
        if ([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForThirdClickStatUrls addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForThirdClickStatUrls addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForThirdClickStatUrls] forKey:kMainDataThirdClickStatUrls];
    [mutableDict setValue:[NSNumber numberWithBool:self.isShareFlag] forKey:kMainDataIsShareFlag];
    [mutableDict setValue:[NSNumber numberWithBool:self.isAd] forKey:kMainDataIsAd];
    [mutableDict setValue:self.link forKey:kMainDataLink];
    [mutableDict setValue:[NSNumber numberWithDouble:self.adType] forKey:kMainDataAdType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.targetId] forKey:kMainDataTargetId];
    [mutableDict setValue:[NSNumber numberWithDouble:self.clickAction] forKey:kMainDataClickAction];
    NSMutableArray *tempArrayForShowTokens = [NSMutableArray array];
    
    for (NSObject *subArrayObject in self.showTokens) {
        if ([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForShowTokens addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForShowTokens addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForShowTokens] forKey:kMainDataShowTokens];
    [mutableDict setValue:[NSNumber numberWithDouble:self.clickType] forKey:kMainDataClickType];
    [mutableDict setValue:self.realLink forKey:kMainDataRealLink];
    [mutableDict setValue:self.cover forKey:kMainDataCover];
    [mutableDict setValue:self.recSrc forKey:kMainDataRecSrc];
    [mutableDict setValue:self.name forKey:kMainDataName];
    [mutableDict setValue:[NSNumber numberWithDouble:self.openlinkType] forKey:kMainDataOpenlinkType];
    [mutableDict setValue:[NSNumber numberWithBool:self.isLandScape] forKey:kMainDataIsLandScape];
    [mutableDict setValue:self.recTrack forKey:kMainDataRecTrack];
    [mutableDict setValue:[NSNumber numberWithDouble:self.displayType] forKey:kMainDataDisplayType];
    NSMutableArray *tempArrayForClickTokens = [NSMutableArray array];
    
    for (NSObject *subArrayObject in self.clickTokens) {
        if ([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForClickTokens addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForClickTokens addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForClickTokens] forKey:kMainDataClickTokens];
    [mutableDict setValue:[NSNumber numberWithDouble:self.adId] forKey:kMainDataAdId];
    [mutableDict setValue:self.dataDescription forKey:kMainDataDescription];

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

    self.thirdClickStatUrls = [aDecoder decodeObjectForKey:kMainDataThirdClickStatUrls];
    self.isShareFlag = [aDecoder decodeBoolForKey:kMainDataIsShareFlag];
    self.isAd = [aDecoder decodeBoolForKey:kMainDataIsAd];
    self.link = [aDecoder decodeObjectForKey:kMainDataLink];
    self.adType = [aDecoder decodeDoubleForKey:kMainDataAdType];
    self.targetId = [aDecoder decodeDoubleForKey:kMainDataTargetId];
    self.clickAction = [aDecoder decodeDoubleForKey:kMainDataClickAction];
    self.showTokens = [aDecoder decodeObjectForKey:kMainDataShowTokens];
    self.clickType = [aDecoder decodeDoubleForKey:kMainDataClickType];
    self.realLink = [aDecoder decodeObjectForKey:kMainDataRealLink];
    self.cover = [aDecoder decodeObjectForKey:kMainDataCover];
    self.recSrc = [aDecoder decodeObjectForKey:kMainDataRecSrc];
    self.name = [aDecoder decodeObjectForKey:kMainDataName];
    self.openlinkType = [aDecoder decodeDoubleForKey:kMainDataOpenlinkType];
    self.isLandScape = [aDecoder decodeBoolForKey:kMainDataIsLandScape];
    self.recTrack = [aDecoder decodeObjectForKey:kMainDataRecTrack];
    self.displayType = [aDecoder decodeDoubleForKey:kMainDataDisplayType];
    self.clickTokens = [aDecoder decodeObjectForKey:kMainDataClickTokens];
    self.adId = [aDecoder decodeDoubleForKey:kMainDataAdId];
    self.dataDescription = [aDecoder decodeObjectForKey:kMainDataDescription];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_thirdClickStatUrls forKey:kMainDataThirdClickStatUrls];
    [aCoder encodeBool:_isShareFlag forKey:kMainDataIsShareFlag];
    [aCoder encodeBool:_isAd forKey:kMainDataIsAd];
    [aCoder encodeObject:_link forKey:kMainDataLink];
    [aCoder encodeDouble:_adType forKey:kMainDataAdType];
    [aCoder encodeDouble:_targetId forKey:kMainDataTargetId];
    [aCoder encodeDouble:_clickAction forKey:kMainDataClickAction];
    [aCoder encodeObject:_showTokens forKey:kMainDataShowTokens];
    [aCoder encodeDouble:_clickType forKey:kMainDataClickType];
    [aCoder encodeObject:_realLink forKey:kMainDataRealLink];
    [aCoder encodeObject:_cover forKey:kMainDataCover];
    [aCoder encodeObject:_recSrc forKey:kMainDataRecSrc];
    [aCoder encodeObject:_name forKey:kMainDataName];
    [aCoder encodeDouble:_openlinkType forKey:kMainDataOpenlinkType];
    [aCoder encodeBool:_isLandScape forKey:kMainDataIsLandScape];
    [aCoder encodeObject:_recTrack forKey:kMainDataRecTrack];
    [aCoder encodeDouble:_displayType forKey:kMainDataDisplayType];
    [aCoder encodeObject:_clickTokens forKey:kMainDataClickTokens];
    [aCoder encodeDouble:_adId forKey:kMainDataAdId];
    [aCoder encodeObject:_dataDescription forKey:kMainDataDescription];
}

- (id)copyWithZone:(NSZone *)zone {
    MainData *copy = [[MainData alloc] init];
    
    
    
    if (copy) {

        copy.thirdClickStatUrls = [self.thirdClickStatUrls copyWithZone:zone];
        copy.isShareFlag = self.isShareFlag;
        copy.isAd = self.isAd;
        copy.link = [self.link copyWithZone:zone];
        copy.adType = self.adType;
        copy.targetId = self.targetId;
        copy.clickAction = self.clickAction;
        copy.showTokens = [self.showTokens copyWithZone:zone];
        copy.clickType = self.clickType;
        copy.realLink = [self.realLink copyWithZone:zone];
        copy.cover = [self.cover copyWithZone:zone];
        copy.recSrc = [self.recSrc copyWithZone:zone];
        copy.name = [self.name copyWithZone:zone];
        copy.openlinkType = self.openlinkType;
        copy.isLandScape = self.isLandScape;
        copy.recTrack = [self.recTrack copyWithZone:zone];
        copy.displayType = self.displayType;
        copy.clickTokens = [self.clickTokens copyWithZone:zone];
        copy.adId = self.adId;
        copy.dataDescription = [self.dataDescription copyWithZone:zone];
    }
    
    return copy;
}


@end

//
//  MainData.h
//
//  Created by   on 2017/10/24
//  Copyright (c) 2017 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/message.h>


@interface MainData : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSArray *thirdClickStatUrls;
@property (nonatomic, assign) BOOL isShareFlag;
@property (nonatomic, assign) BOOL isAd;
@property (nonatomic, strong) NSString *link;
@property (nonatomic, assign) double adType;
@property (nonatomic, assign) double targetId;
@property (nonatomic, assign) double clickAction;
@property (nonatomic, strong) NSArray *showTokens;
@property (nonatomic, assign) double clickType;
@property (nonatomic, strong) NSString *realLink;
@property (nonatomic, strong) NSString *cover;
@property (nonatomic, strong) NSString *recSrc;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) double openlinkType;
@property (nonatomic, assign) BOOL isLandScape;
@property (nonatomic, strong) NSString *recTrack;
@property (nonatomic, assign) double displayType;
@property (nonatomic, strong) NSArray *clickTokens;
@property (nonatomic, assign) double adId;
@property (nonatomic, strong) NSString *dataDescription;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end

//
//  MainList.h
//
//  Created by   on 2017/10/24
//  Copyright (c) 2017 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MainProperties, MainTarget;

@interface MainList : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *contentType;
@property (nonatomic, assign) BOOL enableShare;
@property (nonatomic, strong) NSString *coverMiddle;
@property (nonatomic, assign) double columnType;
@property (nonatomic, assign) double listIdentifier;
@property (nonatomic, strong) NSString *recTrack;
@property (nonatomic, assign) BOOL isExternalUrl;
@property (nonatomic, strong) NSString *coverPath;
@property (nonatomic, strong) NSString *sharePic;
@property (nonatomic, assign) double startAt;
@property (nonatomic, assign) double isFinished;
@property (nonatomic, strong) NSString *commentScore;
@property (nonatomic, assign) double discountedPrice;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, assign) double categoryId;
@property (nonatomic, strong) NSString *displayPrice;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, assign) BOOL isVipFree;
@property (nonatomic, strong) NSString *moduleType;
@property (nonatomic, assign) double status;
@property (nonatomic, assign) double lastUptrackAt;
@property (nonatomic, strong) NSString *priceUnit;
@property (nonatomic, strong) NSString *listDescription;
@property (nonatomic, strong) NSString *infoType;
@property (nonatomic, strong) NSArray *list;
@property (nonatomic, assign) double actualEndAt;
@property (nonatomic, assign) double price;
@property (nonatomic, assign) BOOL bottomHasMore;
@property (nonatomic, assign) double vipPrice;
@property (nonatomic, strong) NSString *direction;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) double actualStartAt;
@property (nonatomic, strong) NSString *pic;
@property (nonatomic, assign) double contentUpdatedAt;
@property (nonatomic, assign) BOOL isPaid;
@property (nonatomic, assign) double albumId;
@property (nonatomic, assign) BOOL isDraft;
@property (nonatomic, strong) NSString *displayVipPrice;
@property (nonatomic, assign) double roomId;
@property (nonatomic, assign) double chatId;
@property (nonatomic, strong) NSString *displayDiscountedPrice;
@property (nonatomic, strong) NSString *footnote;
@property (nonatomic, assign) double playCount;
@property (nonatomic, assign) double loopCount;
@property (nonatomic, assign) double tracksCount;
@property (nonatomic, strong) MainProperties *properties;
@property (nonatomic, strong) NSString *coverSmall;
@property (nonatomic, assign) double priceTypeEnum;
@property (nonatomic, assign) BOOL hasMore;
@property (nonatomic, assign) double uid;
@property (nonatomic, strong) NSString *bubbleText;
@property (nonatomic, assign) double refundSupportType;
@property (nonatomic, strong) NSString *nickname;
@property (nonatomic, assign) BOOL showInterestCard;
@property (nonatomic, assign) double specialId;
@property (nonatomic, assign) double commentsCount;
@property (nonatomic, strong) NSString *coverLarge;
@property (nonatomic, assign) double playsCount;
@property (nonatomic, strong) NSString *recSrc;
@property (nonatomic, strong) NSArray *keywords;
@property (nonatomic, strong) NSString *subtitle;
@property (nonatomic, strong) MainTarget *target;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end

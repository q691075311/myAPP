//
//  MainList.m
//
//  Created by   on 2017/10/24
//  Copyright (c) 2017 __MyCompanyName__. All rights reserved.
//

#import "MainList.h"
#import "MainProperties.h"
#import "MainKeywords.h"
#import "MainTarget.h"


NSString *const kMainListContentType = @"contentType";
NSString *const kMainListEnableShare = @"enableShare";
NSString *const kMainListCoverMiddle = @"coverMiddle";
NSString *const kMainListColumnType = @"columnType";
NSString *const kMainListId = @"id";
NSString *const kMainListRecTrack = @"recTrack";
NSString *const kMainListIsExternalUrl = @"isExternalUrl";
NSString *const kMainListCoverPath = @"coverPath";
NSString *const kMainListSharePic = @"sharePic";
NSString *const kMainListStartAt = @"startAt";
NSString *const kMainListIsFinished = @"isFinished";
NSString *const kMainListCommentScore = @"commentScore";
NSString *const kMainListDiscountedPrice = @"discountedPrice";
NSString *const kMainListTitle = @"title";
NSString *const kMainListCategoryId = @"categoryId";
NSString *const kMainListDisplayPrice = @"displayPrice";
NSString *const kMainListUrl = @"url";
NSString *const kMainListIsVipFree = @"isVipFree";
NSString *const kMainListModuleType = @"moduleType";
NSString *const kMainListStatus = @"status";
NSString *const kMainListLastUptrackAt = @"lastUptrackAt";
NSString *const kMainListPriceUnit = @"priceUnit";
NSString *const kMainListDescription = @"description";
NSString *const kMainListInfoType = @"infoType";
NSString *const kMainListList = @"list";
NSString *const kMainListActualEndAt = @"actualEndAt";
NSString *const kMainListPrice = @"price";
NSString *const kMainListBottomHasMore = @"bottomHasMore";
NSString *const kMainListVipPrice = @"vipPrice";
NSString *const kMainListDirection = @"direction";
NSString *const kMainListName = @"name";
NSString *const kMainListActualStartAt = @"actualStartAt";
NSString *const kMainListPic = @"pic";
NSString *const kMainListContentUpdatedAt = @"contentUpdatedAt";
NSString *const kMainListIsPaid = @"isPaid";
NSString *const kMainListAlbumId = @"albumId";
NSString *const kMainListIsDraft = @"isDraft";
NSString *const kMainListDisplayVipPrice = @"displayVipPrice";
NSString *const kMainListRoomId = @"roomId";
NSString *const kMainListChatId = @"chatId";
NSString *const kMainListDisplayDiscountedPrice = @"displayDiscountedPrice";
NSString *const kMainListFootnote = @"footnote";
NSString *const kMainListPlayCount = @"playCount";
NSString *const kMainListLoopCount = @"loopCount";
NSString *const kMainListTracksCount = @"tracksCount";
NSString *const kMainListProperties = @"properties";
NSString *const kMainListCoverSmall = @"coverSmall";
NSString *const kMainListPriceTypeEnum = @"priceTypeEnum";
NSString *const kMainListHasMore = @"hasMore";
NSString *const kMainListUid = @"uid";
NSString *const kMainListBubbleText = @"bubbleText";
NSString *const kMainListRefundSupportType = @"refundSupportType";
NSString *const kMainListNickname = @"nickname";
NSString *const kMainListShowInterestCard = @"showInterestCard";
NSString *const kMainListSpecialId = @"specialId";
NSString *const kMainListCommentsCount = @"commentsCount";
NSString *const kMainListCoverLarge = @"coverLarge";
NSString *const kMainListPlaysCount = @"playsCount";
NSString *const kMainListRecSrc = @"recSrc";
NSString *const kMainListKeywords = @"keywords";
NSString *const kMainListSubtitle = @"subtitle";
NSString *const kMainListTarget = @"target";


@interface MainList ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation MainList

@synthesize contentType = _contentType;
@synthesize enableShare = _enableShare;
@synthesize coverMiddle = _coverMiddle;
@synthesize columnType = _columnType;
@synthesize listIdentifier = _listIdentifier;
@synthesize recTrack = _recTrack;
@synthesize isExternalUrl = _isExternalUrl;
@synthesize coverPath = _coverPath;
@synthesize sharePic = _sharePic;
@synthesize startAt = _startAt;
@synthesize isFinished = _isFinished;
@synthesize commentScore = _commentScore;
@synthesize discountedPrice = _discountedPrice;
@synthesize title = _title;
@synthesize categoryId = _categoryId;
@synthesize displayPrice = _displayPrice;
@synthesize url = _url;
@synthesize isVipFree = _isVipFree;
@synthesize moduleType = _moduleType;
@synthesize status = _status;
@synthesize lastUptrackAt = _lastUptrackAt;
@synthesize priceUnit = _priceUnit;
@synthesize listDescription = _listDescription;
@synthesize infoType = _infoType;
@synthesize list = _list;
@synthesize actualEndAt = _actualEndAt;
@synthesize price = _price;
@synthesize bottomHasMore = _bottomHasMore;
@synthesize vipPrice = _vipPrice;
@synthesize direction = _direction;
@synthesize name = _name;
@synthesize actualStartAt = _actualStartAt;
@synthesize pic = _pic;
@synthesize contentUpdatedAt = _contentUpdatedAt;
@synthesize isPaid = _isPaid;
@synthesize albumId = _albumId;
@synthesize isDraft = _isDraft;
@synthesize displayVipPrice = _displayVipPrice;
@synthesize roomId = _roomId;
@synthesize chatId = _chatId;
@synthesize displayDiscountedPrice = _displayDiscountedPrice;
@synthesize footnote = _footnote;
@synthesize playCount = _playCount;
@synthesize loopCount = _loopCount;
@synthesize tracksCount = _tracksCount;
@synthesize properties = _properties;
@synthesize coverSmall = _coverSmall;
@synthesize priceTypeEnum = _priceTypeEnum;
@synthesize hasMore = _hasMore;
@synthesize uid = _uid;
@synthesize bubbleText = _bubbleText;
@synthesize refundSupportType = _refundSupportType;
@synthesize nickname = _nickname;
@synthesize showInterestCard = _showInterestCard;
@synthesize specialId = _specialId;
@synthesize commentsCount = _commentsCount;
@synthesize coverLarge = _coverLarge;
@synthesize playsCount = _playsCount;
@synthesize recSrc = _recSrc;
@synthesize keywords = _keywords;
@synthesize subtitle = _subtitle;
@synthesize target = _target;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict {
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if (self && [dict isKindOfClass:[NSDictionary class]]) {
            self.contentType = [self objectOrNilForKey:kMainListContentType fromDictionary:dict];
            self.enableShare = [[self objectOrNilForKey:kMainListEnableShare fromDictionary:dict] boolValue];
            self.coverMiddle = [self objectOrNilForKey:kMainListCoverMiddle fromDictionary:dict];
            self.columnType = [[self objectOrNilForKey:kMainListColumnType fromDictionary:dict] doubleValue];
            self.listIdentifier = [[self objectOrNilForKey:kMainListId fromDictionary:dict] doubleValue];
            self.recTrack = [self objectOrNilForKey:kMainListRecTrack fromDictionary:dict];
            self.isExternalUrl = [[self objectOrNilForKey:kMainListIsExternalUrl fromDictionary:dict] boolValue];
            self.coverPath = [self objectOrNilForKey:kMainListCoverPath fromDictionary:dict];
            self.sharePic = [self objectOrNilForKey:kMainListSharePic fromDictionary:dict];
            self.startAt = [[self objectOrNilForKey:kMainListStartAt fromDictionary:dict] doubleValue];
            self.isFinished = [[self objectOrNilForKey:kMainListIsFinished fromDictionary:dict] doubleValue];
            self.commentScore = [self objectOrNilForKey:kMainListCommentScore fromDictionary:dict];
            self.discountedPrice = [[self objectOrNilForKey:kMainListDiscountedPrice fromDictionary:dict] doubleValue];
            self.title = [self objectOrNilForKey:kMainListTitle fromDictionary:dict];
            self.categoryId = [[self objectOrNilForKey:kMainListCategoryId fromDictionary:dict] doubleValue];
            self.displayPrice = [self objectOrNilForKey:kMainListDisplayPrice fromDictionary:dict];
            self.url = [self objectOrNilForKey:kMainListUrl fromDictionary:dict];
            self.isVipFree = [[self objectOrNilForKey:kMainListIsVipFree fromDictionary:dict] boolValue];
            self.moduleType = [self objectOrNilForKey:kMainListModuleType fromDictionary:dict];
            self.status = [[self objectOrNilForKey:kMainListStatus fromDictionary:dict] doubleValue];
            self.lastUptrackAt = [[self objectOrNilForKey:kMainListLastUptrackAt fromDictionary:dict] doubleValue];
            self.priceUnit = [self objectOrNilForKey:kMainListPriceUnit fromDictionary:dict];
            self.listDescription = [self objectOrNilForKey:kMainListDescription fromDictionary:dict];
            self.infoType = [self objectOrNilForKey:kMainListInfoType fromDictionary:dict];
            self.list = [self objectOrNilForKey:kMainListList fromDictionary:dict];
            self.actualEndAt = [[self objectOrNilForKey:kMainListActualEndAt fromDictionary:dict] doubleValue];
            self.price = [[self objectOrNilForKey:kMainListPrice fromDictionary:dict] doubleValue];
            self.bottomHasMore = [[self objectOrNilForKey:kMainListBottomHasMore fromDictionary:dict] boolValue];
            self.vipPrice = [[self objectOrNilForKey:kMainListVipPrice fromDictionary:dict] doubleValue];
            self.direction = [self objectOrNilForKey:kMainListDirection fromDictionary:dict];
            self.name = [self objectOrNilForKey:kMainListName fromDictionary:dict];
            self.actualStartAt = [[self objectOrNilForKey:kMainListActualStartAt fromDictionary:dict] doubleValue];
            self.pic = [self objectOrNilForKey:kMainListPic fromDictionary:dict];
            self.contentUpdatedAt = [[self objectOrNilForKey:kMainListContentUpdatedAt fromDictionary:dict] doubleValue];
            self.isPaid = [[self objectOrNilForKey:kMainListIsPaid fromDictionary:dict] boolValue];
            self.albumId = [[self objectOrNilForKey:kMainListAlbumId fromDictionary:dict] doubleValue];
            self.isDraft = [[self objectOrNilForKey:kMainListIsDraft fromDictionary:dict] boolValue];
            self.displayVipPrice = [self objectOrNilForKey:kMainListDisplayVipPrice fromDictionary:dict];
            self.roomId = [[self objectOrNilForKey:kMainListRoomId fromDictionary:dict] doubleValue];
            self.chatId = [[self objectOrNilForKey:kMainListChatId fromDictionary:dict] doubleValue];
            self.displayDiscountedPrice = [self objectOrNilForKey:kMainListDisplayDiscountedPrice fromDictionary:dict];
            self.footnote = [self objectOrNilForKey:kMainListFootnote fromDictionary:dict];
            self.playCount = [[self objectOrNilForKey:kMainListPlayCount fromDictionary:dict] doubleValue];
            self.loopCount = [[self objectOrNilForKey:kMainListLoopCount fromDictionary:dict] doubleValue];
            self.tracksCount = [[self objectOrNilForKey:kMainListTracksCount fromDictionary:dict] doubleValue];
            self.properties = [MainProperties modelObjectWithDictionary:[dict objectForKey:kMainListProperties]];
            self.coverSmall = [self objectOrNilForKey:kMainListCoverSmall fromDictionary:dict];
            self.priceTypeEnum = [[self objectOrNilForKey:kMainListPriceTypeEnum fromDictionary:dict] doubleValue];
            self.hasMore = [[self objectOrNilForKey:kMainListHasMore fromDictionary:dict] boolValue];
            self.uid = [[self objectOrNilForKey:kMainListUid fromDictionary:dict] doubleValue];
            self.bubbleText = [self objectOrNilForKey:kMainListBubbleText fromDictionary:dict];
            self.refundSupportType = [[self objectOrNilForKey:kMainListRefundSupportType fromDictionary:dict] doubleValue];
            self.nickname = [self objectOrNilForKey:kMainListNickname fromDictionary:dict];
            self.showInterestCard = [[self objectOrNilForKey:kMainListShowInterestCard fromDictionary:dict] boolValue];
            self.specialId = [[self objectOrNilForKey:kMainListSpecialId fromDictionary:dict] doubleValue];
            self.commentsCount = [[self objectOrNilForKey:kMainListCommentsCount fromDictionary:dict] doubleValue];
            self.coverLarge = [self objectOrNilForKey:kMainListCoverLarge fromDictionary:dict];
            self.playsCount = [[self objectOrNilForKey:kMainListPlaysCount fromDictionary:dict] doubleValue];
            self.recSrc = [self objectOrNilForKey:kMainListRecSrc fromDictionary:dict];
    NSObject *receivedMainKeywords = [dict objectForKey:kMainListKeywords];
    NSMutableArray *parsedMainKeywords = [NSMutableArray array];
    
    if ([receivedMainKeywords isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedMainKeywords) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedMainKeywords addObject:[MainKeywords modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedMainKeywords isKindOfClass:[NSDictionary class]]) {
       [parsedMainKeywords addObject:[MainKeywords modelObjectWithDictionary:(NSDictionary *)receivedMainKeywords]];
    }

    self.keywords = [NSArray arrayWithArray:parsedMainKeywords];
            self.subtitle = [self objectOrNilForKey:kMainListSubtitle fromDictionary:dict];
            self.target = [MainTarget modelObjectWithDictionary:[dict objectForKey:kMainListTarget]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation {
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.contentType forKey:kMainListContentType];
    [mutableDict setValue:[NSNumber numberWithBool:self.enableShare] forKey:kMainListEnableShare];
    [mutableDict setValue:self.coverMiddle forKey:kMainListCoverMiddle];
    [mutableDict setValue:[NSNumber numberWithDouble:self.columnType] forKey:kMainListColumnType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.listIdentifier] forKey:kMainListId];
    [mutableDict setValue:self.recTrack forKey:kMainListRecTrack];
    [mutableDict setValue:[NSNumber numberWithBool:self.isExternalUrl] forKey:kMainListIsExternalUrl];
    [mutableDict setValue:self.coverPath forKey:kMainListCoverPath];
    [mutableDict setValue:self.sharePic forKey:kMainListSharePic];
    [mutableDict setValue:[NSNumber numberWithDouble:self.startAt] forKey:kMainListStartAt];
    [mutableDict setValue:[NSNumber numberWithDouble:self.isFinished] forKey:kMainListIsFinished];
    [mutableDict setValue:self.commentScore forKey:kMainListCommentScore];
    [mutableDict setValue:[NSNumber numberWithDouble:self.discountedPrice] forKey:kMainListDiscountedPrice];
    [mutableDict setValue:self.title forKey:kMainListTitle];
    [mutableDict setValue:[NSNumber numberWithDouble:self.categoryId] forKey:kMainListCategoryId];
    [mutableDict setValue:self.displayPrice forKey:kMainListDisplayPrice];
    [mutableDict setValue:self.url forKey:kMainListUrl];
    [mutableDict setValue:[NSNumber numberWithBool:self.isVipFree] forKey:kMainListIsVipFree];
    [mutableDict setValue:self.moduleType forKey:kMainListModuleType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.status] forKey:kMainListStatus];
    [mutableDict setValue:[NSNumber numberWithDouble:self.lastUptrackAt] forKey:kMainListLastUptrackAt];
    [mutableDict setValue:self.priceUnit forKey:kMainListPriceUnit];
    [mutableDict setValue:self.listDescription forKey:kMainListDescription];
    [mutableDict setValue:self.infoType forKey:kMainListInfoType];
    NSMutableArray *tempArrayForList = [NSMutableArray array];
    
    for (NSObject *subArrayObject in self.list) {
        if ([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForList addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForList addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForList] forKey:kMainListList];
    [mutableDict setValue:[NSNumber numberWithDouble:self.actualEndAt] forKey:kMainListActualEndAt];
    [mutableDict setValue:[NSNumber numberWithDouble:self.price] forKey:kMainListPrice];
    [mutableDict setValue:[NSNumber numberWithBool:self.bottomHasMore] forKey:kMainListBottomHasMore];
    [mutableDict setValue:[NSNumber numberWithDouble:self.vipPrice] forKey:kMainListVipPrice];
    [mutableDict setValue:self.direction forKey:kMainListDirection];
    [mutableDict setValue:self.name forKey:kMainListName];
    [mutableDict setValue:[NSNumber numberWithDouble:self.actualStartAt] forKey:kMainListActualStartAt];
    [mutableDict setValue:self.pic forKey:kMainListPic];
    [mutableDict setValue:[NSNumber numberWithDouble:self.contentUpdatedAt] forKey:kMainListContentUpdatedAt];
    [mutableDict setValue:[NSNumber numberWithBool:self.isPaid] forKey:kMainListIsPaid];
    [mutableDict setValue:[NSNumber numberWithDouble:self.albumId] forKey:kMainListAlbumId];
    [mutableDict setValue:[NSNumber numberWithBool:self.isDraft] forKey:kMainListIsDraft];
    [mutableDict setValue:self.displayVipPrice forKey:kMainListDisplayVipPrice];
    [mutableDict setValue:[NSNumber numberWithDouble:self.roomId] forKey:kMainListRoomId];
    [mutableDict setValue:[NSNumber numberWithDouble:self.chatId] forKey:kMainListChatId];
    [mutableDict setValue:self.displayDiscountedPrice forKey:kMainListDisplayDiscountedPrice];
    [mutableDict setValue:self.footnote forKey:kMainListFootnote];
    [mutableDict setValue:[NSNumber numberWithDouble:self.playCount] forKey:kMainListPlayCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.loopCount] forKey:kMainListLoopCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.tracksCount] forKey:kMainListTracksCount];
    [mutableDict setValue:[self.properties dictionaryRepresentation] forKey:kMainListProperties];
    [mutableDict setValue:self.coverSmall forKey:kMainListCoverSmall];
    [mutableDict setValue:[NSNumber numberWithDouble:self.priceTypeEnum] forKey:kMainListPriceTypeEnum];
    [mutableDict setValue:[NSNumber numberWithBool:self.hasMore] forKey:kMainListHasMore];
    [mutableDict setValue:[NSNumber numberWithDouble:self.uid] forKey:kMainListUid];
    [mutableDict setValue:self.bubbleText forKey:kMainListBubbleText];
    [mutableDict setValue:[NSNumber numberWithDouble:self.refundSupportType] forKey:kMainListRefundSupportType];
    [mutableDict setValue:self.nickname forKey:kMainListNickname];
    [mutableDict setValue:[NSNumber numberWithBool:self.showInterestCard] forKey:kMainListShowInterestCard];
    [mutableDict setValue:[NSNumber numberWithDouble:self.specialId] forKey:kMainListSpecialId];
    [mutableDict setValue:[NSNumber numberWithDouble:self.commentsCount] forKey:kMainListCommentsCount];
    [mutableDict setValue:self.coverLarge forKey:kMainListCoverLarge];
    [mutableDict setValue:[NSNumber numberWithDouble:self.playsCount] forKey:kMainListPlaysCount];
    [mutableDict setValue:self.recSrc forKey:kMainListRecSrc];
    NSMutableArray *tempArrayForKeywords = [NSMutableArray array];
    
    for (NSObject *subArrayObject in self.keywords) {
        if ([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForKeywords addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForKeywords addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForKeywords] forKey:kMainListKeywords];
    [mutableDict setValue:self.subtitle forKey:kMainListSubtitle];
    [mutableDict setValue:[self.target dictionaryRepresentation] forKey:kMainListTarget];

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

    self.contentType = [aDecoder decodeObjectForKey:kMainListContentType];
    self.enableShare = [aDecoder decodeBoolForKey:kMainListEnableShare];
    self.coverMiddle = [aDecoder decodeObjectForKey:kMainListCoverMiddle];
    self.columnType = [aDecoder decodeDoubleForKey:kMainListColumnType];
    self.listIdentifier = [aDecoder decodeDoubleForKey:kMainListId];
    self.recTrack = [aDecoder decodeObjectForKey:kMainListRecTrack];
    self.isExternalUrl = [aDecoder decodeBoolForKey:kMainListIsExternalUrl];
    self.coverPath = [aDecoder decodeObjectForKey:kMainListCoverPath];
    self.sharePic = [aDecoder decodeObjectForKey:kMainListSharePic];
    self.startAt = [aDecoder decodeDoubleForKey:kMainListStartAt];
    self.isFinished = [aDecoder decodeDoubleForKey:kMainListIsFinished];
    self.commentScore = [aDecoder decodeObjectForKey:kMainListCommentScore];
    self.discountedPrice = [aDecoder decodeDoubleForKey:kMainListDiscountedPrice];
    self.title = [aDecoder decodeObjectForKey:kMainListTitle];
    self.categoryId = [aDecoder decodeDoubleForKey:kMainListCategoryId];
    self.displayPrice = [aDecoder decodeObjectForKey:kMainListDisplayPrice];
    self.url = [aDecoder decodeObjectForKey:kMainListUrl];
    self.isVipFree = [aDecoder decodeBoolForKey:kMainListIsVipFree];
    self.moduleType = [aDecoder decodeObjectForKey:kMainListModuleType];
    self.status = [aDecoder decodeDoubleForKey:kMainListStatus];
    self.lastUptrackAt = [aDecoder decodeDoubleForKey:kMainListLastUptrackAt];
    self.priceUnit = [aDecoder decodeObjectForKey:kMainListPriceUnit];
    self.listDescription = [aDecoder decodeObjectForKey:kMainListDescription];
    self.infoType = [aDecoder decodeObjectForKey:kMainListInfoType];
    self.list = [aDecoder decodeObjectForKey:kMainListList];
    self.actualEndAt = [aDecoder decodeDoubleForKey:kMainListActualEndAt];
    self.price = [aDecoder decodeDoubleForKey:kMainListPrice];
    self.bottomHasMore = [aDecoder decodeBoolForKey:kMainListBottomHasMore];
    self.vipPrice = [aDecoder decodeDoubleForKey:kMainListVipPrice];
    self.direction = [aDecoder decodeObjectForKey:kMainListDirection];
    self.name = [aDecoder decodeObjectForKey:kMainListName];
    self.actualStartAt = [aDecoder decodeDoubleForKey:kMainListActualStartAt];
    self.pic = [aDecoder decodeObjectForKey:kMainListPic];
    self.contentUpdatedAt = [aDecoder decodeDoubleForKey:kMainListContentUpdatedAt];
    self.isPaid = [aDecoder decodeBoolForKey:kMainListIsPaid];
    self.albumId = [aDecoder decodeDoubleForKey:kMainListAlbumId];
    self.isDraft = [aDecoder decodeBoolForKey:kMainListIsDraft];
    self.displayVipPrice = [aDecoder decodeObjectForKey:kMainListDisplayVipPrice];
    self.roomId = [aDecoder decodeDoubleForKey:kMainListRoomId];
    self.chatId = [aDecoder decodeDoubleForKey:kMainListChatId];
    self.displayDiscountedPrice = [aDecoder decodeObjectForKey:kMainListDisplayDiscountedPrice];
    self.footnote = [aDecoder decodeObjectForKey:kMainListFootnote];
    self.playCount = [aDecoder decodeDoubleForKey:kMainListPlayCount];
    self.loopCount = [aDecoder decodeDoubleForKey:kMainListLoopCount];
    self.tracksCount = [aDecoder decodeDoubleForKey:kMainListTracksCount];
    self.properties = [aDecoder decodeObjectForKey:kMainListProperties];
    self.coverSmall = [aDecoder decodeObjectForKey:kMainListCoverSmall];
    self.priceTypeEnum = [aDecoder decodeDoubleForKey:kMainListPriceTypeEnum];
    self.hasMore = [aDecoder decodeBoolForKey:kMainListHasMore];
    self.uid = [aDecoder decodeDoubleForKey:kMainListUid];
    self.bubbleText = [aDecoder decodeObjectForKey:kMainListBubbleText];
    self.refundSupportType = [aDecoder decodeDoubleForKey:kMainListRefundSupportType];
    self.nickname = [aDecoder decodeObjectForKey:kMainListNickname];
    self.showInterestCard = [aDecoder decodeBoolForKey:kMainListShowInterestCard];
    self.specialId = [aDecoder decodeDoubleForKey:kMainListSpecialId];
    self.commentsCount = [aDecoder decodeDoubleForKey:kMainListCommentsCount];
    self.coverLarge = [aDecoder decodeObjectForKey:kMainListCoverLarge];
    self.playsCount = [aDecoder decodeDoubleForKey:kMainListPlaysCount];
    self.recSrc = [aDecoder decodeObjectForKey:kMainListRecSrc];
    self.keywords = [aDecoder decodeObjectForKey:kMainListKeywords];
    self.subtitle = [aDecoder decodeObjectForKey:kMainListSubtitle];
    self.target = [aDecoder decodeObjectForKey:kMainListTarget];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_contentType forKey:kMainListContentType];
    [aCoder encodeBool:_enableShare forKey:kMainListEnableShare];
    [aCoder encodeObject:_coverMiddle forKey:kMainListCoverMiddle];
    [aCoder encodeDouble:_columnType forKey:kMainListColumnType];
    [aCoder encodeDouble:_listIdentifier forKey:kMainListId];
    [aCoder encodeObject:_recTrack forKey:kMainListRecTrack];
    [aCoder encodeBool:_isExternalUrl forKey:kMainListIsExternalUrl];
    [aCoder encodeObject:_coverPath forKey:kMainListCoverPath];
    [aCoder encodeObject:_sharePic forKey:kMainListSharePic];
    [aCoder encodeDouble:_startAt forKey:kMainListStartAt];
    [aCoder encodeDouble:_isFinished forKey:kMainListIsFinished];
    [aCoder encodeObject:_commentScore forKey:kMainListCommentScore];
    [aCoder encodeDouble:_discountedPrice forKey:kMainListDiscountedPrice];
    [aCoder encodeObject:_title forKey:kMainListTitle];
    [aCoder encodeDouble:_categoryId forKey:kMainListCategoryId];
    [aCoder encodeObject:_displayPrice forKey:kMainListDisplayPrice];
    [aCoder encodeObject:_url forKey:kMainListUrl];
    [aCoder encodeBool:_isVipFree forKey:kMainListIsVipFree];
    [aCoder encodeObject:_moduleType forKey:kMainListModuleType];
    [aCoder encodeDouble:_status forKey:kMainListStatus];
    [aCoder encodeDouble:_lastUptrackAt forKey:kMainListLastUptrackAt];
    [aCoder encodeObject:_priceUnit forKey:kMainListPriceUnit];
    [aCoder encodeObject:_listDescription forKey:kMainListDescription];
    [aCoder encodeObject:_infoType forKey:kMainListInfoType];
    [aCoder encodeObject:_list forKey:kMainListList];
    [aCoder encodeDouble:_actualEndAt forKey:kMainListActualEndAt];
    [aCoder encodeDouble:_price forKey:kMainListPrice];
    [aCoder encodeBool:_bottomHasMore forKey:kMainListBottomHasMore];
    [aCoder encodeDouble:_vipPrice forKey:kMainListVipPrice];
    [aCoder encodeObject:_direction forKey:kMainListDirection];
    [aCoder encodeObject:_name forKey:kMainListName];
    [aCoder encodeDouble:_actualStartAt forKey:kMainListActualStartAt];
    [aCoder encodeObject:_pic forKey:kMainListPic];
    [aCoder encodeDouble:_contentUpdatedAt forKey:kMainListContentUpdatedAt];
    [aCoder encodeBool:_isPaid forKey:kMainListIsPaid];
    [aCoder encodeDouble:_albumId forKey:kMainListAlbumId];
    [aCoder encodeBool:_isDraft forKey:kMainListIsDraft];
    [aCoder encodeObject:_displayVipPrice forKey:kMainListDisplayVipPrice];
    [aCoder encodeDouble:_roomId forKey:kMainListRoomId];
    [aCoder encodeDouble:_chatId forKey:kMainListChatId];
    [aCoder encodeObject:_displayDiscountedPrice forKey:kMainListDisplayDiscountedPrice];
    [aCoder encodeObject:_footnote forKey:kMainListFootnote];
    [aCoder encodeDouble:_playCount forKey:kMainListPlayCount];
    [aCoder encodeDouble:_loopCount forKey:kMainListLoopCount];
    [aCoder encodeDouble:_tracksCount forKey:kMainListTracksCount];
    [aCoder encodeObject:_properties forKey:kMainListProperties];
    [aCoder encodeObject:_coverSmall forKey:kMainListCoverSmall];
    [aCoder encodeDouble:_priceTypeEnum forKey:kMainListPriceTypeEnum];
    [aCoder encodeBool:_hasMore forKey:kMainListHasMore];
    [aCoder encodeDouble:_uid forKey:kMainListUid];
    [aCoder encodeObject:_bubbleText forKey:kMainListBubbleText];
    [aCoder encodeDouble:_refundSupportType forKey:kMainListRefundSupportType];
    [aCoder encodeObject:_nickname forKey:kMainListNickname];
    [aCoder encodeBool:_showInterestCard forKey:kMainListShowInterestCard];
    [aCoder encodeDouble:_specialId forKey:kMainListSpecialId];
    [aCoder encodeDouble:_commentsCount forKey:kMainListCommentsCount];
    [aCoder encodeObject:_coverLarge forKey:kMainListCoverLarge];
    [aCoder encodeDouble:_playsCount forKey:kMainListPlaysCount];
    [aCoder encodeObject:_recSrc forKey:kMainListRecSrc];
    [aCoder encodeObject:_keywords forKey:kMainListKeywords];
    [aCoder encodeObject:_subtitle forKey:kMainListSubtitle];
    [aCoder encodeObject:_target forKey:kMainListTarget];
}

- (id)copyWithZone:(NSZone *)zone {
    MainList *copy = [[MainList alloc] init];
    
    
    
    if (copy) {

        copy.contentType = [self.contentType copyWithZone:zone];
        copy.enableShare = self.enableShare;
        copy.coverMiddle = [self.coverMiddle copyWithZone:zone];
        copy.columnType = self.columnType;
        copy.listIdentifier = self.listIdentifier;
        copy.recTrack = [self.recTrack copyWithZone:zone];
        copy.isExternalUrl = self.isExternalUrl;
        copy.coverPath = [self.coverPath copyWithZone:zone];
        copy.sharePic = [self.sharePic copyWithZone:zone];
        copy.startAt = self.startAt;
        copy.isFinished = self.isFinished;
        copy.commentScore = [self.commentScore copyWithZone:zone];
        copy.discountedPrice = self.discountedPrice;
        copy.title = [self.title copyWithZone:zone];
        copy.categoryId = self.categoryId;
        copy.displayPrice = [self.displayPrice copyWithZone:zone];
        copy.url = [self.url copyWithZone:zone];
        copy.isVipFree = self.isVipFree;
        copy.moduleType = [self.moduleType copyWithZone:zone];
        copy.status = self.status;
        copy.lastUptrackAt = self.lastUptrackAt;
        copy.priceUnit = [self.priceUnit copyWithZone:zone];
        copy.listDescription = [self.listDescription copyWithZone:zone];
        copy.infoType = [self.infoType copyWithZone:zone];
        copy.list = [self.list copyWithZone:zone];
        copy.actualEndAt = self.actualEndAt;
        copy.price = self.price;
        copy.bottomHasMore = self.bottomHasMore;
        copy.vipPrice = self.vipPrice;
        copy.direction = [self.direction copyWithZone:zone];
        copy.name = [self.name copyWithZone:zone];
        copy.actualStartAt = self.actualStartAt;
        copy.pic = [self.pic copyWithZone:zone];
        copy.contentUpdatedAt = self.contentUpdatedAt;
        copy.isPaid = self.isPaid;
        copy.albumId = self.albumId;
        copy.isDraft = self.isDraft;
        copy.displayVipPrice = [self.displayVipPrice copyWithZone:zone];
        copy.roomId = self.roomId;
        copy.chatId = self.chatId;
        copy.displayDiscountedPrice = [self.displayDiscountedPrice copyWithZone:zone];
        copy.footnote = [self.footnote copyWithZone:zone];
        copy.playCount = self.playCount;
        copy.loopCount = self.loopCount;
        copy.tracksCount = self.tracksCount;
        copy.properties = [self.properties copyWithZone:zone];
        copy.coverSmall = [self.coverSmall copyWithZone:zone];
        copy.priceTypeEnum = self.priceTypeEnum;
        copy.hasMore = self.hasMore;
        copy.uid = self.uid;
        copy.bubbleText = [self.bubbleText copyWithZone:zone];
        copy.refundSupportType = self.refundSupportType;
        copy.nickname = [self.nickname copyWithZone:zone];
        copy.showInterestCard = self.showInterestCard;
        copy.specialId = self.specialId;
        copy.commentsCount = self.commentsCount;
        copy.coverLarge = [self.coverLarge copyWithZone:zone];
        copy.playsCount = self.playsCount;
        copy.recSrc = [self.recSrc copyWithZone:zone];
        copy.keywords = [self.keywords copyWithZone:zone];
        copy.subtitle = [self.subtitle copyWithZone:zone];
        copy.target = [self.target copyWithZone:zone];
    }
    
    return copy;
}


@end

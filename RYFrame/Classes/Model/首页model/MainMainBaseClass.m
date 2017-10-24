//
//  MainMainBaseClass.m
//
//  Created by   on 2017/10/24
//  Copyright (c) 2017 __MyCompanyName__. All rights reserved.
//

#import "MainMainBaseClass.h"
#import "MainList.h"


NSString *const kMainMainBaseClassCode = @"code";
NSString *const kMainMainBaseClassList = @"list";
NSString *const kMainMainBaseClassMsg = @"msg";
NSString *const kMainMainBaseClassRet = @"ret";


@interface MainMainBaseClass ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation MainMainBaseClass

@synthesize code = _code;
@synthesize list = _list;
@synthesize msg = _msg;
@synthesize ret = _ret;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict {
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if (self && [dict isKindOfClass:[NSDictionary class]]) {
            self.code = [self objectOrNilForKey:kMainMainBaseClassCode fromDictionary:dict];
    NSObject *receivedMainList = [dict objectForKey:kMainMainBaseClassList];
    NSMutableArray *parsedMainList = [NSMutableArray array];
    
    if ([receivedMainList isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedMainList) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedMainList addObject:[MainList modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedMainList isKindOfClass:[NSDictionary class]]) {
       [parsedMainList addObject:[MainList modelObjectWithDictionary:(NSDictionary *)receivedMainList]];
    }

    self.list = [NSArray arrayWithArray:parsedMainList];
            self.msg = [self objectOrNilForKey:kMainMainBaseClassMsg fromDictionary:dict];
            self.ret = [[self objectOrNilForKey:kMainMainBaseClassRet fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation {
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.code forKey:kMainMainBaseClassCode];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForList] forKey:kMainMainBaseClassList];
    [mutableDict setValue:self.msg forKey:kMainMainBaseClassMsg];
    [mutableDict setValue:[NSNumber numberWithDouble:self.ret] forKey:kMainMainBaseClassRet];

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

    self.code = [aDecoder decodeObjectForKey:kMainMainBaseClassCode];
    self.list = [aDecoder decodeObjectForKey:kMainMainBaseClassList];
    self.msg = [aDecoder decodeObjectForKey:kMainMainBaseClassMsg];
    self.ret = [aDecoder decodeDoubleForKey:kMainMainBaseClassRet];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_code forKey:kMainMainBaseClassCode];
    [aCoder encodeObject:_list forKey:kMainMainBaseClassList];
    [aCoder encodeObject:_msg forKey:kMainMainBaseClassMsg];
    [aCoder encodeDouble:_ret forKey:kMainMainBaseClassRet];
}

- (id)copyWithZone:(NSZone *)zone {
    MainMainBaseClass *copy = [[MainMainBaseClass alloc] init];
    
    
    
    if (copy) {

        copy.code = [self.code copyWithZone:zone];
        copy.list = [self.list copyWithZone:zone];
        copy.msg = [self.msg copyWithZone:zone];
        copy.ret = self.ret;
    }
    
    return copy;
}


@end

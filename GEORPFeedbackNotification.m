// This file was automatically generated by gyb
// DO NOT EDIT!
// Compiled from community_feedback.proto

#import "GEORPFeedbackNotification.h"
#import <ProtocolBuffer/PBConstants.h>
#import <ProtocolBuffer/PBHashUtil.h>
#import <ProtocolBuffer/PBDataReader.h>

#if !__has_feature(objc_arc)
# error This generated file depends on ARC but it is not enabled
#endif

@implementation GEORPFeedbackNotification



- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %@", [super description], [self dictionaryRepresentation]];
}

- (NSDictionary *)dictionaryRepresentation
{
    [self readAll:YES];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];

    if (_unknownFields)
        [dict setObject:[_unknownFields dictionaryRepresentation] forKey:@"Unknown Fields"];

    return dict;
}


#define TAG_PARSE_ALL_RECURSIVE     (UINT32_MAX)
#define TAG_PARSE_ALL_NON_RECURSIVE (UINT32_MAX-1)
#define TAG_PARSE_INITIAL           (UINT32_MAX-2)
#define TAG_UNKNOWN_FIELDS          (UINT32_MAX-3)

- (void)readAll:(BOOL)recursively { /* noop */ }
BOOL GEORPFeedbackNotificationReadAllFrom(__unsafe_unretained GEORPFeedbackNotification *self, __unsafe_unretained PBDataReader *reader, BOOL recursively) {
    static const uint32_t recursiveTag[] = {TAG_PARSE_ALL_RECURSIVE, 0};

    @synchronized(reader) {
        BOOL result = GEORPFeedbackNotificationReadSpecified(self, reader, recursively ? recursiveTag : nil);
        return result;
    }
}
BOOL GEORPFeedbackNotificationReadFrom(__unsafe_unretained GEORPFeedbackNotification *self, __unsafe_unretained PBDataReader *reader) {
    @synchronized(reader) {
        return GEORPFeedbackNotificationReadAllFrom(self, reader, NO);
    }
}

BOOL GEORPFeedbackNotificationReadSpecified(__unsafe_unretained GEORPFeedbackNotification *self, __unsafe_unretained PBDataReader *reader, const uint32_t *tags) {
    if (reader == nil) {
        return NO;
    }
    #define shouldParseUnknown YES
    __attribute__((unused)) BOOL const recursively = (tags != nil && tags[0] == TAG_PARSE_ALL_RECURSIVE);
    while (PBReaderHasMoreData(reader)) {
        uint32_t tag = 0;
        uint8_t aType = 0;
        PBReaderReadTag32AndType(reader, &tag, &aType);

        if (PBReaderHasError(reader))
            break;

        if (aType == TYPE_END_GROUP) {
            break;
        }
        
    #define shouldParseTag YES

        switch (tag) {

            default:
                if (!self->_unknownFields)
                    self->_unknownFields = [[PBUnknownFields alloc] init];
                if (!PBUnknownFieldAdd(self->_unknownFields, tag, aType, reader))
                    return NO;
                break;
        }
    }



    #undef shouldParseTag
    #undef shouldParseUnknown
    #undef recursively
    return !PBReaderHasError(reader);
}

+ (BOOL)isValid:(__unsafe_unretained PBDataReader *)reader
{
    return GEORPFeedbackNotificationIsValid(reader);
}

BOOL GEORPFeedbackNotificationIsValid(__unsafe_unretained PBDataReader *reader) {
    PBDataReaderMark resetMark;
    resetMark.pos = reader.position;
    resetMark.length = reader.length;
    #define returnValue(X) do { \
        const BOOL v = X; \
        PBReaderRecallMark(reader, &resetMark); \
        return v; \
    } while(0)
    while (PBReaderHasMoreData(reader)) {
        uint32_t tag = 0;
        uint8_t aType = 0;
        PBReaderReadTag32AndType(reader, &tag, &aType);

        if (PBReaderHasError(reader))
            break;

        if (aType == TYPE_END_GROUP) {
            break;
        }

        switch (tag) {

            default:
                if (!PBReaderSkipValueWithTag(reader, tag, aType))
                    returnValue(NO);
                break;
        }
    }
    returnValue(!PBReaderHasError(reader));
    #undef returnValue
}

- (BOOL)readFrom:(PBDataReader *)reader
{
    return GEORPFeedbackNotificationReadAllFrom(self, reader, NO);
}

- (void)writeTo:(PBDataWriter *)writer
{
    /* Unknown Fields */
    {
        [_unknownFields writeTo:writer];
    }
}



- (void)copyTo:(GEORPFeedbackNotification *)other
{
    [self readAll:NO];
}

- (id)copyWithZone:(NSZone *)zone
{
    GEORPFeedbackNotification *copy = [[[self class] allocWithZone:zone] init];
    copy->_unknownFields = _unknownFields;
    return copy;
}


- (BOOL)isEqual:(id)object
{
    GEORPFeedbackNotification *other = (GEORPFeedbackNotification *)object;
    if (![other isMemberOfClass:[self class]]) {
        return NO;
    }
    [self readAll:YES];
    [other readAll:YES];


    return YES
    ;
}

- (NSUInteger)hash
{
    [self readAll:YES];
    NSUInteger value = 0;

    return value
    ;
}

- (void)mergeFrom:(GEORPFeedbackNotification *)other
{
    [other readAll:NO];
}

- (PBUnknownFields *)unknownFields
{
    return _unknownFields;
}
- (void)clearUnknownFields:(BOOL)recursively
{
    _unknownFields = nil;
    if (!recursively) {
        return;
    }
    [self readAll:NO];
}

@end



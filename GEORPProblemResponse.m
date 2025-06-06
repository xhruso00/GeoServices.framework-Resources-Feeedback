// This file was automatically generated by gyb
// DO NOT EDIT!
// Compiled from reportaproblem.proto

#import "GEORPProblemResponse.h"
#import <ProtocolBuffer/PBConstants.h>
#import <ProtocolBuffer/PBHashUtil.h>
#import <ProtocolBuffer/PBDataReader.h>

#if !__has_feature(objc_arc)
# error This generated file depends on ARC but it is not enabled
#endif

@implementation GEORPProblemResponse


- (GEOStatusCode)statusCode
{
    return _flags.has_statusCode ? _statusCode : GEOStatusCode_STATUS_SUCCESS;
}
- (void)setStatusCode:(GEOStatusCode)v
{
    _flags.has_statusCode = 1;
    _statusCode = v;
}
- (void)setHasStatusCode:(BOOL)f
{
    _flags.has_statusCode = f ? 1 : 0;
}
- (BOOL)hasStatusCode
{
    return (BOOL)_flags.has_statusCode;
}
- (NSString *)statusCodeAsString:(GEOStatusCode)value
{
    return GEOStatusCodeAsString(value);
}
- (GEOStatusCode)StringAsStatusCode:(NSString *)str
{
    return StringAsGEOStatusCode(str);
}

- (BOOL)hasProblemId
{
    return _problemId != nil;
}
- (NSString *)problemId
{
    return _problemId;
}
- (void)setProblemId:(NSString *)v
{
    _problemId = v;
}

- (BOOL)isNotificationSupported
{
    return _isNotificationSupported;
}
- (void)setIsNotificationSupported:(BOOL)v
{
    _flags.has_isNotificationSupported = 1;
    _isNotificationSupported = v;
}
- (void)setHasIsNotificationSupported:(BOOL)f
{
    _flags.has_isNotificationSupported = f ? 1 : 0;
}
- (BOOL)hasIsNotificationSupported
{
    return (BOOL)_flags.has_isNotificationSupported;
}


- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %@", [super description], [self dictionaryRepresentation]];
}

- (NSDictionary *)dictionaryRepresentation
{
    [self readAll:YES];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    if (self->_flags.has_statusCode)
    {
        [dict setObject:GEOStatusCodeAsString(self->_statusCode) forKey:@"status_code"];
    }

    {
        NSString * value = self.problemId;
        if (value) {
            [dict setObject:value forKey:@"problem_id"];
        }
    }

    if (self->_flags.has_isNotificationSupported)
    {
        [dict setObject:@(self->_isNotificationSupported) forKey:@"is_notification_supported"];
    }



    return dict;
}


#define TAG_PARSE_ALL_RECURSIVE     (UINT32_MAX)
#define TAG_PARSE_ALL_NON_RECURSIVE (UINT32_MAX-1)
#define TAG_PARSE_INITIAL           (UINT32_MAX-2)
#define TAG_UNKNOWN_FIELDS          (UINT32_MAX-3)

- (void)readAll:(BOOL)recursively { /* noop */ }
BOOL GEORPProblemResponseReadAllFrom(__unsafe_unretained GEORPProblemResponse *self, __unsafe_unretained PBDataReader *reader, BOOL recursively) {
    static const uint32_t recursiveTag[] = {TAG_PARSE_ALL_RECURSIVE, 0};

    @synchronized(reader) {
        BOOL result = GEORPProblemResponseReadSpecified(self, reader, recursively ? recursiveTag : nil);
        return result;
    }
}
BOOL GEORPProblemResponseReadFrom(__unsafe_unretained GEORPProblemResponse *self, __unsafe_unretained PBDataReader *reader) {
    @synchronized(reader) {
        return GEORPProblemResponseReadAllFrom(self, reader, NO);
    }
}

BOOL GEORPProblemResponseReadSpecified(__unsafe_unretained GEORPProblemResponse *self, __unsafe_unretained PBDataReader *reader, const uint32_t *tags) {
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

            case 1 /* statusCode */:
            {
                self->_flags.has_statusCode = YES;
                self->_statusCode = PBReaderReadInt32(reader);

            }
            break;
            case 2 /* problemId */:
            {
                NSString * new_problemId = PBReaderReadString(reader);
                self->_problemId = new_problemId;

            }
            break;
            case 3 /* isNotificationSupported */:
            {
                self->_flags.has_isNotificationSupported = YES;
                self->_isNotificationSupported = PBReaderReadBOOL(reader);

            }
            break;
            default:
                if (!PBReaderSkipValueWithTag(reader, tag, aType))
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
    return GEORPProblemResponseIsValid(reader);
}

BOOL GEORPProblemResponseIsValid(__unsafe_unretained PBDataReader *reader) {
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

            case 1 /* statusCode */:
                if (TYPE_VARINT != aType)
                    returnValue(NO);
                PBReaderReadInt32(reader);
                break;
            case 2 /* problemId */:
                if (TYPE_LENGTH_DELIMITED != aType)
                    returnValue(NO);
                if (!PBReaderSkipValueWithTag(reader, tag, aType))
                    returnValue(NO);
                break;
                break;
            case 3 /* isNotificationSupported */:
                if (TYPE_VARINT != aType)
                    returnValue(NO);
                PBReaderReadBOOL(reader);
                break;
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
    return GEORPProblemResponseReadAllFrom(self, reader, NO);
}

- (void)writeTo:(PBDataWriter *)writer
{

    /* statusCode */
    {
        if (self->_flags.has_statusCode)
        {
            PBDataWriterWriteInt32Field(writer, self->_statusCode, 1);
        }
    }

    /* problemId */
    {
        if (self->_problemId)
        {
            PBDataWriterWriteStringField(writer, self->_problemId, 2);
        }
    }

    /* isNotificationSupported */
    {
        if (self->_flags.has_isNotificationSupported)
        {
            PBDataWriterWriteBOOLField(writer, self->_isNotificationSupported, 3);
        }
    }
}



- (void)copyTo:(GEORPProblemResponse *)other
{
    [self readAll:NO];
    if (self->_flags.has_statusCode)
    {
        other->_statusCode = _statusCode;
        other->_flags.has_statusCode = YES;
    }
    if (_problemId)
    {
        other.problemId = _problemId;
    }
    if (self->_flags.has_isNotificationSupported)
    {
        other->_isNotificationSupported = _isNotificationSupported;
        other->_flags.has_isNotificationSupported = YES;
    }
}

- (id)copyWithZone:(NSZone *)zone
{
    GEORPProblemResponse *copy = [[[self class] allocWithZone:zone] init];
    if (self->_flags.has_statusCode)
    {
        copy->_statusCode = _statusCode;
        copy->_flags.has_statusCode = YES;
    }
    copy->_problemId = [_problemId copyWithZone:zone];
    if (self->_flags.has_isNotificationSupported)
    {
        copy->_isNotificationSupported = _isNotificationSupported;
        copy->_flags.has_isNotificationSupported = YES;
    }
    return copy;
}


- (BOOL)isEqual:(id)object
{
    GEORPProblemResponse *other = (GEORPProblemResponse *)object;
    if (![other isMemberOfClass:[self class]]) {
        return NO;
    }
    [self readAll:YES];
    [other readAll:YES];


    return YES
    &&
    ((self->_flags.has_statusCode && other->_flags.has_statusCode && self->_statusCode == other->_statusCode) || (!self->_flags.has_statusCode && !other->_flags.has_statusCode))
    &&
    ((!self->_problemId && !other->_problemId) || [self->_problemId isEqual:other->_problemId])
    &&
    ((self->_flags.has_isNotificationSupported && other->_flags.has_isNotificationSupported && ((self->_isNotificationSupported && other->_isNotificationSupported) || (!self->_isNotificationSupported && !other->_isNotificationSupported))) || (!self->_flags.has_isNotificationSupported && !other->_flags.has_isNotificationSupported))
    ;
}

- (NSUInteger)hash
{
    [self readAll:YES];
    NSUInteger value = 0;

    return value
    ^
    (self->_flags.has_statusCode ? PBHashInt((NSUInteger)self->_statusCode) : 0)
    ^
    [self->_problemId hash]
    ^
    (self->_flags.has_isNotificationSupported ? PBHashInt((NSUInteger)self->_isNotificationSupported) : 0)
    ;
}

- (void)mergeFrom:(GEORPProblemResponse *)other
{
    [other readAll:NO];
    if (other->_flags.has_statusCode)
    {
        self->_statusCode = other->_statusCode;
        self->_flags.has_statusCode = 1;
    }
    if (other->_problemId)
    {
        [self setProblemId:other->_problemId];
    }
    if (other->_flags.has_isNotificationSupported)
    {
        self->_isNotificationSupported = other->_isNotificationSupported;
        self->_flags.has_isNotificationSupported = 1;
    }
}


@end



// This file was automatically generated by gyb
// DO NOT EDIT!
// Compiled from community_feedback.proto

#import "GEORPDebugSettings.h"

#if defined(GEO_INTERNAL_ONLY) && GEO_INTERNAL_ONLY

#import <ProtocolBuffer/PBConstants.h>
#import <ProtocolBuffer/PBHashUtil.h>
#import <ProtocolBuffer/PBDataReader.h>

#if !__has_feature(objc_arc)
# error This generated file depends on ARC but it is not enabled
#endif

@implementation GEORPDebugSettings


- (GEORPDebugSettings_DebugMode)mode
{
    return _flags.has_mode ? _mode : GEORPDebugSettings_DebugMode_DEBUG_MODE_UNKNOWN;
}
- (void)setMode:(GEORPDebugSettings_DebugMode)v
{
    _flags.has_mode = 1;
    _mode = v;
}
- (void)setHasMode:(BOOL)f
{
    _flags.has_mode = f ? 1 : 0;
}
- (BOOL)hasMode
{
    return (BOOL)_flags.has_mode;
}
- (NSString *)modeAsString:(GEORPDebugSettings_DebugMode)value
{
    return GEORPDebugSettings_DebugModeAsString(value);
}
- (GEORPDebugSettings_DebugMode)StringAsMode:(NSString *)str
{
    return StringAsGEORPDebugSettings_DebugMode(str);
}

- (NSMutableArray<NSString *> *)keywords
{
    return _keywords;
}
- (void)setKeywords:(NSMutableArray<NSString *> *)v
{
    _keywords = v;
}
- (void)clearKeywords
{
    [_keywords removeAllObjects];
}
- (void)addKeywords:(NSString *)i
{
    if (!_keywords)
    {
        _keywords = [[NSMutableArray alloc] init];
    }
    [_keywords addObject:i];
}
- (NSUInteger)keywordsCount
{
    return [_keywords count];
}
- (NSString *)keywordsAtIndex:(NSUInteger)idx
{
    return [_keywords objectAtIndex:idx];
}
+ (Class)keywordsType
{
    return [NSString class];
}


- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %@", [super description], [self dictionaryRepresentation]];
}

- (NSDictionary *)dictionaryRepresentation
{
    [self readAll:YES];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    if (self->_flags.has_mode)
    {
        [dict setObject:GEORPDebugSettings_DebugModeAsString(self->_mode) forKey:@"mode"];
    }

    if (self->_keywords) {
        [dict setObject:self.keywords forKey:@"keywords"];
    }


    if (_unknownFields)
        [dict setObject:[_unknownFields dictionaryRepresentation] forKey:@"Unknown Fields"];

    return dict;
}


#define TAG_PARSE_ALL_RECURSIVE     (UINT32_MAX)
#define TAG_PARSE_ALL_NON_RECURSIVE (UINT32_MAX-1)
#define TAG_PARSE_INITIAL           (UINT32_MAX-2)
#define TAG_UNKNOWN_FIELDS          (UINT32_MAX-3)

- (void)readAll:(BOOL)recursively { /* noop */ }
BOOL GEORPDebugSettingsReadAllFrom(__unsafe_unretained GEORPDebugSettings *self, __unsafe_unretained PBDataReader *reader, BOOL recursively) {
    static const uint32_t recursiveTag[] = {TAG_PARSE_ALL_RECURSIVE, 0};

    @synchronized(reader) {
        BOOL result = GEORPDebugSettingsReadSpecified(self, reader, recursively ? recursiveTag : nil);
        return result;
    }
}
BOOL GEORPDebugSettingsReadFrom(__unsafe_unretained GEORPDebugSettings *self, __unsafe_unretained PBDataReader *reader) {
    @synchronized(reader) {
        return GEORPDebugSettingsReadAllFrom(self, reader, NO);
    }
}

BOOL GEORPDebugSettingsReadSpecified(__unsafe_unretained GEORPDebugSettings *self, __unsafe_unretained PBDataReader *reader, const uint32_t *tags) {
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

            case 1 /* mode */:
            {
                self->_flags.has_mode = YES;
                self->_mode = PBReaderReadInt32(reader);

            }
            break;
            case 2 /* keywords */:
            {
            NSString *new_keywords = PBReaderReadString(reader);
                if (new_keywords)
                {
                    [self addKeywords:new_keywords];
                }

            }
            break;
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
    return GEORPDebugSettingsIsValid(reader);
}

BOOL GEORPDebugSettingsIsValid(__unsafe_unretained PBDataReader *reader) {
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

            case 1 /* mode */:
                if (TYPE_VARINT != aType)
                    returnValue(NO);
                PBReaderReadInt32(reader);
                break;
            case 2 /* keywords */:
                if (TYPE_LENGTH_DELIMITED != aType)
                    returnValue(NO);
                if (!PBReaderSkipValueWithTag(reader, tag, aType))
                    returnValue(NO);
                break;
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
    return GEORPDebugSettingsReadAllFrom(self, reader, NO);
}

- (void)writeTo:(PBDataWriter *)writer
{

    /* mode */
    {
        if (self->_flags.has_mode)
        {
            PBDataWriterWriteInt32Field(writer, self->_mode, 1);
        }
    }

    /* keywords */
    {
        for (NSString * s_keywords in self->_keywords)
        {
            PBDataWriterWriteStringField(writer, s_keywords, 2);
        }

    }
    /* Unknown Fields */
    {
        [_unknownFields writeTo:writer];
    }
}



- (void)copyTo:(GEORPDebugSettings *)other
{
    [self readAll:NO];
    if (self->_flags.has_mode)
    {
        other->_mode = _mode;
        other->_flags.has_mode = YES;
    }
    if ([self keywordsCount])
    {
        [other clearKeywords];
        NSUInteger keywordsCnt = [self keywordsCount];
        for (NSUInteger i = 0; i < keywordsCnt; i++)
        {
            [other addKeywords:[self keywordsAtIndex:i]];
        }
    }
}

- (id)copyWithZone:(NSZone *)zone
{
    GEORPDebugSettings *copy = [[[self class] allocWithZone:zone] init];
    if (self->_flags.has_mode)
    {
        copy->_mode = _mode;
        copy->_flags.has_mode = YES;
    }
    for (NSString * v in _keywords)
    {
        NSString * vCopy = [v copyWithZone:zone];
        [copy addKeywords:vCopy];
    }
    copy->_unknownFields = _unknownFields;
    return copy;
}


- (BOOL)isEqual:(id)object
{
    GEORPDebugSettings *other = (GEORPDebugSettings *)object;
    if (![other isMemberOfClass:[self class]]) {
        return NO;
    }
    [self readAll:YES];
    [other readAll:YES];


    return YES
    &&
    ((self->_flags.has_mode && other->_flags.has_mode && self->_mode == other->_mode) || (!self->_flags.has_mode && !other->_flags.has_mode))
    &&
    ((!self->_keywords && !other->_keywords) || [self->_keywords isEqual:other->_keywords])

    ;
}

- (NSUInteger)hash
{
    [self readAll:YES];
    NSUInteger value = 0;

    return value
    ^
    (self->_flags.has_mode ? PBHashInt((NSUInteger)self->_mode) : 0)
    ^
    [self->_keywords hash]
    ;
}

- (void)mergeFrom:(GEORPDebugSettings *)other
{
    [other readAll:NO];
    if (other->_flags.has_mode)
    {
        self->_mode = other->_mode;
        self->_flags.has_mode = 1;
    }
    for (NSString * iter_keywords in other->_keywords)
    {
        [self addKeywords:iter_keywords];
    }
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


#endif // defined(GEO_INTERNAL_ONLY) && GEO_INTERNAL_ONLY

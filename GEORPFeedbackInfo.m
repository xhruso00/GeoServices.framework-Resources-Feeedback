// This file was automatically generated by gyb
// DO NOT EDIT!
// Compiled from community_feedback.proto

#import "GEORPFeedbackInfo.h"
#import <ProtocolBuffer/PBConstants.h>
#import <ProtocolBuffer/PBHashUtil.h>
#import <ProtocolBuffer/PBDataReader.h>
#import <os/lock_private.h>

#import <GeoServices/GEORPFeedbackComponent.h>

#if !__has_feature(objc_arc)
# error This generated file depends on ARC but it is not enabled
#endif

@implementation GEORPFeedbackInfo

- (instancetype)init
{
    self = [super init];
    if (self == nil) {
        return nil;
    }

    _readerLock = OS_UNFAIR_LOCK_INIT;
    return self;
}

- (instancetype)initWithData:(NSData *)data
{
    self = [super initWithData:data];
    if (self == nil) {
        return nil;
    }

    _readerLock = OS_UNFAIR_LOCK_INIT;
    return self;
}

- (void)_readFeedbackId {
    if (_flags.read_feedbackId) return;
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    PBDataReader *reader = _reader;
    os_unfair_lock_unlock(&_readerLock);
    if (!reader) return;
    @synchronized(reader) {
        if (!_flags.read_feedbackId) {
            static const uint32_t tags[] = {1, 0};
            GEORPFeedbackInfoReadSpecified(self, reader, tags);
        }
    }
}
- (BOOL)hasFeedbackId
{
    [self _readFeedbackId];
    return _feedbackId != nil;
}
- (NSString *)feedbackId
{
    [self _readFeedbackId];
    return _feedbackId;
}
- (void)setFeedbackId:(NSString *)v
{
    _flags.read_feedbackId = 1;
    _flags.wrote_feedbackId = 1;
    _feedbackId = v;
}

- (GEOStatusCode)status
{
    return _flags.has_status ? _status : GEOStatusCode_STATUS_SUCCESS;
}
- (void)setStatus:(GEOStatusCode)v
{
    _flags.wrote_status = 1;
    _flags.has_status = 1;
    _status = v;
}
- (void)setHasStatus:(BOOL)f
{
    _flags.wrote_status = 1;
    _flags.has_status = f ? 1 : 0;
}
- (BOOL)hasStatus
{
    return (BOOL)_flags.has_status;
}
- (NSString *)statusAsString:(GEOStatusCode)value
{
    return GEOStatusCodeAsString(value);
}
- (GEOStatusCode)StringAsStatus:(NSString *)str
{
    return StringAsGEOStatusCode(str);
}

- (void)_readFeedbackComponents {
    if (_flags.read_feedbackComponents) return;
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    PBDataReader *reader = _reader;
    os_unfair_lock_unlock(&_readerLock);
    if (!reader) return;
    @synchronized(reader) {
        if (!_flags.read_feedbackComponents) {
            static const uint32_t tags[] = {5, 0};
            GEORPFeedbackInfoReadSpecified(self, reader, tags);
        }
    }
}
- (NSMutableArray<GEORPFeedbackComponent *> *)feedbackComponents
{
    [self _readFeedbackComponents];
    return _feedbackComponents;
}
- (void)setFeedbackComponents:(NSMutableArray<GEORPFeedbackComponent *> *)v
{
    _flags.read_feedbackComponents = 1;
    _flags.wrote_feedbackComponents = 1;
    _feedbackComponents = v;
}
- (void)clearFeedbackComponents
{
    _flags.read_feedbackComponents = 1;
    _flags.wrote_feedbackComponents = 1;
    [_feedbackComponents removeAllObjects];
}
- (void)addFeedbackComponent:(GEORPFeedbackComponent *)i
{
    [self _readFeedbackComponents];
    [self _addNoFlagsFeedbackComponent:i];
    _flags.read_feedbackComponents = 1;
    _flags.wrote_feedbackComponents = 1;
}
- (void)_addNoFlagsFeedbackComponent:(GEORPFeedbackComponent *)i
{
    if (!_feedbackComponents)
    {
        _feedbackComponents = [[NSMutableArray alloc] init];
    }
    [_feedbackComponents addObject:i];
}
- (NSUInteger)feedbackComponentsCount
{
    [self _readFeedbackComponents];
    return [_feedbackComponents count];
}
- (GEORPFeedbackComponent *)feedbackComponentAtIndex:(NSUInteger)idx
{
    [self _readFeedbackComponents];
    return [_feedbackComponents objectAtIndex:idx];
}
+ (Class)feedbackComponentType
{
    return [GEORPFeedbackComponent class];
}


- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %@", [super description], [self dictionaryRepresentation]];
}

- (NSDictionary *)dictionaryRepresentation
{
    [self readAll:YES];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    {
        NSString * value = self.feedbackId;
        if (value) {
            [dict setObject:value forKey:@"feedback_id"];
        }
    }

    if (self->_flags.has_status)
    {
        [dict setObject:GEOStatusCodeAsString(self->_status) forKey:@"status"];
    }

    if ([self->_feedbackComponents count])
    {
        NSMutableArray *feedbackComponentsDictReprs = [[NSMutableArray alloc] initWithCapacity:[self->_feedbackComponents count]];
        for (GEORPFeedbackComponent * i_feedbackComponent in self->_feedbackComponents)
        {
            [feedbackComponentsDictReprs addObject:[i_feedbackComponent dictionaryRepresentation]];
        }
        [dict setObject:feedbackComponentsDictReprs forKey:@"feedback_component"];
    }


    if (_unknownFields)
        [dict setObject:[_unknownFields dictionaryRepresentation] forKey:@"Unknown Fields"];

    return dict;
}


#define TAG_PARSE_ALL_RECURSIVE     (UINT32_MAX)
#define TAG_PARSE_ALL_NON_RECURSIVE (UINT32_MAX-1)
#define TAG_PARSE_INITIAL           (UINT32_MAX-2)
#define TAG_UNKNOWN_FIELDS          (UINT32_MAX-3)

- (void)readAll:(BOOL)recursively {
    os_unfair_lock_lock_with_options(&(self->_readerLock), OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    PBDataReader *reader = _reader;
    os_unfair_lock_unlock(&_readerLock);
    if (reader == nil) return;
    @synchronized(reader) {
        static const uint32_t recursiveTag[] = {TAG_PARSE_ALL_RECURSIVE, 0};
        static const uint32_t nonRecursiveTag[] = {TAG_PARSE_ALL_NON_RECURSIVE, 0};
        GEORPFeedbackInfoReadSpecified(self, reader, recursively ? recursiveTag : nonRecursiveTag);
    }
}
BOOL GEORPFeedbackInfoReadAllFrom(__unsafe_unretained GEORPFeedbackInfo *self, __unsafe_unretained PBDataReader *reader, BOOL recursively) {
    if (self->_readerMarkLength != 0) {
        [NSException raise:NSInvalidArgumentException format:@"GEORPFeedbackInfoReadAllFrom can only be called once per object"];
        return NO;
    }

    if (reader.position > UINT32_MAX || reader.length > UINT32_MAX) {
        os_log_fault(OS_LOG_DEFAULT, "Cannot decode data with position/length > UINT32_MAX");
        return NO;
    }

    static const uint32_t recursiveTag[] = {TAG_PARSE_INITIAL, TAG_PARSE_ALL_RECURSIVE, 0};
    static const uint32_t initialTag[] = {TAG_PARSE_INITIAL, 0};

    @synchronized(reader) {
        os_unfair_lock_lock_with_options(&(self->_readerLock), OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
        self->_reader = reader;
        os_unfair_lock_unlock(&(self->_readerLock));

        self->_readerMarkPos = (uint32_t)reader.position;
        self->_readerMarkLength = (uint32_t)reader.length;
        BOOL result = GEORPFeedbackInfoReadSpecified(self, reader, recursively ? recursiveTag : initialTag);
        return result;
    }
}

BOOL GEORPFeedbackInfoReadFrom(__unsafe_unretained GEORPFeedbackInfo *self, __unsafe_unretained PBDataReader *reader) {
    @synchronized(reader) {
        return GEORPFeedbackInfoReadAllFrom(self, reader, NO);
    }
}

BOOL GEORPFeedbackInfoReadSpecified(__unsafe_unretained GEORPFeedbackInfo *self, __unsafe_unretained PBDataReader *reader, const uint32_t *tags) {
    if (reader == nil) {
        return NO;
    }
    reader->_length = (NSUInteger)self->_readerMarkLength;
    [reader seekToOffset:(NSUInteger)self->_readerMarkPos];
    uint32_t readLazyCount = 0
        + self->_flags.read_feedbackId
        + self->_flags.read_feedbackComponents
        + self->_flags.read_unknownFields
        ;
    #define requiredLazyFieldCount 1 // objc_msg_parse_all_threshold = 0.8

    BOOL readAll = NO;
    __attribute__((unused)) BOOL recursively = NO;
    BOOL shouldParseUnknown = NO;
    BOOL isInitial = NO;
    size_t tagsRemaining = 0;
    for (; tags[tagsRemaining] != 0; ++tagsRemaining) {
        switch (tags[tagsRemaining]) {
            case TAG_PARSE_ALL_RECURSIVE:
                recursively = YES;
                readAll = YES;
                shouldParseUnknown = YES;
                break;
            case TAG_PARSE_ALL_NON_RECURSIVE:
                readAll = YES;
                shouldParseUnknown = YES;
                break;
            case TAG_PARSE_INITIAL:
                isInitial = YES;
                break;
            case TAG_UNKNOWN_FIELDS:
                shouldParseUnknown = YES;
                ++readLazyCount;
                break;
            default:
                ++readLazyCount;
                break;
            }
    }
    if (!readAll && readLazyCount >= requiredLazyFieldCount) {
        readAll = YES;
        shouldParseUnknown = YES;
    }
    const BOOL stopWhenNoMoreTagsRemaining = !(readAll || shouldParseUnknown);
    if (readAll || isInitial) tags = NULL;

    while (PBReaderHasMoreData(reader)) {
        uint32_t tag = 0;
        uint8_t aType = 0;
        PBReaderReadTag32AndType(reader, &tag, &aType);

        if (PBReaderHasError(reader))
            break;

        if (aType == TYPE_END_GROUP) {
            break;
        }
        
        BOOL shouldParseTag = readAll;
        for (size_t i = 0; tags != NULL && !shouldParseTag && tags[i] != 0; ++i) {
            shouldParseTag = (tags[i] == tag);
        }

        switch (tag) {

            case 1 /* feedbackId */:
            {
                if (!shouldParseTag || self->_flags.read_feedbackId) {
                    if (!PBReaderSkipValueWithTag(reader, tag, aType))
                        return NO;
                    if (shouldParseTag && self->_flags.read_feedbackId) {
                        --tagsRemaining;
                    }
                    break;
                }
                NSString * new_feedbackId = PBReaderReadString(reader);
                self->_feedbackId = new_feedbackId;

                --tagsRemaining;
            }
            break;
            case 2 /* status */:
            {
                if (!isInitial) {
                    if (!PBReaderSkipValueWithTag(reader, tag, aType))
                        return NO;
                    break;
                }
                self->_flags.has_status = YES;
                self->_status = PBReaderReadInt32(reader);

            }
            break;
            case 5 /* feedbackComponents */:
            {
                if (!shouldParseTag || self->_flags.read_feedbackComponents) {
                    if (!PBReaderSkipValueWithTag(reader, tag, aType))
                        return NO;
                    break;
                }
                GEORPFeedbackComponent *new_feedbackComponent = [[GEORPFeedbackComponent alloc] init];
                [self _addNoFlagsFeedbackComponent:new_feedbackComponent];
                PBDataReaderMark mark_feedbackComponent;
                BOOL markError = !PBReaderPlaceMark(reader, &mark_feedbackComponent);
                if (markError)
                {
                    return NO;
                }
                BOOL inError = !GEORPFeedbackComponentReadAllFrom(new_feedbackComponent, reader, recursively);
                if (inError)
                {
                    return NO;
                }
                PBReaderRecallMark(reader, &mark_feedbackComponent);

            }
            break;
            default:
                if (!shouldParseUnknown || self->_flags.read_unknownFields) {
                    if (!PBReaderSkipValueWithTag(reader, tag, aType))
                        return NO;
                    break;
                }
                if (!self->_unknownFields)
                    self->_unknownFields = [[PBUnknownFields alloc] init];
                if (!PBUnknownFieldAdd(self->_unknownFields, tag, aType, reader))
                    return NO;
                break;
        }
        if (stopWhenNoMoreTagsRemaining && tagsRemaining == 0) {
            break;
        }
    }

    if (shouldParseUnknown) {
        self->_flags.read_unknownFields = YES;
    }

    if (readAll) {
        if (recursively) {
            for (GEORPFeedbackComponent * i in self->_feedbackComponents)
                [i readAll:YES];
        }
        self->_flags.read_feedbackId = YES;
        self->_flags.read_feedbackComponents = YES;
    } else {
        for (size_t i = 0; tags != NULL && tags[i] != 0; ++i) {
            switch (tags[i]) {
                case 1 /* feedbackId */:
                    self->_flags.read_feedbackId = YES;
                    break;
                case 5 /* feedbackComponents */:
                    self->_flags.read_feedbackComponents = YES;
                    break;
            }
        }
    }

    #undef requiredLazyFieldCount
    if (readAll) {
        // reader is __unsafe_unretained
        const BOOL hadError = PBReaderHasError(reader);
        os_unfair_lock_lock_with_options(&(self->_readerLock), OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
        self->_reader = nil;
        os_unfair_lock_unlock(&(self->_readerLock));
        return !hadError;
    }
    return !PBReaderHasError(reader);
}

+ (BOOL)isValid:(__unsafe_unretained PBDataReader *)reader
{
    return GEORPFeedbackInfoIsValid(reader);
}

BOOL GEORPFeedbackInfoIsValid(__unsafe_unretained PBDataReader *reader) {
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

            case 1 /* feedbackId */:
                if (TYPE_LENGTH_DELIMITED != aType)
                    returnValue(NO);
                if (!PBReaderSkipValueWithTag(reader, tag, aType))
                    returnValue(NO);
                break;
                break;
            case 2 /* status */:
                if (TYPE_VARINT != aType)
                    returnValue(NO);
                PBReaderReadInt32(reader);
                break;
            case 5 /* feedbackComponents */:
                if (TYPE_LENGTH_DELIMITED != aType)
                    returnValue(NO);
                {
                    PBDataReaderMark mark_feedbackComponent;
                    if (!PBReaderPlaceMark(reader, &mark_feedbackComponent))
                        returnValue(NO);
                    if (!GEORPFeedbackComponentIsValid(reader))
                        returnValue(NO);
                    PBReaderRecallMark(reader, &mark_feedbackComponent);
                }
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
    return GEORPFeedbackInfoReadAllFrom(self, reader, NO);
}

- (void)writeTo:(PBDataWriter *)writer
{
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    PBDataReader *reader = _reader;
    os_unfair_lock_unlock(&_readerLock);
    @synchronized(reader) {
        if (reader) {
            if (!GEORPFeedbackInfoIsDirty(self)) {
                reader->_length = (NSUInteger)_readerMarkLength;
                [reader seekToOffset:(NSUInteger)_readerMarkPos];
                uint32_t length = (_readerMarkLength - _readerMarkPos);
                NSData *data = [reader readBytes:length];
                [writer writeData:data];
                return;
            }
        }
    }

    [self readAll:NO];

    /* feedbackId */
    {
        if (self->_feedbackId)
        {
            PBDataWriterWriteStringField(writer, self->_feedbackId, 1);
        }
    }

    /* status */
    {
        if (self->_flags.has_status)
        {
            PBDataWriterWriteInt32Field(writer, self->_status, 2);
        }
    }

    /* feedbackComponents */
    {
        for (GEORPFeedbackComponent * i_feedbackComponent in self->_feedbackComponents)
        {
            PBDataWriterWriteSubmessage(writer, i_feedbackComponent, 5);
        }

    }
    /* Unknown Fields */
    {
        [_unknownFields writeTo:writer];
    }
}

BOOL GEORPFeedbackInfoIsDirty(__unsafe_unretained GEORPFeedbackInfo *self)
{
    if (self == nil) {
        return NO;
    }
    
    BOOL dirty = NO
        || self->_flags.wrote_feedbackId
        || self->_flags.read_feedbackId
        || self->_flags.wrote_status
        || self->_flags.wrote_feedbackComponents
        || self->_flags.read_feedbackComponents
        || self->_flags.wrote_unknownFields
    ;


    return dirty;
}


- (void)copyTo:(GEORPFeedbackInfo *)other
{
    [self readAll:NO];
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    other->_reader = _reader;
    other->_readerMarkPos = _readerMarkPos;
    other->_readerMarkLength = _readerMarkLength;
    os_unfair_lock_unlock(&_readerLock);
    if (_feedbackId)
    {
        other.feedbackId = _feedbackId;
    }
    if (self->_flags.has_status)
    {
        other->_status = _status;
        other->_flags.has_status = YES;
    }
    if ([self feedbackComponentsCount])
    {
        [other clearFeedbackComponents];
        NSUInteger feedbackComponentsCnt = [self feedbackComponentsCount];
        for (NSUInteger i = 0; i < feedbackComponentsCnt; i++)
        {
            [other addFeedbackComponent:[self feedbackComponentAtIndex:i]];
        }
    }
}

- (id)copyWithZone:(NSZone *)zone
{
    GEORPFeedbackInfo *copy = [[[self class] allocWithZone:zone] init];
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    PBDataReader *reader = _reader;
    os_unfair_lock_unlock(&_readerLock);
    @synchronized(reader) {
        if (reader) {
            BOOL wroteAny = NO
                || _flags.wrote_feedbackId
                || _flags.wrote_status
                || _flags.wrote_feedbackComponents
                || _flags.wrote_unknownFields
            ;
            if (!wroteAny) {
                reader->_length = (NSUInteger)_readerMarkLength;
                [reader seekToOffset:(NSUInteger)_readerMarkPos];
                GEORPFeedbackInfoReadAllFrom(copy, reader, NO);
                return copy;
            }
            [self readAll:NO];
        }
    }
    copy->_feedbackId = [_feedbackId copyWithZone:zone];
    if (self->_flags.has_status)
    {
        copy->_status = _status;
        copy->_flags.has_status = YES;
    }
    for (GEORPFeedbackComponent * v in _feedbackComponents)
    {
        GEORPFeedbackComponent * vCopy = [v copyWithZone:zone];
        [copy addFeedbackComponent:vCopy];
    }
    copy->_unknownFields = _unknownFields;
    return copy;
}


- (BOOL)isEqual:(id)object
{
    GEORPFeedbackInfo *other = (GEORPFeedbackInfo *)object;
    if (![other isMemberOfClass:[self class]]) {
        return NO;
    }
    [self readAll:YES];
    [other readAll:YES];


    return YES
    &&
    ((!self->_feedbackId && !other->_feedbackId) || [self->_feedbackId isEqual:other->_feedbackId])
    &&
    ((self->_flags.has_status && other->_flags.has_status && self->_status == other->_status) || (!self->_flags.has_status && !other->_flags.has_status))
    &&
    ((!self->_feedbackComponents && !other->_feedbackComponents) || [self->_feedbackComponents isEqual:other->_feedbackComponents])

    ;
}

- (NSUInteger)hash
{
    [self readAll:YES];
    NSUInteger value = 0;

    return value
    ^
    [self->_feedbackId hash]
    ^
    (self->_flags.has_status ? PBHashInt((NSUInteger)self->_status) : 0)
    ^
    [self->_feedbackComponents hash]
    ;
}

- (void)mergeFrom:(GEORPFeedbackInfo *)other
{
    [other readAll:NO];
    if (other->_feedbackId)
    {
        [self setFeedbackId:other->_feedbackId];
    }
    if (other->_flags.has_status)
    {
        self->_status = other->_status;
        self->_flags.has_status = 1;
    }
    for (GEORPFeedbackComponent * iter_feedbackComponents in other->_feedbackComponents)
    {
        [self addFeedbackComponent:iter_feedbackComponents];
    }
}

- (PBUnknownFields *)unknownFields
{
    if (_flags.read_unknownFields) return _unknownFields;
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    PBDataReader *reader = _reader;
    os_unfair_lock_unlock(&_readerLock);
    if (!reader) return _unknownFields;
    @synchronized(reader) {
        if (!_flags.read_unknownFields) {
            static const uint32_t tags[] = {TAG_UNKNOWN_FIELDS, 0};
            GEORPFeedbackInfoReadSpecified(self, reader, tags);
        }
    }
    return _unknownFields;
}
- (void)clearUnknownFields:(BOOL)recursively
{
    _flags.read_unknownFields = 1;
    _flags.wrote_unknownFields = 1;
    _unknownFields = nil;
    if (!recursively) {
        return;
    }
    [self readAll:NO];
    for (GEORPFeedbackComponent * v in self.feedbackComponents) {
        [v clearUnknownFields:YES];
    }
}

@end



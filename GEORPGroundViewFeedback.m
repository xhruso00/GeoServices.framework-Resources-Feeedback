// This file was automatically generated by gyb
// DO NOT EDIT!
// Compiled from community_feedback.proto

#import "GEORPGroundViewFeedback.h"

#if defined(GEO_MUNIN_ENABLED) && GEO_MUNIN_ENABLED

#import <ProtocolBuffer/PBConstants.h>
#import <ProtocolBuffer/PBHashUtil.h>
#import <ProtocolBuffer/PBDataReader.h>
#import <os/lock_private.h>

#import <GeoServices/GEORPGroundViewCorrections.h>
#import <GeoServices/GEORPGroundViewFeedbackContext.h>

#if !__has_feature(objc_arc)
# error This generated file depends on ARC but it is not enabled
#endif

@implementation GEORPGroundViewFeedback

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

- (void)_readGroundViewContext {
    if (_flags.read_groundViewContext) return;
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    PBDataReader *reader = _reader;
    os_unfair_lock_unlock(&_readerLock);
    if (!reader) return;
    @synchronized(reader) {
        if (!_flags.read_groundViewContext) {
            static const uint32_t tags[] = {1, 0};
            GEORPGroundViewFeedbackReadSpecified(self, reader, tags);
        }
    }
}
- (BOOL)hasGroundViewContext
{
    [self _readGroundViewContext];
    return _groundViewContext != nil;
}
- (GEORPGroundViewFeedbackContext *)groundViewContext
{
    [self _readGroundViewContext];
    return _groundViewContext;
}
- (void)setGroundViewContext:(GEORPGroundViewFeedbackContext *)v
{
    _flags.read_groundViewContext = 1;
    _flags.wrote_groundViewContext = 1;
    _groundViewContext = v;
}

- (void)_readGroundViewCorrections {
    if (_flags.read_groundViewCorrections) return;
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    PBDataReader *reader = _reader;
    os_unfair_lock_unlock(&_readerLock);
    if (!reader) return;
    @synchronized(reader) {
        if (!_flags.read_groundViewCorrections) {
            static const uint32_t tags[] = {2, 0};
            GEORPGroundViewFeedbackReadSpecified(self, reader, tags);
        }
    }
}
- (BOOL)hasGroundViewCorrections
{
    [self _readGroundViewCorrections];
    return _groundViewCorrections != nil;
}
- (GEORPGroundViewCorrections *)groundViewCorrections
{
    [self _readGroundViewCorrections];
    return _groundViewCorrections;
}
- (void)setGroundViewCorrections:(GEORPGroundViewCorrections *)v
{
    _flags.read_groundViewCorrections = 1;
    _flags.wrote_groundViewCorrections = 1;
    _groundViewCorrections = v;
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
        GEORPGroundViewFeedbackContext * value = self.groundViewContext;
        if (value) {
            [dict setObject:[value dictionaryRepresentation] forKey:@"ground_view_context"];
        }
    }

    {
        GEORPGroundViewCorrections * value = self.groundViewCorrections;
        if (value) {
            [dict setObject:[value dictionaryRepresentation] forKey:@"ground_view_corrections"];
        }
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
        GEORPGroundViewFeedbackReadSpecified(self, reader, recursively ? recursiveTag : nonRecursiveTag);
    }
}
BOOL GEORPGroundViewFeedbackReadAllFrom(__unsafe_unretained GEORPGroundViewFeedback *self, __unsafe_unretained PBDataReader *reader, BOOL recursively) {
    if (self->_readerMarkLength != 0) {
        [NSException raise:NSInvalidArgumentException format:@"GEORPGroundViewFeedbackReadAllFrom can only be called once per object"];
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
        BOOL result = GEORPGroundViewFeedbackReadSpecified(self, reader, recursively ? recursiveTag : initialTag);
        return result;
    }
}

BOOL GEORPGroundViewFeedbackReadFrom(__unsafe_unretained GEORPGroundViewFeedback *self, __unsafe_unretained PBDataReader *reader) {
    @synchronized(reader) {
        return GEORPGroundViewFeedbackReadAllFrom(self, reader, NO);
    }
}

BOOL GEORPGroundViewFeedbackReadSpecified(__unsafe_unretained GEORPGroundViewFeedback *self, __unsafe_unretained PBDataReader *reader, const uint32_t *tags) {
    if (reader == nil) {
        return NO;
    }
    reader->_length = (NSUInteger)self->_readerMarkLength;
    [reader seekToOffset:(NSUInteger)self->_readerMarkPos];
    uint32_t readLazyCount = 0
        + self->_flags.read_groundViewContext
        + self->_flags.read_groundViewCorrections
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

            case 1 /* groundViewContext */:
            {
                if (!shouldParseTag || self->_flags.read_groundViewContext) {
                    if (!PBReaderSkipValueWithTag(reader, tag, aType))
                        return NO;
                    if (shouldParseTag && self->_flags.read_groundViewContext) {
                        --tagsRemaining;
                    }
                    break;
                }
                GEORPGroundViewFeedbackContext *new_groundViewContext = [[GEORPGroundViewFeedbackContext alloc] init];
                self->_groundViewContext = new_groundViewContext;
                PBDataReaderMark mark_groundViewContext;
                BOOL markError = !PBReaderPlaceMark(reader, &mark_groundViewContext);
                if (markError)
                {
                    return NO;
                }
                BOOL inError = !GEORPGroundViewFeedbackContextReadAllFrom(new_groundViewContext, reader, recursively);
                if (inError)
                {
                    return NO;
                }
                PBReaderRecallMark(reader, &mark_groundViewContext);

                --tagsRemaining;
            }
            break;
            case 2 /* groundViewCorrections */:
            {
                if (!shouldParseTag || self->_flags.read_groundViewCorrections) {
                    if (!PBReaderSkipValueWithTag(reader, tag, aType))
                        return NO;
                    if (shouldParseTag && self->_flags.read_groundViewCorrections) {
                        --tagsRemaining;
                    }
                    break;
                }
                GEORPGroundViewCorrections *new_groundViewCorrections = [[GEORPGroundViewCorrections alloc] init];
                self->_groundViewCorrections = new_groundViewCorrections;
                PBDataReaderMark mark_groundViewCorrections;
                BOOL markError = !PBReaderPlaceMark(reader, &mark_groundViewCorrections);
                if (markError)
                {
                    return NO;
                }
                BOOL inError = !GEORPGroundViewCorrectionsReadAllFrom(new_groundViewCorrections, reader, recursively);
                if (inError)
                {
                    return NO;
                }
                PBReaderRecallMark(reader, &mark_groundViewCorrections);

                --tagsRemaining;
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
            [self->_groundViewContext readAll:YES];
            [self->_groundViewCorrections readAll:YES];
        }
        self->_flags.read_groundViewContext = YES;
        self->_flags.read_groundViewCorrections = YES;
    } else {
        for (size_t i = 0; tags != NULL && tags[i] != 0; ++i) {
            switch (tags[i]) {
                case 1 /* groundViewContext */:
                    self->_flags.read_groundViewContext = YES;
                    break;
                case 2 /* groundViewCorrections */:
                    self->_flags.read_groundViewCorrections = YES;
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
    return GEORPGroundViewFeedbackIsValid(reader);
}

BOOL GEORPGroundViewFeedbackIsValid(__unsafe_unretained PBDataReader *reader) {
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

            case 1 /* groundViewContext */:
                if (TYPE_LENGTH_DELIMITED != aType)
                    returnValue(NO);
                {
                    PBDataReaderMark mark_groundViewContext;
                    if (!PBReaderPlaceMark(reader, &mark_groundViewContext))
                        returnValue(NO);
                    if (!GEORPGroundViewFeedbackContextIsValid(reader))
                        returnValue(NO);
                    PBReaderRecallMark(reader, &mark_groundViewContext);
                }
                break;
            case 2 /* groundViewCorrections */:
                if (TYPE_LENGTH_DELIMITED != aType)
                    returnValue(NO);
                {
                    PBDataReaderMark mark_groundViewCorrections;
                    if (!PBReaderPlaceMark(reader, &mark_groundViewCorrections))
                        returnValue(NO);
                    if (!GEORPGroundViewCorrectionsIsValid(reader))
                        returnValue(NO);
                    PBReaderRecallMark(reader, &mark_groundViewCorrections);
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
    return GEORPGroundViewFeedbackReadAllFrom(self, reader, NO);
}

- (void)writeTo:(PBDataWriter *)writer
{
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    PBDataReader *reader = _reader;
    os_unfair_lock_unlock(&_readerLock);
    @synchronized(reader) {
        if (reader) {
            if (!GEORPGroundViewFeedbackIsDirty(self)) {
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

    /* groundViewContext */
    {
        if (self->_groundViewContext != nil)
        {
            PBDataWriterWriteSubmessage(writer, self->_groundViewContext, 1);
        }
    }

    /* groundViewCorrections */
    {
        if (self->_groundViewCorrections != nil)
        {
            PBDataWriterWriteSubmessage(writer, self->_groundViewCorrections, 2);
        }
    }
    /* Unknown Fields */
    {
        [_unknownFields writeTo:writer];
    }
}

BOOL GEORPGroundViewFeedbackIsDirty(__unsafe_unretained GEORPGroundViewFeedback *self)
{
    if (self == nil) {
        return NO;
    }
    
    BOOL dirty = NO
        || self->_flags.wrote_groundViewContext
        || (self->_flags.read_groundViewContext && GEORPGroundViewFeedbackContextIsDirty(self->_groundViewContext))
        || self->_flags.wrote_groundViewCorrections
        || self->_flags.read_groundViewCorrections
        || self->_flags.wrote_unknownFields
    ;


    return dirty;
}


- (void)copyTo:(GEORPGroundViewFeedback *)other
{
    [self readAll:NO];
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    other->_reader = _reader;
    other->_readerMarkPos = _readerMarkPos;
    other->_readerMarkLength = _readerMarkLength;
    os_unfair_lock_unlock(&_readerLock);
    if (_groundViewContext)
    {
        other.groundViewContext = _groundViewContext;
    }
    if (_groundViewCorrections)
    {
        other.groundViewCorrections = _groundViewCorrections;
    }
}

- (id)copyWithZone:(NSZone *)zone
{
    GEORPGroundViewFeedback *copy = [[[self class] allocWithZone:zone] init];
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    PBDataReader *reader = _reader;
    os_unfair_lock_unlock(&_readerLock);
    @synchronized(reader) {
        if (reader) {
            BOOL wroteAny = NO
                || _flags.wrote_groundViewContext
                || _flags.wrote_groundViewCorrections
                || _flags.wrote_unknownFields
            ;
            if (!wroteAny) {
                reader->_length = (NSUInteger)_readerMarkLength;
                [reader seekToOffset:(NSUInteger)_readerMarkPos];
                GEORPGroundViewFeedbackReadAllFrom(copy, reader, NO);
                return copy;
            }
            [self readAll:NO];
        }
    }
    copy->_groundViewContext = [_groundViewContext copyWithZone:zone];
    copy->_groundViewCorrections = [_groundViewCorrections copyWithZone:zone];
    copy->_unknownFields = _unknownFields;
    return copy;
}


- (BOOL)isEqual:(id)object
{
    GEORPGroundViewFeedback *other = (GEORPGroundViewFeedback *)object;
    if (![other isMemberOfClass:[self class]]) {
        return NO;
    }
    [self readAll:YES];
    [other readAll:YES];


    return YES
    &&
    ((!self->_groundViewContext && !other->_groundViewContext) || [self->_groundViewContext isEqual:other->_groundViewContext])
    &&
    ((!self->_groundViewCorrections && !other->_groundViewCorrections) || [self->_groundViewCorrections isEqual:other->_groundViewCorrections])
    ;
}

- (NSUInteger)hash
{
    [self readAll:YES];
    NSUInteger value = 0;

    return value
    ^
    [self->_groundViewContext hash]
    ^
    [self->_groundViewCorrections hash]
    ;
}

- (void)mergeFrom:(GEORPGroundViewFeedback *)other
{
    [other readAll:NO];
    if (self->_groundViewContext && other->_groundViewContext)
    {
        [self->_groundViewContext mergeFrom:other->_groundViewContext];
    }
    else if (!self->_groundViewContext && other->_groundViewContext)
    {
        [self setGroundViewContext:other->_groundViewContext];
    }
    if (self->_groundViewCorrections && other->_groundViewCorrections)
    {
        [self->_groundViewCorrections mergeFrom:other->_groundViewCorrections];
    }
    else if (!self->_groundViewCorrections && other->_groundViewCorrections)
    {
        [self setGroundViewCorrections:other->_groundViewCorrections];
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
            GEORPGroundViewFeedbackReadSpecified(self, reader, tags);
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
    [_groundViewContext clearUnknownFields:YES];
    [_groundViewCorrections clearUnknownFields:YES];
}

@end


#endif // defined(GEO_MUNIN_ENABLED) && GEO_MUNIN_ENABLED

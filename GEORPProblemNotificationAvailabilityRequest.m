// This file was automatically generated by gyb
// DO NOT EDIT!
// Compiled from reportaproblem.proto

#import "GEORPProblemNotificationAvailabilityRequest.h"
#import <ProtocolBuffer/PBConstants.h>
#import <ProtocolBuffer/PBHashUtil.h>
#import <ProtocolBuffer/PBDataReader.h>
#import <os/lock_private.h>

#import <GeoServices/GEOClientCapabilities.h>
#import <GeoServices/GEORPProblemNotificationAvailabilityResponse.h>

#if !__has_feature(objc_arc)
# error This generated file depends on ARC but it is not enabled
#endif

@implementation GEORPProblemNotificationAvailabilityRequest

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

- (void)dealloc
{
    PBRepeatedInt32Clear(&(self->_problemTypes));
    PBRepeatedUInt64Clear(&(self->_businessIds));
}

- (void)_readProblemTypes {
    if (_flags.read_problemTypes) return;
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    PBDataReader *reader = _reader;
    os_unfair_lock_unlock(&_readerLock);
    if (!reader) return;
    @synchronized(reader) {
        if (!_flags.read_problemTypes) {
            static const uint32_t tags[] = {1, 0};
            GEORPProblemNotificationAvailabilityRequestReadSpecified(self, reader, tags);
        }
    }
}
- (NSUInteger)problemTypesCount
{
    [self _readProblemTypes];
    return _problemTypes.count;
}
- (GEORPProblemType *)problemTypes
{
    [self _readProblemTypes];
    return _problemTypes.list;
}
- (void)clearProblemTypes
{
    _flags.read_problemTypes = 1;
    _flags.wrote_problemTypes = 1;
    PBRepeatedInt32Clear(&_problemTypes);
}
- (void)addProblemType:(GEORPProblemType)i
{
    [self _readProblemTypes];
    [self _addNoFlagsProblemType:i];
    _flags.read_problemTypes = 1;
    _flags.wrote_problemTypes = 1;
}
- (void)_addNoFlagsProblemType:(GEORPProblemType)i
{
    PBRepeatedInt32Add(&_problemTypes, i);
}
- (GEORPProblemType)problemTypeAtIndex:(NSUInteger)idx
{
    [self _readProblemTypes];
    if (_problemTypes.count <= idx)
    {
        [[NSException exceptionWithName:NSRangeException reason:[NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", idx, _problemTypes.count] userInfo:nil] raise];
    }
    return _problemTypes.list[idx];
}
- (void)setProblemTypes:(GEORPProblemType *)list count:(NSUInteger)count
{
    _flags.read_problemTypes = 1;
    _flags.wrote_problemTypes = 1;
    PBRepeatedInt32Set(&_problemTypes, list, count);
}
- (NSString *)problemTypesAsString:(GEORPProblemType)value
{
    return GEORPProblemTypeAsString(value);
}
- (GEORPProblemType)StringAsProblemTypes:(NSString *)str
{
    return StringAsGEORPProblemType(str);
}

- (void)_readCountryCode {
    if (_flags.read_countryCode) return;
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    PBDataReader *reader = _reader;
    os_unfair_lock_unlock(&_readerLock);
    if (!reader) return;
    @synchronized(reader) {
        if (!_flags.read_countryCode) {
            static const uint32_t tags[] = {2, 0};
            GEORPProblemNotificationAvailabilityRequestReadSpecified(self, reader, tags);
        }
    }
}
- (BOOL)hasCountryCode
{
    [self _readCountryCode];
    return _countryCode != nil;
}
- (NSString *)countryCode
{
    [self _readCountryCode];
    return _countryCode;
}
- (void)setCountryCode:(NSString *)v
{
    _flags.read_countryCode = 1;
    _flags.wrote_countryCode = 1;
    _countryCode = v;
}

- (void)_readDevicePushToken {
    if (_flags.read_devicePushToken) return;
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    PBDataReader *reader = _reader;
    os_unfair_lock_unlock(&_readerLock);
    if (!reader) return;
    @synchronized(reader) {
        if (!_flags.read_devicePushToken) {
            static const uint32_t tags[] = {3, 0};
            GEORPProblemNotificationAvailabilityRequestReadSpecified(self, reader, tags);
        }
    }
}
- (BOOL)hasDevicePushToken
{
    [self _readDevicePushToken];
    return _devicePushToken != nil;
}
- (NSData *)devicePushToken
{
    [self _readDevicePushToken];
    return _devicePushToken;
}
- (void)setDevicePushToken:(NSData *)v
{
    _flags.read_devicePushToken = 1;
    _flags.wrote_devicePushToken = 1;
    _devicePushToken = v;
}

- (void)_readClientCapabilities {
    if (_flags.read_clientCapabilities) return;
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    PBDataReader *reader = _reader;
    os_unfair_lock_unlock(&_readerLock);
    if (!reader) return;
    @synchronized(reader) {
        if (!_flags.read_clientCapabilities) {
            static const uint32_t tags[] = {4, 0};
            GEORPProblemNotificationAvailabilityRequestReadSpecified(self, reader, tags);
        }
    }
}
- (BOOL)hasClientCapabilities
{
    [self _readClientCapabilities];
    return _clientCapabilities != nil;
}
- (GEOClientCapabilities *)clientCapabilities
{
    [self _readClientCapabilities];
    return _clientCapabilities;
}
- (void)setClientCapabilities:(GEOClientCapabilities *)v
{
    _flags.read_clientCapabilities = 1;
    _flags.wrote_clientCapabilities = 1;
    _clientCapabilities = v;
}

- (void)_readBusinessIds {
    if (_flags.read_businessIds) return;
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    PBDataReader *reader = _reader;
    os_unfair_lock_unlock(&_readerLock);
    if (!reader) return;
    @synchronized(reader) {
        if (!_flags.read_businessIds) {
            static const uint32_t tags[] = {5, 0};
            GEORPProblemNotificationAvailabilityRequestReadSpecified(self, reader, tags);
        }
    }
}
- (NSUInteger)businessIdsCount
{
    [self _readBusinessIds];
    return _businessIds.count;
}
- (uint64_t *)businessIds
{
    [self _readBusinessIds];
    return _businessIds.list;
}
- (void)clearBusinessIds
{
    _flags.read_businessIds = 1;
    _flags.wrote_businessIds = 1;
    PBRepeatedUInt64Clear(&_businessIds);
}
- (void)addBusinessId:(uint64_t)i
{
    [self _readBusinessIds];
    [self _addNoFlagsBusinessId:i];
    _flags.read_businessIds = 1;
    _flags.wrote_businessIds = 1;
}
- (void)_addNoFlagsBusinessId:(uint64_t)i
{
    PBRepeatedUInt64Add(&_businessIds, i);
}
- (uint64_t)businessIdAtIndex:(NSUInteger)idx
{
    [self _readBusinessIds];
    if (_businessIds.count <= idx)
    {
        [[NSException exceptionWithName:NSRangeException reason:[NSString stringWithFormat:@"idx (%tu) is out of range (%tu)", idx, _businessIds.count] userInfo:nil] raise];
    }
    return _businessIds.list[idx];
}
- (void)setBusinessIds:(uint64_t *)list count:(NSUInteger)count
{
    _flags.read_businessIds = 1;
    _flags.wrote_businessIds = 1;
    PBRepeatedUInt64Set(&_businessIds, list, count);
}

- (GEORPPlaceType)placeType
{
    return _flags.has_placeType ? _placeType : GEORPPlaceType_PLACE_TYPE_UNKNOWN;
}
- (void)setPlaceType:(GEORPPlaceType)v
{
    _flags.wrote_placeType = 1;
    _flags.has_placeType = 1;
    _placeType = v;
}
- (void)setHasPlaceType:(BOOL)f
{
    _flags.wrote_placeType = 1;
    _flags.has_placeType = f ? 1 : 0;
}
- (BOOL)hasPlaceType
{
    return (BOOL)_flags.has_placeType;
}
- (NSString *)placeTypeAsString:(GEORPPlaceType)value
{
    return GEORPPlaceTypeAsString(value);
}
- (GEORPPlaceType)StringAsPlaceType:(NSString *)str
{
    return StringAsGEORPPlaceType(str);
}

- (GEORPPinType)pinType
{
    return _flags.has_pinType ? _pinType : GEORPPinType_PIN_TYPE_UNKNOWN;
}
- (void)setPinType:(GEORPPinType)v
{
    _flags.wrote_pinType = 1;
    _flags.has_pinType = 1;
    _pinType = v;
}
- (void)setHasPinType:(BOOL)f
{
    _flags.wrote_pinType = 1;
    _flags.has_pinType = f ? 1 : 0;
}
- (BOOL)hasPinType
{
    return (BOOL)_flags.has_pinType;
}
- (NSString *)pinTypeAsString:(GEORPPinType)value
{
    return GEORPPinTypeAsString(value);
}
- (GEORPPinType)StringAsPinType:(NSString *)str
{
    return StringAsGEORPPinType(str);
}


- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %@", [super description], [self dictionaryRepresentation]];
}

- (NSDictionary *)dictionaryRepresentation
{
    [self readAll:YES];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    if (self->_problemTypes.count > 0)
    {
        NSMutableArray *problemTypesValues = [NSMutableArray arrayWithCapacity:self->_problemTypes.count];
        for (NSUInteger i = 0; i < self->_problemTypes.count; i++)
        {
            [problemTypesValues addObject:GEORPProblemTypeAsString(self->_problemTypes.list[i])];
        }
        [dict setObject:problemTypesValues forKey:@"problem_type"];
    }

    {
        NSString * value = self.countryCode;
        if (value) {
            [dict setObject:value forKey:@"country_code"];
        }
    }

    {
        NSData * value = self.devicePushToken;
        if (value) {
            [dict setObject:value forKey:@"device_push_token"];
        }
    }

    {
        GEOClientCapabilities * value = self.clientCapabilities;
        if (value) {
            [dict setObject:[value dictionaryRepresentation] forKey:@"client_capabilities"];
        }
    }

    [dict setObject:PBRepeatedUInt64NSArray(&(self->_businessIds)) forKey:@"business_id"];

    if (self->_flags.has_placeType)
    {
        [dict setObject:GEORPPlaceTypeAsString(self->_placeType) forKey:@"place_type"];
    }

    if (self->_flags.has_pinType)
    {
        [dict setObject:GEORPPinTypeAsString(self->_pinType) forKey:@"pin_type"];
    }



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
        GEORPProblemNotificationAvailabilityRequestReadSpecified(self, reader, recursively ? recursiveTag : nonRecursiveTag);
    }
}
BOOL GEORPProblemNotificationAvailabilityRequestReadAllFrom(__unsafe_unretained GEORPProblemNotificationAvailabilityRequest *self, __unsafe_unretained PBDataReader *reader, BOOL recursively) {
    if (self->_readerMarkLength != 0) {
        [NSException raise:NSInvalidArgumentException format:@"GEORPProblemNotificationAvailabilityRequestReadAllFrom can only be called once per object"];
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
        BOOL result = GEORPProblemNotificationAvailabilityRequestReadSpecified(self, reader, recursively ? recursiveTag : initialTag);
        return result;
    }
}

BOOL GEORPProblemNotificationAvailabilityRequestReadFrom(__unsafe_unretained GEORPProblemNotificationAvailabilityRequest *self, __unsafe_unretained PBDataReader *reader) {
    @synchronized(reader) {
        return GEORPProblemNotificationAvailabilityRequestReadAllFrom(self, reader, NO);
    }
}

BOOL GEORPProblemNotificationAvailabilityRequestReadSpecified(__unsafe_unretained GEORPProblemNotificationAvailabilityRequest *self, __unsafe_unretained PBDataReader *reader, const uint32_t *tags) {
    if (reader == nil) {
        return NO;
    }
    reader->_length = (NSUInteger)self->_readerMarkLength;
    [reader seekToOffset:(NSUInteger)self->_readerMarkPos];
    uint32_t readLazyCount = 0
        + self->_flags.read_problemTypes
        + self->_flags.read_countryCode
        + self->_flags.read_devicePushToken
        + self->_flags.read_clientCapabilities
        + self->_flags.read_businessIds
        ;
    #define requiredLazyFieldCount 4 // objc_msg_parse_all_threshold = 0.8

    BOOL readAll = NO;
    __attribute__((unused)) BOOL recursively = NO;
    BOOL isInitial = NO;
    size_t tagsRemaining = 0;
    for (; tags[tagsRemaining] != 0; ++tagsRemaining) {
        switch (tags[tagsRemaining]) {
            case TAG_PARSE_ALL_RECURSIVE:
                recursively = YES;
                readAll = YES;
                break;
            case TAG_PARSE_ALL_NON_RECURSIVE:
                readAll = YES;
                break;
            case TAG_PARSE_INITIAL:
                isInitial = YES;
                break;
            default:
                ++readLazyCount;
                break;
            }
    }
    if (!readAll && readLazyCount >= requiredLazyFieldCount) {
        readAll = YES;
    }
    const BOOL stopWhenNoMoreTagsRemaining = !readAll;
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

            case 1 /* problemTypes */:
            {
                if (!shouldParseTag || self->_flags.read_problemTypes) {
                    if (!PBReaderSkipValueWithTag(reader, tag, aType))
                        return NO;
                    break;
                }
            if (TYPE_LENGTH_DELIMITED == aType)
                {
                    PBDataReaderMark mark_problemType;
                    BOOL markError = !PBReaderPlaceMark(reader, &mark_problemType);
                    if (markError)
                    {
                        return NO;
                    }
                    while (PBReaderHasMoreData(reader))
                    {
                        GEORPProblemType new_problemType = PBReaderReadInt32(reader);
                        PBRepeatedInt32Add(&(self->_problemTypes), new_problemType);
                    }
                    PBReaderRecallMark(reader, &mark_problemType);
                }
                else
                {
                    PBRepeatedInt32Add(&(self->_problemTypes), PBReaderReadInt32(reader));
                }

            }
            break;
            case 2 /* countryCode */:
            {
                if (!shouldParseTag || self->_flags.read_countryCode) {
                    if (!PBReaderSkipValueWithTag(reader, tag, aType))
                        return NO;
                    if (shouldParseTag && self->_flags.read_countryCode) {
                        --tagsRemaining;
                    }
                    break;
                }
                NSString * new_countryCode = PBReaderReadString(reader);
                self->_countryCode = new_countryCode;

                --tagsRemaining;
            }
            break;
            case 3 /* devicePushToken */:
            {
                if (!shouldParseTag || self->_flags.read_devicePushToken) {
                    if (!PBReaderSkipValueWithTag(reader, tag, aType))
                        return NO;
                    if (shouldParseTag && self->_flags.read_devicePushToken) {
                        --tagsRemaining;
                    }
                    break;
                }
                NSData * new_devicePushToken = PBReaderReadData(reader);
                self->_devicePushToken = new_devicePushToken;

                --tagsRemaining;
            }
            break;
            case 4 /* clientCapabilities */:
            {
                if (!shouldParseTag || self->_flags.read_clientCapabilities) {
                    if (!PBReaderSkipValueWithTag(reader, tag, aType))
                        return NO;
                    if (shouldParseTag && self->_flags.read_clientCapabilities) {
                        --tagsRemaining;
                    }
                    break;
                }
                GEOClientCapabilities *new_clientCapabilities = [[GEOClientCapabilities alloc] init];
                self->_clientCapabilities = new_clientCapabilities;
                PBDataReaderMark mark_clientCapabilities;
                BOOL markError = !PBReaderPlaceMark(reader, &mark_clientCapabilities);
                if (markError)
                {
                    return NO;
                }
                BOOL inError = !GEOClientCapabilitiesReadAllFrom(new_clientCapabilities, reader, recursively);
                if (inError)
                {
                    return NO;
                }
                PBReaderRecallMark(reader, &mark_clientCapabilities);

                --tagsRemaining;
            }
            break;
            case 5 /* businessIds */:
            {
                if (!shouldParseTag || self->_flags.read_businessIds) {
                    if (!PBReaderSkipValueWithTag(reader, tag, aType))
                        return NO;
                    break;
                }
            if (TYPE_LENGTH_DELIMITED == aType)
                {
                    PBDataReaderMark mark_businessId;
                    BOOL markError = !PBReaderPlaceMark(reader, &mark_businessId);
                    if (markError)
                    {
                        return NO;
                    }
                    while (PBReaderHasMoreData(reader))
                    {
                        uint64_t new_businessId = PBReaderReadUint64(reader);
                        PBRepeatedUInt64Add(&(self->_businessIds), new_businessId);
                    }
                    PBReaderRecallMark(reader, &mark_businessId);
                }
                else
                {
                    PBRepeatedUInt64Add(&(self->_businessIds), PBReaderReadUint64(reader));
                }

            }
            break;
            case 6 /* placeType */:
            {
                if (!isInitial) {
                    if (!PBReaderSkipValueWithTag(reader, tag, aType))
                        return NO;
                    break;
                }
                self->_flags.has_placeType = YES;
                self->_placeType = PBReaderReadInt32(reader);

            }
            break;
            case 7 /* pinType */:
            {
                if (!isInitial) {
                    if (!PBReaderSkipValueWithTag(reader, tag, aType))
                        return NO;
                    break;
                }
                self->_flags.has_pinType = YES;
                self->_pinType = PBReaderReadInt32(reader);

            }
            break;
            default:
                if (!PBReaderSkipValueWithTag(reader, tag, aType))
                    return NO;
                break;
        }
        if (stopWhenNoMoreTagsRemaining && tagsRemaining == 0) {
            break;
        }
    }


    if (readAll) {
        if (recursively) {
            [self->_clientCapabilities readAll:YES];
        }
        self->_flags.read_problemTypes = YES;
        self->_flags.read_countryCode = YES;
        self->_flags.read_devicePushToken = YES;
        self->_flags.read_clientCapabilities = YES;
        self->_flags.read_businessIds = YES;
    } else {
        for (size_t i = 0; tags != NULL && tags[i] != 0; ++i) {
            switch (tags[i]) {
                case 1 /* problemTypes */:
                    self->_flags.read_problemTypes = YES;
                    break;
                case 2 /* countryCode */:
                    self->_flags.read_countryCode = YES;
                    break;
                case 3 /* devicePushToken */:
                    self->_flags.read_devicePushToken = YES;
                    break;
                case 4 /* clientCapabilities */:
                    self->_flags.read_clientCapabilities = YES;
                    break;
                case 5 /* businessIds */:
                    self->_flags.read_businessIds = YES;
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
    return GEORPProblemNotificationAvailabilityRequestIsValid(reader);
}

BOOL GEORPProblemNotificationAvailabilityRequestIsValid(__unsafe_unretained PBDataReader *reader) {
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

            case 1 /* problemTypes */:
                if (TYPE_LENGTH_DELIMITED == aType)
                {
                    PBDataReaderMark mark_problemType;
                    if (!PBReaderPlaceMark(reader, &mark_problemType))
                        returnValue(NO);
                    while (PBReaderHasMoreData(reader))
                        PBReaderReadInt32(reader);
                    PBReaderRecallMark(reader, &mark_problemType);
                }
                else if (TYPE_VARINT != aType)
                    returnValue(NO);
                else
                    PBReaderReadInt32(reader);
                break;
            case 2 /* countryCode */:
                if (TYPE_LENGTH_DELIMITED != aType)
                    returnValue(NO);
                if (!PBReaderSkipValueWithTag(reader, tag, aType))
                    returnValue(NO);
                break;
                break;
            case 3 /* devicePushToken */:
                if (TYPE_LENGTH_DELIMITED != aType)
                    returnValue(NO);
                if (!PBReaderSkipValueWithTag(reader, tag, aType))
                    returnValue(NO);
                break;
                break;
            case 4 /* clientCapabilities */:
                if (TYPE_LENGTH_DELIMITED != aType)
                    returnValue(NO);
                {
                    PBDataReaderMark mark_clientCapabilities;
                    if (!PBReaderPlaceMark(reader, &mark_clientCapabilities))
                        returnValue(NO);
                    if (!GEOClientCapabilitiesIsValid(reader))
                        returnValue(NO);
                    PBReaderRecallMark(reader, &mark_clientCapabilities);
                }
                break;
            case 5 /* businessIds */:
                if (TYPE_LENGTH_DELIMITED == aType)
                {
                    PBDataReaderMark mark_businessId;
                    if (!PBReaderPlaceMark(reader, &mark_businessId))
                        returnValue(NO);
                    while (PBReaderHasMoreData(reader))
                        PBReaderReadUint64(reader);
                    PBReaderRecallMark(reader, &mark_businessId);
                }
                else if (TYPE_VARINT != aType)
                    returnValue(NO);
                else
                    PBReaderReadUint64(reader);
                break;
            case 6 /* placeType */:
                if (TYPE_VARINT != aType)
                    returnValue(NO);
                PBReaderReadInt32(reader);
                break;
            case 7 /* pinType */:
                if (TYPE_VARINT != aType)
                    returnValue(NO);
                PBReaderReadInt32(reader);
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
    return GEORPProblemNotificationAvailabilityRequestReadAllFrom(self, reader, NO);
}

- (void)writeTo:(PBDataWriter *)writer
{
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    PBDataReader *reader = _reader;
    os_unfair_lock_unlock(&_readerLock);
    @synchronized(reader) {
        if (reader) {
            if (!GEORPProblemNotificationAvailabilityRequestIsDirty(self)) {
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

    /* problemTypes */
    {
        if (self->_problemTypes.count)
        {
            NSUInteger i_problemTypes;
            for (i_problemTypes = 0; i_problemTypes < self->_problemTypes.count; i_problemTypes++)
            {
                PBDataWriterWriteInt32Field(writer, self->_problemTypes.list[i_problemTypes], 1);
            }
        }

    }

    /* countryCode */
    {
        if (self->_countryCode)
        {
            PBDataWriterWriteStringField(writer, self->_countryCode, 2);
        }
    }

    /* devicePushToken */
    {
        if (self->_devicePushToken)
        {
            PBDataWriterWriteDataField(writer, self->_devicePushToken, 3);
        }
    }

    /* clientCapabilities */
    {
        if (self->_clientCapabilities != nil)
        {
            PBDataWriterWriteSubmessage(writer, self->_clientCapabilities, 4);
        }
    }

    /* businessIds */
    {
        if (self->_businessIds.count)
        {
            NSUInteger i_businessIds;
            for (i_businessIds = 0; i_businessIds < self->_businessIds.count; i_businessIds++)
            {
                PBDataWriterWriteUint64Field(writer, self->_businessIds.list[i_businessIds], 5);
            }
        }

    }

    /* placeType */
    {
        if (self->_flags.has_placeType)
        {
            PBDataWriterWriteInt32Field(writer, self->_placeType, 6);
        }
    }

    /* pinType */
    {
        if (self->_flags.has_pinType)
        {
            PBDataWriterWriteInt32Field(writer, self->_pinType, 7);
        }
    }
}

BOOL GEORPProblemNotificationAvailabilityRequestIsDirty(__unsafe_unretained GEORPProblemNotificationAvailabilityRequest *self)
{
    if (self == nil) {
        return NO;
    }
    
    BOOL dirty = NO
        || self->_flags.wrote_problemTypes
        || self->_flags.read_problemTypes
        || self->_flags.wrote_countryCode
        || self->_flags.read_countryCode
        || self->_flags.wrote_devicePushToken
        || self->_flags.read_devicePushToken
        || self->_flags.wrote_clientCapabilities
        || (self->_flags.read_clientCapabilities && GEOClientCapabilitiesIsDirty(self->_clientCapabilities))
        || self->_flags.wrote_businessIds
        || self->_flags.read_businessIds
        || self->_flags.wrote_placeType
        || self->_flags.wrote_pinType
    ;


    return dirty;
}


- (uint32_t)requestTypeCode
{
    return 1011;
}

- (Class)responseClass
{
    return [GEORPProblemNotificationAvailabilityResponse class];
}

- (void)copyTo:(GEORPProblemNotificationAvailabilityRequest *)other
{
    [self readAll:NO];
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    other->_reader = _reader;
    other->_readerMarkPos = _readerMarkPos;
    other->_readerMarkLength = _readerMarkLength;
    os_unfair_lock_unlock(&_readerLock);
    if ([self problemTypesCount])
    {
        [other clearProblemTypes];
        NSUInteger problemTypesCnt = [self problemTypesCount];
        for (NSUInteger i = 0; i < problemTypesCnt; i++)
        {
            [other addProblemType:[self problemTypeAtIndex:i]];
        }
    }
    if (_countryCode)
    {
        other.countryCode = _countryCode;
    }
    if (_devicePushToken)
    {
        other.devicePushToken = _devicePushToken;
    }
    if (_clientCapabilities)
    {
        other.clientCapabilities = _clientCapabilities;
    }
    if ([self businessIdsCount])
    {
        [other clearBusinessIds];
        NSUInteger businessIdsCnt = [self businessIdsCount];
        for (NSUInteger i = 0; i < businessIdsCnt; i++)
        {
            [other addBusinessId:[self businessIdAtIndex:i]];
        }
    }
    if (self->_flags.has_placeType)
    {
        other->_placeType = _placeType;
        other->_flags.has_placeType = YES;
    }
    if (self->_flags.has_pinType)
    {
        other->_pinType = _pinType;
        other->_flags.has_pinType = YES;
    }
}

- (id)copyWithZone:(NSZone *)zone
{
    GEORPProblemNotificationAvailabilityRequest *copy = [[[self class] allocWithZone:zone] init];
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    PBDataReader *reader = _reader;
    os_unfair_lock_unlock(&_readerLock);
    @synchronized(reader) {
        if (reader) {
            BOOL wroteAny = NO
                || _flags.wrote_problemTypes
                || _flags.wrote_countryCode
                || _flags.wrote_devicePushToken
                || _flags.wrote_clientCapabilities
                || _flags.wrote_businessIds
                || _flags.wrote_placeType
                || _flags.wrote_pinType
            ;
            if (!wroteAny) {
                reader->_length = (NSUInteger)_readerMarkLength;
                [reader seekToOffset:(NSUInteger)_readerMarkPos];
                GEORPProblemNotificationAvailabilityRequestReadAllFrom(copy, reader, NO);
                return copy;
            }
            [self readAll:NO];
        }
    }
    PBRepeatedInt32Copy(&(copy->_problemTypes), &_problemTypes);
    copy->_countryCode = [_countryCode copyWithZone:zone];
    copy->_devicePushToken = [_devicePushToken copyWithZone:zone];
    copy->_clientCapabilities = [_clientCapabilities copyWithZone:zone];
    PBRepeatedUInt64Copy(&(copy->_businessIds), &_businessIds);
    if (self->_flags.has_placeType)
    {
        copy->_placeType = _placeType;
        copy->_flags.has_placeType = YES;
    }
    if (self->_flags.has_pinType)
    {
        copy->_pinType = _pinType;
        copy->_flags.has_pinType = YES;
    }
    return copy;
}


- (BOOL)isEqual:(id)object
{
    GEORPProblemNotificationAvailabilityRequest *other = (GEORPProblemNotificationAvailabilityRequest *)object;
    if (![other isMemberOfClass:[self class]]) {
        return NO;
    }
    [self readAll:YES];
    [other readAll:YES];


    return YES
    &&
    PBRepeatedInt32IsEqual(&(self->_problemTypes), &(other->_problemTypes))

    &&
    ((!self->_countryCode && !other->_countryCode) || [self->_countryCode isEqual:other->_countryCode])
    &&
    ((!self->_devicePushToken && !other->_devicePushToken) || [self->_devicePushToken isEqual:other->_devicePushToken])
    &&
    ((!self->_clientCapabilities && !other->_clientCapabilities) || [self->_clientCapabilities isEqual:other->_clientCapabilities])
    &&
    PBRepeatedUInt64IsEqual(&(self->_businessIds), &(other->_businessIds))

    &&
    ((self->_flags.has_placeType && other->_flags.has_placeType && self->_placeType == other->_placeType) || (!self->_flags.has_placeType && !other->_flags.has_placeType))
    &&
    ((self->_flags.has_pinType && other->_flags.has_pinType && self->_pinType == other->_pinType) || (!self->_flags.has_pinType && !other->_flags.has_pinType))
    ;
}

- (NSUInteger)hash
{
    [self readAll:YES];
    NSUInteger value = 0;

    return value
    ^
    PBRepeatedInt32Hash(&(self->_problemTypes))
    ^
    [self->_countryCode hash]
    ^
    [self->_devicePushToken hash]
    ^
    [self->_clientCapabilities hash]
    ^
    PBRepeatedUInt64Hash(&(self->_businessIds))
    ^
    (self->_flags.has_placeType ? PBHashInt((NSUInteger)self->_placeType) : 0)
    ^
    (self->_flags.has_pinType ? PBHashInt((NSUInteger)self->_pinType) : 0)
    ;
}

- (void)mergeFrom:(GEORPProblemNotificationAvailabilityRequest *)other
{
    [other readAll:NO];
    NSUInteger problemTypesCnt = [other problemTypesCount];
    for (NSUInteger i = 0; i < problemTypesCnt; i++)
    {
        [self addProblemType:[other problemTypeAtIndex:i]];
    }
    if (other->_countryCode)
    {
        [self setCountryCode:other->_countryCode];
    }
    if (other->_devicePushToken)
    {
        [self setDevicePushToken:other->_devicePushToken];
    }
    if (self->_clientCapabilities && other->_clientCapabilities)
    {
        [self->_clientCapabilities mergeFrom:other->_clientCapabilities];
    }
    else if (!self->_clientCapabilities && other->_clientCapabilities)
    {
        [self setClientCapabilities:other->_clientCapabilities];
    }
    NSUInteger businessIdsCnt = [other businessIdsCount];
    for (NSUInteger i = 0; i < businessIdsCnt; i++)
    {
        [self addBusinessId:[other businessIdAtIndex:i]];
    }
    if (other->_flags.has_placeType)
    {
        self->_placeType = other->_placeType;
        self->_flags.has_placeType = 1;
    }
    if (other->_flags.has_pinType)
    {
        self->_pinType = other->_pinType;
        self->_flags.has_pinType = 1;
    }
}


@end



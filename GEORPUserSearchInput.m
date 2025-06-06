// This file was automatically generated by gyb
// DO NOT EDIT!
// Compiled from reportaproblem.proto

#import "GEORPUserSearchInput.h"
#import <ProtocolBuffer/PBConstants.h>
#import <ProtocolBuffer/PBHashUtil.h>
#import <ProtocolBuffer/PBDataReader.h>
#import <os/lock_private.h>

#import <GeoServices/GEOLatLng.h>
#import <GeoServices/GEOPDAutocompleteEntry.h>
#import <GeoServices/GEOPDPlace.h>

#if !__has_feature(objc_arc)
# error This generated file depends on ARC but it is not enabled
#endif

@implementation GEORPUserSearchInput

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

- (void)_readSearchString {
    if (_flags.read_searchString) return;
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    PBDataReader *reader = _reader;
    os_unfair_lock_unlock(&_readerLock);
    if (!reader) return;
    @synchronized(reader) {
        if (!_flags.read_searchString) {
            static const uint32_t tags[] = {1, 0};
            GEORPUserSearchInputReadSpecified(self, reader, tags);
        }
    }
}
- (BOOL)hasSearchString
{
    [self _readSearchString];
    return _searchString != nil;
}
- (NSString *)searchString
{
    [self _readSearchString];
    return _searchString;
}
- (void)setSearchString:(NSString *)v
{
    _flags.read_searchString = 1;
    _flags.wrote_searchString = 1;
    _searchString = v;
}

- (void)_readSingleLineAddressString {
    if (_flags.read_singleLineAddressString) return;
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    PBDataReader *reader = _reader;
    os_unfair_lock_unlock(&_readerLock);
    if (!reader) return;
    @synchronized(reader) {
        if (!_flags.read_singleLineAddressString) {
            static const uint32_t tags[] = {2, 0};
            GEORPUserSearchInputReadSpecified(self, reader, tags);
        }
    }
}
- (BOOL)hasSingleLineAddressString
{
    [self _readSingleLineAddressString];
    return _singleLineAddressString != nil;
}
- (NSString *)singleLineAddressString
{
    [self _readSingleLineAddressString];
    return _singleLineAddressString;
}
- (void)setSingleLineAddressString:(NSString *)v
{
    _flags.read_singleLineAddressString = 1;
    _flags.wrote_singleLineAddressString = 1;
    _singleLineAddressString = v;
}

- (void)_readPlace {
    if (_flags.read_place) return;
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    PBDataReader *reader = _reader;
    os_unfair_lock_unlock(&_readerLock);
    if (!reader) return;
    @synchronized(reader) {
        if (!_flags.read_place) {
            static const uint32_t tags[] = {3, 0};
            GEORPUserSearchInputReadSpecified(self, reader, tags);
        }
    }
}
- (BOOL)hasPlace
{
    [self _readPlace];
    return _place != nil;
}
- (GEOPDPlace *)place
{
    [self _readPlace];
    return _place;
}
- (void)setPlace:(GEOPDPlace *)v
{
    _flags.read_place = 1;
    _flags.wrote_place = 1;
    _place = v;
}

- (void)_readAutocompleteEntry {
    if (_flags.read_autocompleteEntry) return;
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    PBDataReader *reader = _reader;
    os_unfair_lock_unlock(&_readerLock);
    if (!reader) return;
    @synchronized(reader) {
        if (!_flags.read_autocompleteEntry) {
            static const uint32_t tags[] = {4, 0};
            GEORPUserSearchInputReadSpecified(self, reader, tags);
        }
    }
}
- (BOOL)hasAutocompleteEntry
{
    [self _readAutocompleteEntry];
    return _autocompleteEntry != nil;
}
- (GEOPDAutocompleteEntry *)autocompleteEntry
{
    [self _readAutocompleteEntry];
    return _autocompleteEntry;
}
- (void)setAutocompleteEntry:(GEOPDAutocompleteEntry *)v
{
    _flags.read_autocompleteEntry = 1;
    _flags.wrote_autocompleteEntry = 1;
    _autocompleteEntry = v;
}

- (void)_readCoordinate {
    if (_flags.read_coordinate) return;
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    PBDataReader *reader = _reader;
    os_unfair_lock_unlock(&_readerLock);
    if (!reader) return;
    @synchronized(reader) {
        if (!_flags.read_coordinate) {
            static const uint32_t tags[] = {5, 0};
            GEORPUserSearchInputReadSpecified(self, reader, tags);
        }
    }
}
- (BOOL)hasCoordinate
{
    [self _readCoordinate];
    return _coordinate != nil;
}
- (GEOLatLng *)coordinate
{
    [self _readCoordinate];
    return _coordinate;
}
- (void)setCoordinate:(GEOLatLng *)v
{
    _flags.read_coordinate = 1;
    _flags.wrote_coordinate = 1;
    _coordinate = v;
}

- (GEORPUserSearchInput_Origin)origin
{
    return _flags.has_origin ? _origin : GEORPUserSearchInput_Origin_OTHER;
}
- (void)setOrigin:(GEORPUserSearchInput_Origin)v
{
    _flags.wrote_origin = 1;
    _flags.has_origin = 1;
    _origin = v;
}
- (void)setHasOrigin:(BOOL)f
{
    _flags.wrote_origin = 1;
    _flags.has_origin = f ? 1 : 0;
}
- (BOOL)hasOrigin
{
    return (BOOL)_flags.has_origin;
}
- (NSString *)originAsString:(GEORPUserSearchInput_Origin)value
{
    return GEORPUserSearchInput_OriginAsString(value);
}
- (GEORPUserSearchInput_Origin)StringAsOrigin:(NSString *)str
{
    return StringAsGEORPUserSearchInput_Origin(str);
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
        NSString * value = self.searchString;
        if (value) {
            [dict setObject:value forKey:@"search_string"];
        }
    }

    {
        NSString * value = self.singleLineAddressString;
        if (value) {
            [dict setObject:value forKey:@"single_line_address_string"];
        }
    }

    {
        GEOPDPlace * value = self.place;
        if (value) {
            [dict setObject:[value dictionaryRepresentation] forKey:@"place"];
        }
    }

    {
        GEOPDAutocompleteEntry * value = self.autocompleteEntry;
        if (value) {
            [dict setObject:[value dictionaryRepresentation] forKey:@"autocomplete_entry"];
        }
    }

    {
        GEOLatLng * value = self.coordinate;
        if (value) {
            [dict setObject:[value dictionaryRepresentation] forKey:@"coordinate"];
        }
    }

    if (self->_flags.has_origin)
    {
        [dict setObject:GEORPUserSearchInput_OriginAsString(self->_origin) forKey:@"origin"];
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
        GEORPUserSearchInputReadSpecified(self, reader, recursively ? recursiveTag : nonRecursiveTag);
    }
}
BOOL GEORPUserSearchInputReadAllFrom(__unsafe_unretained GEORPUserSearchInput *self, __unsafe_unretained PBDataReader *reader, BOOL recursively) {
    if (self->_readerMarkLength != 0) {
        [NSException raise:NSInvalidArgumentException format:@"GEORPUserSearchInputReadAllFrom can only be called once per object"];
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
        BOOL result = GEORPUserSearchInputReadSpecified(self, reader, recursively ? recursiveTag : initialTag);
        return result;
    }
}

BOOL GEORPUserSearchInputReadFrom(__unsafe_unretained GEORPUserSearchInput *self, __unsafe_unretained PBDataReader *reader) {
    @synchronized(reader) {
        return GEORPUserSearchInputReadAllFrom(self, reader, NO);
    }
}

BOOL GEORPUserSearchInputReadSpecified(__unsafe_unretained GEORPUserSearchInput *self, __unsafe_unretained PBDataReader *reader, const uint32_t *tags) {
    if (reader == nil) {
        return NO;
    }
    reader->_length = (NSUInteger)self->_readerMarkLength;
    [reader seekToOffset:(NSUInteger)self->_readerMarkPos];
    uint32_t readLazyCount = 0
        + self->_flags.read_searchString
        + self->_flags.read_singleLineAddressString
        + self->_flags.read_place
        + self->_flags.read_autocompleteEntry
        + self->_flags.read_coordinate
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

            case 1 /* searchString */:
            {
                if (!shouldParseTag || self->_flags.read_searchString) {
                    if (!PBReaderSkipValueWithTag(reader, tag, aType))
                        return NO;
                    if (shouldParseTag && self->_flags.read_searchString) {
                        --tagsRemaining;
                    }
                    break;
                }
                NSString * new_searchString = PBReaderReadString(reader);
                self->_searchString = new_searchString;

                --tagsRemaining;
            }
            break;
            case 2 /* singleLineAddressString */:
            {
                if (!shouldParseTag || self->_flags.read_singleLineAddressString) {
                    if (!PBReaderSkipValueWithTag(reader, tag, aType))
                        return NO;
                    if (shouldParseTag && self->_flags.read_singleLineAddressString) {
                        --tagsRemaining;
                    }
                    break;
                }
                NSString * new_singleLineAddressString = PBReaderReadString(reader);
                self->_singleLineAddressString = new_singleLineAddressString;

                --tagsRemaining;
            }
            break;
            case 3 /* place */:
            {
                if (!shouldParseTag || self->_flags.read_place) {
                    if (!PBReaderSkipValueWithTag(reader, tag, aType))
                        return NO;
                    if (shouldParseTag && self->_flags.read_place) {
                        --tagsRemaining;
                    }
                    break;
                }
                GEOPDPlace *new_place = [[GEOPDPlace alloc] init];
                self->_place = new_place;
                PBDataReaderMark mark_place;
                BOOL markError = !PBReaderPlaceMark(reader, &mark_place);
                if (markError)
                {
                    return NO;
                }
                BOOL inError = !GEOPDPlaceReadAllFrom(new_place, reader, recursively);
                if (inError)
                {
                    return NO;
                }
                PBReaderRecallMark(reader, &mark_place);

                --tagsRemaining;
            }
            break;
            case 4 /* autocompleteEntry */:
            {
                if (!shouldParseTag || self->_flags.read_autocompleteEntry) {
                    if (!PBReaderSkipValueWithTag(reader, tag, aType))
                        return NO;
                    if (shouldParseTag && self->_flags.read_autocompleteEntry) {
                        --tagsRemaining;
                    }
                    break;
                }
                GEOPDAutocompleteEntry *new_autocompleteEntry = [[GEOPDAutocompleteEntry alloc] init];
                self->_autocompleteEntry = new_autocompleteEntry;
                PBDataReaderMark mark_autocompleteEntry;
                BOOL markError = !PBReaderPlaceMark(reader, &mark_autocompleteEntry);
                if (markError)
                {
                    return NO;
                }
                BOOL inError = !GEOPDAutocompleteEntryReadAllFrom(new_autocompleteEntry, reader, recursively);
                if (inError)
                {
                    return NO;
                }
                PBReaderRecallMark(reader, &mark_autocompleteEntry);

                --tagsRemaining;
            }
            break;
            case 5 /* coordinate */:
            {
                if (!shouldParseTag || self->_flags.read_coordinate) {
                    if (!PBReaderSkipValueWithTag(reader, tag, aType))
                        return NO;
                    if (shouldParseTag && self->_flags.read_coordinate) {
                        --tagsRemaining;
                    }
                    break;
                }
                GEOLatLng *new_coordinate = [[GEOLatLng alloc] init];
                self->_coordinate = new_coordinate;
                PBDataReaderMark mark_coordinate;
                BOOL markError = !PBReaderPlaceMark(reader, &mark_coordinate);
                if (markError)
                {
                    return NO;
                }
                BOOL inError = !GEOLatLngReadAllFrom(new_coordinate, reader, recursively);
                if (inError)
                {
                    return NO;
                }
                PBReaderRecallMark(reader, &mark_coordinate);

                --tagsRemaining;
            }
            break;
            case 6 /* origin */:
            {
                if (!isInitial) {
                    if (!PBReaderSkipValueWithTag(reader, tag, aType))
                        return NO;
                    break;
                }
                self->_flags.has_origin = YES;
                self->_origin = PBReaderReadInt32(reader);

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
            [self->_place readAll:YES];
            [self->_autocompleteEntry readAll:YES];
            [self->_coordinate readAll:YES];
        }
        self->_flags.read_searchString = YES;
        self->_flags.read_singleLineAddressString = YES;
        self->_flags.read_place = YES;
        self->_flags.read_autocompleteEntry = YES;
        self->_flags.read_coordinate = YES;
    } else {
        for (size_t i = 0; tags != NULL && tags[i] != 0; ++i) {
            switch (tags[i]) {
                case 1 /* searchString */:
                    self->_flags.read_searchString = YES;
                    break;
                case 2 /* singleLineAddressString */:
                    self->_flags.read_singleLineAddressString = YES;
                    break;
                case 3 /* place */:
                    self->_flags.read_place = YES;
                    break;
                case 4 /* autocompleteEntry */:
                    self->_flags.read_autocompleteEntry = YES;
                    break;
                case 5 /* coordinate */:
                    self->_flags.read_coordinate = YES;
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
    return GEORPUserSearchInputIsValid(reader);
}

BOOL GEORPUserSearchInputIsValid(__unsafe_unretained PBDataReader *reader) {
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

            case 1 /* searchString */:
                if (TYPE_LENGTH_DELIMITED != aType)
                    returnValue(NO);
                if (!PBReaderSkipValueWithTag(reader, tag, aType))
                    returnValue(NO);
                break;
                break;
            case 2 /* singleLineAddressString */:
                if (TYPE_LENGTH_DELIMITED != aType)
                    returnValue(NO);
                if (!PBReaderSkipValueWithTag(reader, tag, aType))
                    returnValue(NO);
                break;
                break;
            case 3 /* place */:
                if (TYPE_LENGTH_DELIMITED != aType)
                    returnValue(NO);
                {
                    PBDataReaderMark mark_place;
                    if (!PBReaderPlaceMark(reader, &mark_place))
                        returnValue(NO);
                    if (!GEOPDPlaceIsValid(reader))
                        returnValue(NO);
                    PBReaderRecallMark(reader, &mark_place);
                }
                break;
            case 4 /* autocompleteEntry */:
                if (TYPE_LENGTH_DELIMITED != aType)
                    returnValue(NO);
                {
                    PBDataReaderMark mark_autocompleteEntry;
                    if (!PBReaderPlaceMark(reader, &mark_autocompleteEntry))
                        returnValue(NO);
                    if (!GEOPDAutocompleteEntryIsValid(reader))
                        returnValue(NO);
                    PBReaderRecallMark(reader, &mark_autocompleteEntry);
                }
                break;
            case 5 /* coordinate */:
                if (TYPE_LENGTH_DELIMITED != aType)
                    returnValue(NO);
                {
                    PBDataReaderMark mark_coordinate;
                    if (!PBReaderPlaceMark(reader, &mark_coordinate))
                        returnValue(NO);
                    if (!GEOLatLngIsValid(reader))
                        returnValue(NO);
                    PBReaderRecallMark(reader, &mark_coordinate);
                }
                break;
            case 6 /* origin */:
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
    return GEORPUserSearchInputReadAllFrom(self, reader, NO);
}

- (void)writeTo:(PBDataWriter *)writer
{
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    PBDataReader *reader = _reader;
    os_unfair_lock_unlock(&_readerLock);
    @synchronized(reader) {
        if (reader) {
            if (!GEORPUserSearchInputIsDirty(self)) {
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

    /* searchString */
    {
        if (self->_searchString)
        {
            PBDataWriterWriteStringField(writer, self->_searchString, 1);
        }
    }

    /* singleLineAddressString */
    {
        if (self->_singleLineAddressString)
        {
            PBDataWriterWriteStringField(writer, self->_singleLineAddressString, 2);
        }
    }

    /* place */
    {
        if (self->_place != nil)
        {
            PBDataWriterWriteSubmessage(writer, self->_place, 3);
        }
    }

    /* autocompleteEntry */
    {
        if (self->_autocompleteEntry != nil)
        {
            PBDataWriterWriteSubmessage(writer, self->_autocompleteEntry, 4);
        }
    }

    /* coordinate */
    {
        if (self->_coordinate != nil)
        {
            PBDataWriterWriteSubmessage(writer, self->_coordinate, 5);
        }
    }

    /* origin */
    {
        if (self->_flags.has_origin)
        {
            PBDataWriterWriteInt32Field(writer, self->_origin, 6);
        }
    }
}

BOOL GEORPUserSearchInputIsDirty(__unsafe_unretained GEORPUserSearchInput *self)
{
    if (self == nil) {
        return NO;
    }
    
    BOOL dirty = NO
        || self->_flags.wrote_searchString
        || self->_flags.read_searchString
        || self->_flags.wrote_singleLineAddressString
        || self->_flags.read_singleLineAddressString
        || self->_flags.wrote_place
        || (self->_flags.read_place && GEOPDPlaceIsDirty(self->_place))
        || self->_flags.wrote_autocompleteEntry
        || (self->_flags.read_autocompleteEntry && GEOPDAutocompleteEntryIsDirty(self->_autocompleteEntry))
        || self->_flags.wrote_coordinate
        || self->_flags.read_coordinate
        || self->_flags.wrote_origin
    ;


    return dirty;
}


- (void)copyTo:(GEORPUserSearchInput *)other
{
    [self readAll:NO];
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    other->_reader = _reader;
    other->_readerMarkPos = _readerMarkPos;
    other->_readerMarkLength = _readerMarkLength;
    os_unfair_lock_unlock(&_readerLock);
    if (_searchString)
    {
        other.searchString = _searchString;
    }
    if (_singleLineAddressString)
    {
        other.singleLineAddressString = _singleLineAddressString;
    }
    if (_place)
    {
        other.place = _place;
    }
    if (_autocompleteEntry)
    {
        other.autocompleteEntry = _autocompleteEntry;
    }
    if (_coordinate)
    {
        other.coordinate = _coordinate;
    }
    if (self->_flags.has_origin)
    {
        other->_origin = _origin;
        other->_flags.has_origin = YES;
    }
}

- (id)copyWithZone:(NSZone *)zone
{
    GEORPUserSearchInput *copy = [[[self class] allocWithZone:zone] init];
    os_unfair_lock_lock_with_options(&_readerLock, OS_UNFAIR_LOCK_DATA_SYNCHRONIZATION);
    PBDataReader *reader = _reader;
    os_unfair_lock_unlock(&_readerLock);
    @synchronized(reader) {
        if (reader) {
            BOOL wroteAny = NO
                || _flags.wrote_searchString
                || _flags.wrote_singleLineAddressString
                || _flags.wrote_place
                || _flags.wrote_autocompleteEntry
                || _flags.wrote_coordinate
                || _flags.wrote_origin
            ;
            if (!wroteAny) {
                reader->_length = (NSUInteger)_readerMarkLength;
                [reader seekToOffset:(NSUInteger)_readerMarkPos];
                GEORPUserSearchInputReadAllFrom(copy, reader, NO);
                return copy;
            }
            [self readAll:NO];
        }
    }
    copy->_searchString = [_searchString copyWithZone:zone];
    copy->_singleLineAddressString = [_singleLineAddressString copyWithZone:zone];
    copy->_place = [_place copyWithZone:zone];
    copy->_autocompleteEntry = [_autocompleteEntry copyWithZone:zone];
    copy->_coordinate = [_coordinate copyWithZone:zone];
    if (self->_flags.has_origin)
    {
        copy->_origin = _origin;
        copy->_flags.has_origin = YES;
    }
    return copy;
}


- (BOOL)isEqual:(id)object
{
    GEORPUserSearchInput *other = (GEORPUserSearchInput *)object;
    if (![other isMemberOfClass:[self class]]) {
        return NO;
    }
    [self readAll:YES];
    [other readAll:YES];


    return YES
    &&
    ((!self->_searchString && !other->_searchString) || [self->_searchString isEqual:other->_searchString])
    &&
    ((!self->_singleLineAddressString && !other->_singleLineAddressString) || [self->_singleLineAddressString isEqual:other->_singleLineAddressString])
    &&
    ((!self->_place && !other->_place) || [self->_place isEqual:other->_place])
    &&
    ((!self->_autocompleteEntry && !other->_autocompleteEntry) || [self->_autocompleteEntry isEqual:other->_autocompleteEntry])
    &&
    ((!self->_coordinate && !other->_coordinate) || [self->_coordinate isEqual:other->_coordinate])
    &&
    ((self->_flags.has_origin && other->_flags.has_origin && self->_origin == other->_origin) || (!self->_flags.has_origin && !other->_flags.has_origin))
    ;
}

- (NSUInteger)hash
{
    [self readAll:YES];
    NSUInteger value = 0;

    return value
    ^
    [self->_searchString hash]
    ^
    [self->_singleLineAddressString hash]
    ^
    [self->_place hash]
    ^
    [self->_autocompleteEntry hash]
    ^
    [self->_coordinate hash]
    ^
    (self->_flags.has_origin ? PBHashInt((NSUInteger)self->_origin) : 0)
    ;
}

- (void)mergeFrom:(GEORPUserSearchInput *)other
{
    [other readAll:NO];
    if (other->_searchString)
    {
        [self setSearchString:other->_searchString];
    }
    if (other->_singleLineAddressString)
    {
        [self setSingleLineAddressString:other->_singleLineAddressString];
    }
    if (self->_place && other->_place)
    {
        [self->_place mergeFrom:other->_place];
    }
    else if (!self->_place && other->_place)
    {
        [self setPlace:other->_place];
    }
    if (self->_autocompleteEntry && other->_autocompleteEntry)
    {
        [self->_autocompleteEntry mergeFrom:other->_autocompleteEntry];
    }
    else if (!self->_autocompleteEntry && other->_autocompleteEntry)
    {
        [self setAutocompleteEntry:other->_autocompleteEntry];
    }
    if (self->_coordinate && other->_coordinate)
    {
        [self->_coordinate mergeFrom:other->_coordinate];
    }
    else if (!self->_coordinate && other->_coordinate)
    {
        [self setCoordinate:other->_coordinate];
    }
    if (other->_flags.has_origin)
    {
        self->_origin = other->_origin;
        self->_flags.has_origin = 1;
    }
}


@end



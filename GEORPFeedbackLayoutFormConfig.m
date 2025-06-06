// This file was automatically generated by gyb
// DO NOT EDIT!
// Compiled from community_feedback.proto

#import "GEORPFeedbackLayoutFormConfig.h"
#import <ProtocolBuffer/PBConstants.h>
#import <ProtocolBuffer/PBHashUtil.h>
#import <ProtocolBuffer/PBDataReader.h>

#import <GeoServices/GEORPLayoutField.h>

#if !__has_feature(objc_arc)
# error This generated file depends on ARC but it is not enabled
#endif

@implementation GEORPFeedbackLayoutFormConfig


- (uint32_t)ttl
{
    return _ttl;
}
- (void)setTtl:(uint32_t)v
{
    _flags.has_ttl = 1;
    _ttl = v;
}
- (void)setHasTtl:(BOOL)f
{
    _flags.has_ttl = f ? 1 : 0;
}
- (BOOL)hasTtl
{
    return (BOOL)_flags.has_ttl;
}

- (GEORPFeedbackLayoutFormType)formType
{
    return _flags.has_formType ? _formType : GEORPFeedbackLayoutFormType_FEEDBACK_LAYOUT_FORM_UNKNOWN;
}
- (void)setFormType:(GEORPFeedbackLayoutFormType)v
{
    _flags.has_formType = 1;
    _formType = v;
}
- (void)setHasFormType:(BOOL)f
{
    _flags.has_formType = f ? 1 : 0;
}
- (BOOL)hasFormType
{
    return (BOOL)_flags.has_formType;
}
- (NSString *)formTypeAsString:(GEORPFeedbackLayoutFormType)value
{
    return GEORPFeedbackLayoutFormTypeAsString(value);
}
- (GEORPFeedbackLayoutFormType)StringAsFormType:(NSString *)str
{
    return StringAsGEORPFeedbackLayoutFormType(str);
}

- (NSMutableArray<GEORPLayoutField *> *)layoutFields
{
    return _layoutFields;
}
- (void)setLayoutFields:(NSMutableArray<GEORPLayoutField *> *)v
{
    _layoutFields = v;
}
- (void)clearLayoutFields
{
    [_layoutFields removeAllObjects];
}
- (void)addLayoutField:(GEORPLayoutField *)i
{
    if (!_layoutFields)
    {
        _layoutFields = [[NSMutableArray alloc] init];
    }
    [_layoutFields addObject:i];
}
- (NSUInteger)layoutFieldsCount
{
    return [_layoutFields count];
}
- (GEORPLayoutField *)layoutFieldAtIndex:(NSUInteger)idx
{
    return [_layoutFields objectAtIndex:idx];
}
+ (Class)layoutFieldType
{
    return [GEORPLayoutField class];
}


- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %@", [super description], [self dictionaryRepresentation]];
}

- (NSDictionary *)dictionaryRepresentation
{
    [self readAll:YES];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    if (self->_flags.has_ttl)
    {
        [dict setObject:@(self->_ttl) forKey:@"ttl"];
    }

    if (self->_flags.has_formType)
    {
        [dict setObject:GEORPFeedbackLayoutFormTypeAsString(self->_formType) forKey:@"form_type"];
    }

    if ([self->_layoutFields count])
    {
        NSMutableArray *layoutFieldsDictReprs = [[NSMutableArray alloc] initWithCapacity:[self->_layoutFields count]];
        for (GEORPLayoutField * i_layoutField in self->_layoutFields)
        {
            [layoutFieldsDictReprs addObject:[i_layoutField dictionaryRepresentation]];
        }
        [dict setObject:layoutFieldsDictReprs forKey:@"layout_field"];
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
BOOL GEORPFeedbackLayoutFormConfigReadAllFrom(__unsafe_unretained GEORPFeedbackLayoutFormConfig *self, __unsafe_unretained PBDataReader *reader, BOOL recursively) {
    static const uint32_t recursiveTag[] = {TAG_PARSE_ALL_RECURSIVE, 0};

    @synchronized(reader) {
        BOOL result = GEORPFeedbackLayoutFormConfigReadSpecified(self, reader, recursively ? recursiveTag : nil);
        return result;
    }
}
BOOL GEORPFeedbackLayoutFormConfigReadFrom(__unsafe_unretained GEORPFeedbackLayoutFormConfig *self, __unsafe_unretained PBDataReader *reader) {
    @synchronized(reader) {
        return GEORPFeedbackLayoutFormConfigReadAllFrom(self, reader, NO);
    }
}

BOOL GEORPFeedbackLayoutFormConfigReadSpecified(__unsafe_unretained GEORPFeedbackLayoutFormConfig *self, __unsafe_unretained PBDataReader *reader, const uint32_t *tags) {
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

            case 1 /* ttl */:
            {
                self->_flags.has_ttl = YES;
                self->_ttl = PBReaderReadUint32(reader);

            }
            break;
            case 2 /* formType */:
            {
                self->_flags.has_formType = YES;
                self->_formType = PBReaderReadInt32(reader);

            }
            break;
            case 3 /* layoutFields */:
            {
                GEORPLayoutField *new_layoutField = [[GEORPLayoutField alloc] init];
                [self addLayoutField:new_layoutField];
                PBDataReaderMark mark_layoutField;
                BOOL markError = !PBReaderPlaceMark(reader, &mark_layoutField);
                if (markError)
                {
                    return NO;
                }
                BOOL inError = !GEORPLayoutFieldReadAllFrom(new_layoutField, reader, recursively);
                if (inError)
                {
                    return NO;
                }
                PBReaderRecallMark(reader, &mark_layoutField);

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
    return GEORPFeedbackLayoutFormConfigIsValid(reader);
}

BOOL GEORPFeedbackLayoutFormConfigIsValid(__unsafe_unretained PBDataReader *reader) {
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

            case 1 /* ttl */:
                if (TYPE_VARINT != aType)
                    returnValue(NO);
                PBReaderReadUint32(reader);
                break;
            case 2 /* formType */:
                if (TYPE_VARINT != aType)
                    returnValue(NO);
                PBReaderReadInt32(reader);
                break;
            case 3 /* layoutFields */:
                if (TYPE_LENGTH_DELIMITED != aType)
                    returnValue(NO);
                {
                    PBDataReaderMark mark_layoutField;
                    if (!PBReaderPlaceMark(reader, &mark_layoutField))
                        returnValue(NO);
                    if (!GEORPLayoutFieldIsValid(reader))
                        returnValue(NO);
                    PBReaderRecallMark(reader, &mark_layoutField);
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
    return GEORPFeedbackLayoutFormConfigReadAllFrom(self, reader, NO);
}

- (void)writeTo:(PBDataWriter *)writer
{

    /* ttl */
    {
        if (self->_flags.has_ttl)
        {
            PBDataWriterWriteUint32Field(writer, self->_ttl, 1);
        }
    }

    /* formType */
    {
        if (self->_flags.has_formType)
        {
            PBDataWriterWriteInt32Field(writer, self->_formType, 2);
        }
    }

    /* layoutFields */
    {
        for (GEORPLayoutField * i_layoutField in self->_layoutFields)
        {
            PBDataWriterWriteSubmessage(writer, i_layoutField, 3);
        }

    }
    /* Unknown Fields */
    {
        [_unknownFields writeTo:writer];
    }
}



- (void)copyTo:(GEORPFeedbackLayoutFormConfig *)other
{
    [self readAll:NO];
    if (self->_flags.has_ttl)
    {
        other->_ttl = _ttl;
        other->_flags.has_ttl = YES;
    }
    if (self->_flags.has_formType)
    {
        other->_formType = _formType;
        other->_flags.has_formType = YES;
    }
    if ([self layoutFieldsCount])
    {
        [other clearLayoutFields];
        NSUInteger layoutFieldsCnt = [self layoutFieldsCount];
        for (NSUInteger i = 0; i < layoutFieldsCnt; i++)
        {
            [other addLayoutField:[self layoutFieldAtIndex:i]];
        }
    }
}

- (id)copyWithZone:(NSZone *)zone
{
    GEORPFeedbackLayoutFormConfig *copy = [[[self class] allocWithZone:zone] init];
    if (self->_flags.has_ttl)
    {
        copy->_ttl = _ttl;
        copy->_flags.has_ttl = YES;
    }
    if (self->_flags.has_formType)
    {
        copy->_formType = _formType;
        copy->_flags.has_formType = YES;
    }
    for (GEORPLayoutField * v in _layoutFields)
    {
        GEORPLayoutField * vCopy = [v copyWithZone:zone];
        [copy addLayoutField:vCopy];
    }
    copy->_unknownFields = _unknownFields;
    return copy;
}


- (BOOL)isEqual:(id)object
{
    GEORPFeedbackLayoutFormConfig *other = (GEORPFeedbackLayoutFormConfig *)object;
    if (![other isMemberOfClass:[self class]]) {
        return NO;
    }
    [self readAll:YES];
    [other readAll:YES];


    return YES
    &&
    ((self->_flags.has_ttl && other->_flags.has_ttl && self->_ttl == other->_ttl) || (!self->_flags.has_ttl && !other->_flags.has_ttl))
    &&
    ((self->_flags.has_formType && other->_flags.has_formType && self->_formType == other->_formType) || (!self->_flags.has_formType && !other->_flags.has_formType))
    &&
    ((!self->_layoutFields && !other->_layoutFields) || [self->_layoutFields isEqual:other->_layoutFields])

    ;
}

- (NSUInteger)hash
{
    [self readAll:YES];
    NSUInteger value = 0;

    return value
    ^
    (self->_flags.has_ttl ? PBHashInt((NSUInteger)self->_ttl) : 0)
    ^
    (self->_flags.has_formType ? PBHashInt((NSUInteger)self->_formType) : 0)
    ^
    [self->_layoutFields hash]
    ;
}

- (void)mergeFrom:(GEORPFeedbackLayoutFormConfig *)other
{
    [other readAll:NO];
    if (other->_flags.has_ttl)
    {
        self->_ttl = other->_ttl;
        self->_flags.has_ttl = 1;
    }
    if (other->_flags.has_formType)
    {
        self->_formType = other->_formType;
        self->_flags.has_formType = 1;
    }
    for (GEORPLayoutField * iter_layoutFields in other->_layoutFields)
    {
        [self addLayoutField:iter_layoutFields];
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
    for (GEORPLayoutField * v in self.layoutFields) {
        [v clearUnknownFields:YES];
    }
}

@end



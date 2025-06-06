// This file was automatically generated by gyb
// DO NOT EDIT!
// Compiled from community_feedback.proto

#import "GEORPFeedbackLayoutFieldName.h"
#import <ProtocolBuffer/PBConstants.h>
#import <ProtocolBuffer/PBHashUtil.h>
#import <ProtocolBuffer/PBDataReader.h>

#if !__has_feature(objc_arc)
# error This generated file depends on ARC but it is not enabled
#endif

@implementation GEORPFeedbackLayoutFieldName


- (GEORPFeedbackLayoutWorkflowField)workflowFieldName
{
    return _flags.has_workflowFieldName ? _workflowFieldName : GEORPFeedbackLayoutWorkflowField_FEEDBACK_LAYOUT_WORKFLOW_UNKNOWN;
}
- (void)setWorkflowFieldName:(GEORPFeedbackLayoutWorkflowField)v
{
    _flags.has_workflowFieldName = 1;
    _workflowFieldName = v;
}
- (void)setHasWorkflowFieldName:(BOOL)f
{
    _flags.has_workflowFieldName = f ? 1 : 0;
}
- (BOOL)hasWorkflowFieldName
{
    return (BOOL)_flags.has_workflowFieldName;
}
- (NSString *)workflowFieldNameAsString:(GEORPFeedbackLayoutWorkflowField)value
{
    return GEORPFeedbackLayoutWorkflowFieldAsString(value);
}
- (GEORPFeedbackLayoutWorkflowField)StringAsWorkflowFieldName:(NSString *)str
{
    return StringAsGEORPFeedbackLayoutWorkflowField(str);
}

- (GEORPFeedbackLayoutPoiField)poiFieldName
{
    return _flags.has_poiFieldName ? _poiFieldName : GEORPFeedbackLayoutPoiField_FEEDBACK_LAYOUT_POI_UNKNOWN;
}
- (void)setPoiFieldName:(GEORPFeedbackLayoutPoiField)v
{
    _flags.has_poiFieldName = 1;
    _poiFieldName = v;
}
- (void)setHasPoiFieldName:(BOOL)f
{
    _flags.has_poiFieldName = f ? 1 : 0;
}
- (BOOL)hasPoiFieldName
{
    return (BOOL)_flags.has_poiFieldName;
}
- (NSString *)poiFieldNameAsString:(GEORPFeedbackLayoutPoiField)value
{
    return GEORPFeedbackLayoutPoiFieldAsString(value);
}
- (GEORPFeedbackLayoutPoiField)StringAsPoiFieldName:(NSString *)str
{
    return StringAsGEORPFeedbackLayoutPoiField(str);
}

- (GEORPFeedbackLayoutAddressField)addressFieldName
{
    return _flags.has_addressFieldName ? _addressFieldName : GEORPFeedbackLayoutAddressField_FEEDBACK_LAYOUT_ADDRESS_UNKNOWN;
}
- (void)setAddressFieldName:(GEORPFeedbackLayoutAddressField)v
{
    _flags.has_addressFieldName = 1;
    _addressFieldName = v;
}
- (void)setHasAddressFieldName:(BOOL)f
{
    _flags.has_addressFieldName = f ? 1 : 0;
}
- (BOOL)hasAddressFieldName
{
    return (BOOL)_flags.has_addressFieldName;
}
- (NSString *)addressFieldNameAsString:(GEORPFeedbackLayoutAddressField)value
{
    return GEORPFeedbackLayoutAddressFieldAsString(value);
}
- (GEORPFeedbackLayoutAddressField)StringAsAddressFieldName:(NSString *)str
{
    return StringAsGEORPFeedbackLayoutAddressField(str);
}

- (GEORPFeedbackLayoutOtherField)otherFieldName
{
    return _flags.has_otherFieldName ? _otherFieldName : GEORPFeedbackLayoutOtherField_FEEDBACK_LAYOUT_OTHER_UNKNOWN;
}
- (void)setOtherFieldName:(GEORPFeedbackLayoutOtherField)v
{
    _flags.has_otherFieldName = 1;
    _otherFieldName = v;
}
- (void)setHasOtherFieldName:(BOOL)f
{
    _flags.has_otherFieldName = f ? 1 : 0;
}
- (BOOL)hasOtherFieldName
{
    return (BOOL)_flags.has_otherFieldName;
}
- (NSString *)otherFieldNameAsString:(GEORPFeedbackLayoutOtherField)value
{
    return GEORPFeedbackLayoutOtherFieldAsString(value);
}
- (GEORPFeedbackLayoutOtherField)StringAsOtherFieldName:(NSString *)str
{
    return StringAsGEORPFeedbackLayoutOtherField(str);
}

- (GEORPFeedbackLayoutGroundViewField)groundviewFieldName
{
    return _flags.has_groundviewFieldName ? _groundviewFieldName : GEORPFeedbackLayoutGroundViewField_FEEDBACK_LAYOUT_GROUNDVIEW_UNKNOWN;
}
- (void)setGroundviewFieldName:(GEORPFeedbackLayoutGroundViewField)v
{
    _flags.has_groundviewFieldName = 1;
    _groundviewFieldName = v;
}
- (void)setHasGroundviewFieldName:(BOOL)f
{
    _flags.has_groundviewFieldName = f ? 1 : 0;
}
- (BOOL)hasGroundviewFieldName
{
    return (BOOL)_flags.has_groundviewFieldName;
}
- (NSString *)groundviewFieldNameAsString:(GEORPFeedbackLayoutGroundViewField)value
{
    return GEORPFeedbackLayoutGroundViewFieldAsString(value);
}
- (GEORPFeedbackLayoutGroundViewField)StringAsGroundviewFieldName:(NSString *)str
{
    return StringAsGEORPFeedbackLayoutGroundViewField(str);
}


- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %@", [super description], [self dictionaryRepresentation]];
}

- (NSDictionary *)dictionaryRepresentation
{
    [self readAll:YES];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    if (self->_flags.has_workflowFieldName)
    {
        [dict setObject:GEORPFeedbackLayoutWorkflowFieldAsString(self->_workflowFieldName) forKey:@"workflow_field_name"];
    }

    if (self->_flags.has_poiFieldName)
    {
        [dict setObject:GEORPFeedbackLayoutPoiFieldAsString(self->_poiFieldName) forKey:@"poi_field_name"];
    }

    if (self->_flags.has_addressFieldName)
    {
        [dict setObject:GEORPFeedbackLayoutAddressFieldAsString(self->_addressFieldName) forKey:@"address_field_name"];
    }

    if (self->_flags.has_otherFieldName)
    {
        [dict setObject:GEORPFeedbackLayoutOtherFieldAsString(self->_otherFieldName) forKey:@"other_field_name"];
    }

    if (self->_flags.has_groundviewFieldName)
    {
        [dict setObject:GEORPFeedbackLayoutGroundViewFieldAsString(self->_groundviewFieldName) forKey:@"groundview_field_name"];
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
BOOL GEORPFeedbackLayoutFieldNameReadAllFrom(__unsafe_unretained GEORPFeedbackLayoutFieldName *self, __unsafe_unretained PBDataReader *reader, BOOL recursively) {
    static const uint32_t recursiveTag[] = {TAG_PARSE_ALL_RECURSIVE, 0};

    @synchronized(reader) {
        BOOL result = GEORPFeedbackLayoutFieldNameReadSpecified(self, reader, recursively ? recursiveTag : nil);
        return result;
    }
}
BOOL GEORPFeedbackLayoutFieldNameReadFrom(__unsafe_unretained GEORPFeedbackLayoutFieldName *self, __unsafe_unretained PBDataReader *reader) {
    @synchronized(reader) {
        return GEORPFeedbackLayoutFieldNameReadAllFrom(self, reader, NO);
    }
}

BOOL GEORPFeedbackLayoutFieldNameReadSpecified(__unsafe_unretained GEORPFeedbackLayoutFieldName *self, __unsafe_unretained PBDataReader *reader, const uint32_t *tags) {
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

            case 1 /* workflowFieldName */:
            {
                self->_flags.has_workflowFieldName = YES;
                self->_workflowFieldName = PBReaderReadInt32(reader);

            }
            break;
            case 2 /* poiFieldName */:
            {
                self->_flags.has_poiFieldName = YES;
                self->_poiFieldName = PBReaderReadInt32(reader);

            }
            break;
            case 3 /* addressFieldName */:
            {
                self->_flags.has_addressFieldName = YES;
                self->_addressFieldName = PBReaderReadInt32(reader);

            }
            break;
            case 4 /* otherFieldName */:
            {
                self->_flags.has_otherFieldName = YES;
                self->_otherFieldName = PBReaderReadInt32(reader);

            }
            break;
            case 5 /* groundviewFieldName */:
            {
                self->_flags.has_groundviewFieldName = YES;
                self->_groundviewFieldName = PBReaderReadInt32(reader);

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
    return GEORPFeedbackLayoutFieldNameIsValid(reader);
}

BOOL GEORPFeedbackLayoutFieldNameIsValid(__unsafe_unretained PBDataReader *reader) {
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

            case 1 /* workflowFieldName */:
                if (TYPE_VARINT != aType)
                    returnValue(NO);
                PBReaderReadInt32(reader);
                break;
            case 2 /* poiFieldName */:
                if (TYPE_VARINT != aType)
                    returnValue(NO);
                PBReaderReadInt32(reader);
                break;
            case 3 /* addressFieldName */:
                if (TYPE_VARINT != aType)
                    returnValue(NO);
                PBReaderReadInt32(reader);
                break;
            case 4 /* otherFieldName */:
                if (TYPE_VARINT != aType)
                    returnValue(NO);
                PBReaderReadInt32(reader);
                break;
            case 5 /* groundviewFieldName */:
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
    return GEORPFeedbackLayoutFieldNameReadAllFrom(self, reader, NO);
}

- (void)writeTo:(PBDataWriter *)writer
{

    /* workflowFieldName */
    {
        if (self->_flags.has_workflowFieldName)
        {
            PBDataWriterWriteInt32Field(writer, self->_workflowFieldName, 1);
        }
    }

    /* poiFieldName */
    {
        if (self->_flags.has_poiFieldName)
        {
            PBDataWriterWriteInt32Field(writer, self->_poiFieldName, 2);
        }
    }

    /* addressFieldName */
    {
        if (self->_flags.has_addressFieldName)
        {
            PBDataWriterWriteInt32Field(writer, self->_addressFieldName, 3);
        }
    }

    /* otherFieldName */
    {
        if (self->_flags.has_otherFieldName)
        {
            PBDataWriterWriteInt32Field(writer, self->_otherFieldName, 4);
        }
    }

    /* groundviewFieldName */
    {
        if (self->_flags.has_groundviewFieldName)
        {
            PBDataWriterWriteInt32Field(writer, self->_groundviewFieldName, 5);
        }
    }
    /* Unknown Fields */
    {
        [_unknownFields writeTo:writer];
    }
}



- (void)copyTo:(GEORPFeedbackLayoutFieldName *)other
{
    [self readAll:NO];
    if (self->_flags.has_workflowFieldName)
    {
        other->_workflowFieldName = _workflowFieldName;
        other->_flags.has_workflowFieldName = YES;
    }
    if (self->_flags.has_poiFieldName)
    {
        other->_poiFieldName = _poiFieldName;
        other->_flags.has_poiFieldName = YES;
    }
    if (self->_flags.has_addressFieldName)
    {
        other->_addressFieldName = _addressFieldName;
        other->_flags.has_addressFieldName = YES;
    }
    if (self->_flags.has_otherFieldName)
    {
        other->_otherFieldName = _otherFieldName;
        other->_flags.has_otherFieldName = YES;
    }
    if (self->_flags.has_groundviewFieldName)
    {
        other->_groundviewFieldName = _groundviewFieldName;
        other->_flags.has_groundviewFieldName = YES;
    }
}

- (id)copyWithZone:(NSZone *)zone
{
    GEORPFeedbackLayoutFieldName *copy = [[[self class] allocWithZone:zone] init];
    if (self->_flags.has_workflowFieldName)
    {
        copy->_workflowFieldName = _workflowFieldName;
        copy->_flags.has_workflowFieldName = YES;
    }
    if (self->_flags.has_poiFieldName)
    {
        copy->_poiFieldName = _poiFieldName;
        copy->_flags.has_poiFieldName = YES;
    }
    if (self->_flags.has_addressFieldName)
    {
        copy->_addressFieldName = _addressFieldName;
        copy->_flags.has_addressFieldName = YES;
    }
    if (self->_flags.has_otherFieldName)
    {
        copy->_otherFieldName = _otherFieldName;
        copy->_flags.has_otherFieldName = YES;
    }
    if (self->_flags.has_groundviewFieldName)
    {
        copy->_groundviewFieldName = _groundviewFieldName;
        copy->_flags.has_groundviewFieldName = YES;
    }
    copy->_unknownFields = _unknownFields;
    return copy;
}


- (BOOL)isEqual:(id)object
{
    GEORPFeedbackLayoutFieldName *other = (GEORPFeedbackLayoutFieldName *)object;
    if (![other isMemberOfClass:[self class]]) {
        return NO;
    }
    [self readAll:YES];
    [other readAll:YES];


    return YES
    &&
    ((self->_flags.has_workflowFieldName && other->_flags.has_workflowFieldName && self->_workflowFieldName == other->_workflowFieldName) || (!self->_flags.has_workflowFieldName && !other->_flags.has_workflowFieldName))
    &&
    ((self->_flags.has_poiFieldName && other->_flags.has_poiFieldName && self->_poiFieldName == other->_poiFieldName) || (!self->_flags.has_poiFieldName && !other->_flags.has_poiFieldName))
    &&
    ((self->_flags.has_addressFieldName && other->_flags.has_addressFieldName && self->_addressFieldName == other->_addressFieldName) || (!self->_flags.has_addressFieldName && !other->_flags.has_addressFieldName))
    &&
    ((self->_flags.has_otherFieldName && other->_flags.has_otherFieldName && self->_otherFieldName == other->_otherFieldName) || (!self->_flags.has_otherFieldName && !other->_flags.has_otherFieldName))
    &&
    ((self->_flags.has_groundviewFieldName && other->_flags.has_groundviewFieldName && self->_groundviewFieldName == other->_groundviewFieldName) || (!self->_flags.has_groundviewFieldName && !other->_flags.has_groundviewFieldName))
    ;
}

- (NSUInteger)hash
{
    [self readAll:YES];
    NSUInteger value = 0;

    return value
    ^
    (self->_flags.has_workflowFieldName ? PBHashInt((NSUInteger)self->_workflowFieldName) : 0)
    ^
    (self->_flags.has_poiFieldName ? PBHashInt((NSUInteger)self->_poiFieldName) : 0)
    ^
    (self->_flags.has_addressFieldName ? PBHashInt((NSUInteger)self->_addressFieldName) : 0)
    ^
    (self->_flags.has_otherFieldName ? PBHashInt((NSUInteger)self->_otherFieldName) : 0)
    ^
    (self->_flags.has_groundviewFieldName ? PBHashInt((NSUInteger)self->_groundviewFieldName) : 0)
    ;
}

- (void)mergeFrom:(GEORPFeedbackLayoutFieldName *)other
{
    [other readAll:NO];
    if (other->_flags.has_workflowFieldName)
    {
        self->_workflowFieldName = other->_workflowFieldName;
        self->_flags.has_workflowFieldName = 1;
    }
    if (other->_flags.has_poiFieldName)
    {
        self->_poiFieldName = other->_poiFieldName;
        self->_flags.has_poiFieldName = 1;
    }
    if (other->_flags.has_addressFieldName)
    {
        self->_addressFieldName = other->_addressFieldName;
        self->_flags.has_addressFieldName = 1;
    }
    if (other->_flags.has_otherFieldName)
    {
        self->_otherFieldName = other->_otherFieldName;
        self->_flags.has_otherFieldName = 1;
    }
    if (other->_flags.has_groundviewFieldName)
    {
        self->_groundviewFieldName = other->_groundviewFieldName;
        self->_flags.has_groundviewFieldName = 1;
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



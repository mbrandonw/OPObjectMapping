//
//  OPObjectMapping.m
//  OPObjectMapping
//
//  Created by Brandon Williams on 1/24/12.
//  Copyright (c) 2012 Opetopic. All rights reserved.
//

#import "OPObjectMapping.h"

@interface OPObjectMapping (/**/)
@property (nonatomic, assign) Class mappingClass;
-(id) initForClass:(Class) mappingClass;
@end

@implementation OPObjectMapping

@synthesize mappingClass = _mappingClass;

-(id) initForClass:(Class)mappingClass {
    if (! (self = [self init]))
        return nil;
    _mappingClass = mappingClass;
    return self;
}

-(void) mapKeyPath:(NSString *)keyPath toAttribute:(NSString *)attribute {
}

-(void) mapKeyPath:(NSString *)keyPath toRelationship:(NSString*)relationship withMapping:(OPObjectMapping*)mapping {
}

@end


static NSMutableDictionary *OPObjectMappingByClass;

@implementation NSObject (OPObjectMapping)

+(id) mapping {
    
    if (! OPObjectMappingByClass)
        OPObjectMappingByClass = [NSMutableDictionary new];
    
    NSString *classString = NSStringFromClass([self class]);
    if (! [OPObjectMappingByClass objectForKey:classString])
        [OPObjectMappingByClass setObject:[[OPObjectMapping alloc] initForClass:[self class]] forKey:classString];
    
    return [OPObjectMappingByClass objectForKey:classString];
}

-(id) mapping {
    return [[self class] mapping];
}

-(id) initWithMappingFromDictionary:(NSDictionary*)dictionary {
    if (! (self = [self init]))
        return nil;
    
    return self;
}

-(void) mapFromDictionary:(NSDictionary*)dictionary {
    
}

-(NSDictionary*) mapToDictionary {
    return nil;
}

@end

//
//  OPObjectMapping.h
//  OPObjectMapping
//
//  Created by Brandon Williams on 1/24/12.
//  Copyright (c) 2012 Opetopic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OPObjectMapping : NSObject

-(void) mapKeyPath:(NSString*)keyPath toAttribute:(NSString*)attribute;
-(void) mapKeyPath:(NSString *)keyPath toRelationship:(NSString*)relationship withMapping:(OPObjectMapping*)mapping;

@end


@interface NSObject (OPObjectMapping)
+(id) mapping;
-(id) mapping;
-(id) initWithMappingFromDictionary:(NSDictionary*)dictionary;
-(void) mapFromDictionary:(NSDictionary*)dictionary;
-(NSDictionary*) mapToDictionary;
@end

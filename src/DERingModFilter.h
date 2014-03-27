//
//  DERingModFilter.h
//  Praxis Beats
//
//  Created by Jeremy Flores on 6/2/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AEAudioController.h"

@interface DERingModFilter : NSObject<AEAudioFilter>

// range is from 0.00001 to $FLOAT_MAX. Default is 1.f.
@property (nonatomic) float frequency;

@end

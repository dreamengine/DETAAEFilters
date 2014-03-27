//
//  DEVarispeedFilter.h
//  DEAmazingAudioEngineTest
//
//  Created by Jeremy Flores on 4/26/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DEAudioUnitFilter.h"

@interface DEVarispeedFilter : DEAudioUnitFilter

// documented range is from 0.25 to 4.0, but empircal testing shows it to be 0.25 to 2.0. Default is 1.0.
@property (nonatomic) double playbackRate;

// range is from -2400 to 2400. Default is 0.0.
@property (nonatomic) double playbackCents;

@end

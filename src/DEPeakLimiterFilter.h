//
//  DEPeakLimiterFilter.h
//  DEAmazingAudioEngineTest
//
//  Created by Jeremy Flores on 4/25/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DEAudioUnitFilter.h"

@interface DEPeakLimiterFilter : DEAudioUnitFilter

// range is from 0.001 to 0.03 seconds. Default is 0.012 seconds.
@property (nonatomic) double attackTime;

// range is from 0.001 to 0.06 seconds. Default is 0.024 seconds.
@property (nonatomic) double decayTime;

// range is from -40dB to 40dB. Default is 0dB.
@property (nonatomic) double preGain;

@end

//
//  DELowShelfFilter.h
//  DEAmazingAudioEngineTest
//
//  Created by Jeremy Flores on 4/25/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DEAudioUnitFilter.h"

@interface DELowShelfFilter : DEAudioUnitFilter

// range is from 10Hz to 200Hz. Default is 80Hz.
@property (nonatomic) double cutoffFrequency;

// range is -40dB to 40dB. Default is 0dB.
@property (nonatomic) double gain;

@end

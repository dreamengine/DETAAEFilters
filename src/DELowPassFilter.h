//
//  DELowPassFilter.h
//  DEAmazingAudioEngineTest
//
//  Created by Jeremy Flores on 4/25/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DEAudioUnitFilter.h"

@interface DELowPassFilter : DEAudioUnitFilter

// range is from 10Hz to ($SAMPLERATE/2) Hz. Default is 6900 Hz.
@property (nonatomic) double cutoffFrequency;

// range is -20dB to 40dB. Default is 0dB.
@property (nonatomic) double resonance;

@end

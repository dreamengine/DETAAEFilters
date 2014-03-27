//
//  DEDelayFilter.h
//  DEAmazingAudioEngineTest
//
//  Created by Jeremy Flores on 4/25/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DEAudioUnitFilter.h"

@interface DEDelayFilter : DEAudioUnitFilter

// range is from 0 to 100 (percentage). Default is 50.
@property (nonatomic) double wetDryMix;

// range is from 0 to 2 seconds. Default is 1 second.
@property (nonatomic) double delayTime;

// range is from -100 to 100. default is 50.
@property (nonatomic) double feedback;

// range is from 10 to ($SAMPLERATE/2). Default is 15000.
@property (nonatomic) double lopassCutoff;

@end

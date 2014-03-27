//
//  DEDCFilter.h
//  DEAmazingAudioEngineTest
//
//  Created by Jeremy Flores on 4/25/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DEAudioUnitFilter.h"

@interface DEDcFilter : DEAudioUnitFilter

// range is from 0.0001 to 1.0 seconds. Default is 0.03 seconds.
@property (nonatomic) double decayTime;

@end

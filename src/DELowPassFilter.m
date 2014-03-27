//
//  DELowPassFilter.m
//  DEAmazingAudioEngineTest
//
//  Created by Jeremy Flores on 4/25/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import "DELowPassFilter.h"

@implementation DELowPassFilter

+(OSType)audioUnitType {
    return kAudioUnitType_Effect;
}

+(OSType)audioUnitSubtype {
    return kAudioUnitSubType_LowPassFilter;
}


#pragma mark - Getters

-(double)cutoffFrequency {
    return [self getParameterValueForId:kLowPassParam_CutoffFrequency];
}

-(double)resonance {
    return [self getParameterValueForId:kLowPassParam_Resonance];
}


#pragma mark - Setters

-(void) setCutoffFrequency:(double)cutoffFrequency {
    [self setParameterValue: cutoffFrequency
                      forId: kLowPassParam_CutoffFrequency];
}

-(void) setResonance:(double)resonance {
    [self setParameterValue: resonance
                      forId: kLowPassParam_Resonance];
}

@end

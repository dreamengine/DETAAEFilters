//
//  DELowShelfFilter.m
//  DEAmazingAudioEngineTest
//
//  Created by Jeremy Flores on 4/25/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import "DELowShelfFilter.h"

@implementation DELowShelfFilter

+(OSType)audioUnitType {
    return kAudioUnitType_Effect;
}

+(OSType)audioUnitSubtype {
    return kAudioUnitSubType_LowShelfFilter;
}


#pragma mark - Getters

-(double)cutoffFrequency {
    return [self getParameterValueForId:kAULowShelfParam_CutoffFrequency];
}

-(double)gain {
    return [self getParameterValueForId:kAULowShelfParam_Gain];
}


#pragma mark - Setters

-(void) setCutoffFrequency:(double)cutoffFrequency {
    [self setParameterValue: cutoffFrequency
                      forId: kAULowShelfParam_CutoffFrequency];
}

-(void) setGain:(double)gain {
    [self setParameterValue: gain
                      forId: kAULowShelfParam_Gain];
}

@end

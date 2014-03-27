//
//  DEParametricEqFilter.m
//  DEAmazingAudioEngineTest
//
//  Created by Jeremy Flores on 4/25/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import "DEParametricEqFilter.h"

@implementation DEParametricEqFilter

+(OSType)audioUnitType {
    return kAudioUnitType_Effect;
}

+(OSType) audioUnitSubtype {
    return kAudioUnitSubType_ParametricEQ;
}


#pragma mark - Getters

-(double)centerFrequency {
    return [self getParameterValueForId:kParametricEQParam_CenterFreq];
}

-(double)qFactor {
    return [self getParameterValueForId:kParametricEQParam_Q];
}

-(double)gain {
    return [self getParameterValueForId:kParametricEQParam_Gain];
}


#pragma mark - Setters

-(void)setCenterFrequency:(double)centerFrequency {
    [self setParameterValue: centerFrequency
                      forId: kParametricEQParam_CenterFreq];
}

-(void)setQFactor:(double)qFactor {
    [self setParameterValue: qFactor
                      forId: kParametricEQParam_Q];
}

-(void)setGain:(double)gain {
    [self setParameterValue: gain
                      forId: kParametricEQParam_Gain];
}

@end

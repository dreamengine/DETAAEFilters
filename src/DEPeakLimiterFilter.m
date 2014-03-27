//
//  DEPeakLimiterFilter.m
//  DEAmazingAudioEngineTest
//
//  Created by Jeremy Flores on 4/25/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import "DEPeakLimiterFilter.h"

@implementation DEPeakLimiterFilter

+(OSType)audioUnitType {
    return kAudioUnitType_Effect;
}

+(OSType)audioUnitSubtype {
    return kAudioUnitSubType_PeakLimiter;
}


#pragma mark - Getters

-(double)attackTime {
    return [self getParameterValueForId:kLimiterParam_AttackTime];
}

-(double)decayTime {
    return [self getParameterValueForId:kLimiterParam_DecayTime];
}

-(double)preGain {
    return [self getParameterValueForId:kLimiterParam_PreGain];
}


#pragma mark - Setters

-(void)setAttackTime:(double)attackTime {
    [self setParameterValue: attackTime
                      forId: kLimiterParam_AttackTime];
}

-(void) setDecayTime:(double)decayTime {
    [self setParameterValue: decayTime
                      forId: kLimiterParam_DecayTime];
}

-(void) setPreGain:(double)preGain {
    [self setParameterValue: preGain
                      forId: kLimiterParam_PreGain];
}

@end

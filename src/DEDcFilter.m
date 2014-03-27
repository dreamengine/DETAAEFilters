//
//  DEDCFilter.m
//  DEAmazingAudioEngineTest
//
//  Created by Jeremy Flores on 4/25/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import "DEDcFilter.h"

@implementation DEDcFilter

+(OSType)audioUnitType {
    return kAudioUnitType_Effect;
}

+(OSType)audioUnitSubtype {
    return kAudioUnitSubType_DCFilter;
}


#pragma mark - Getters

-(double)decayTime {
    return [self getParameterValueForId:kAUDCFilterParam_DecayTime];
}


#pragma mark - Setters

-(void)setDecayTime:(double)decayTime {
    [self setParameterValue: decayTime
                      forId: kAUDCFilterParam_DecayTime];
}

@end

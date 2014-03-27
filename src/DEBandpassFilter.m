//
//  DEBandpassFilter.m
//  DEAmazingAudioEngineTest
//
//  Created by Jeremy Flores on 4/25/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import "DEBandpassFilter.h"

@implementation DEBandpassFilter

+(OSType)audioUnitType {
    return kAudioUnitType_Effect;
}

+(OSType)audioUnitSubtype {
    return kAudioUnitSubType_BandPassFilter;
}


#pragma mark - Getters
-(double)centerFrequency {
    return [self getParameterValueForId:kBandpassParam_CenterFrequency];
}

-(double)bandwidth {
    return [self getParameterValueForId:kBandpassParam_Bandwidth];
}


#pragma mark - Setters
-(void)setCenterFrequency:(double)centerFrequency {
    [self setParameterValue: centerFrequency
                      forId: kBandpassParam_CenterFrequency];
}

-(void)setBandwidth:(double)bandwidth {
    [self setParameterValue: bandwidth
                      forId: kBandpassParam_Bandwidth];
}

@end

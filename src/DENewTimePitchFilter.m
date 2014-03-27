//
//  DENewTimePitchFilter.m
//  DEAmazingAudioEngineTest
//
//  Created by Jeremy Flores on 4/27/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import "DENewTimePitchFilter.h"

@implementation DENewTimePitchFilter

+(OSType)audioUnitType {
    return kAudioUnitType_FormatConverter;
}

+(OSType)audioUnitSubtype {
    return kAudioUnitSubType_NewTimePitch;
}


#pragma mark - Getters

-(double)rate {
    return [self getParameterValueForId:kNewTimePitchParam_Rate];
}

-(double)pitch {
    return [self getParameterValueForId:kNewTimePitchParam_Pitch];
}

-(double)overlap {
    return [self getParameterValueForId:kNewTimePitchParam_Overlap];
}

-(double)enablePeakLocking {
    return [self getParameterValueForId:kNewTimePitchParam_EnablePeakLocking];
}


#pragma mark - Setters

-(void)setRate:(double)rate {
    [self setParameterValue: rate
                      forId: kNewTimePitchParam_Rate];
}

-(void)setPitch:(double)pitch {
    [self setParameterValue: pitch
                      forId: kNewTimePitchParam_Pitch];
}

-(void)setOverlap:(double)overlap {
    [self setParameterValue: overlap
                      forId: kNewTimePitchParam_Overlap];
}

-(void)setEnablePeakLocking:(double)enablePeakLocking {
    [self setParameterValue: enablePeakLocking
                      forId: kNewTimePitchParam_EnablePeakLocking];
}

@end

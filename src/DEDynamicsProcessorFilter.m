//
//  DEDynamicsProcessorFilter.m
//  DEAmazingAudioEngineTest
//
//  Created by Jeremy Flores on 4/25/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import "DEDynamicsProcessorFilter.h"

@implementation DEDynamicsProcessorFilter

+(OSType)audioUnitType {
    return kAudioUnitType_Effect;
}

+(OSType)audioUnitSubtype {
    return kAudioUnitSubType_DynamicsProcessor;
}


#pragma mark - Getters

-(double)threshold {
    return [self getParameterValueForId:kDynamicsProcessorParam_Threshold];
}

-(double)headRoom {
    return [self getParameterValueForId:kDynamicsProcessorParam_HeadRoom];
}

-(double)expansionRatio {
    return [self getParameterValueForId:kDynamicsProcessorParam_ExpansionRatio];
}

-(double)expansionThreshold {
    return [self getParameterValueForId:kDynamicsProcessorParam_ExpansionThreshold];
}

-(double)attackTime {
    return [self getParameterValueForId:kDynamicsProcessorParam_AttackTime];
}

-(double) releaseTime {
    return [self getParameterValueForId:kDynamicsProcessorParam_ReleaseTime];
}

-(double)masterGain {
    return [self getParameterValueForId:kDynamicsProcessorParam_MasterGain];
}

-(double)compressionAmount {
    return [self getParameterValueForId:kDynamicsProcessorParam_CompressionAmount];
}

-(double)inputAmplitude {
    return [self getParameterValueForId:kDynamicsProcessorParam_InputAmplitude];
}

-(double)outputAmplitude {
    return [self getParameterValueForId:kDynamicsProcessorParam_OutputAmplitude];
}


#pragma mark - Setters

-(void)setThreshold:(double)threshold {
    [self setParameterValue: threshold
                      forId: kDynamicsProcessorParam_Threshold];
}

-(void)setHeadRoom:(double)headRoom {
    [self setParameterValue: headRoom
                      forId: kDynamicsProcessorParam_HeadRoom];
}

-(void)setExpansionRatio:(double)expansionRatio {
    [self setParameterValue: expansionRatio
                      forId: kDynamicsProcessorParam_ExpansionRatio];
}

-(void)setExpansionThreshold:(double)expansionThreshold {
    [self setParameterValue: expansionThreshold
                      forId: kDynamicsProcessorParam_ExpansionThreshold];
}

-(void)setAttackTime:(double)attackTime {
    [self setParameterValue: attackTime
                      forId: kDynamicsProcessorParam_AttackTime];
}

-(void)setReleaseTime:(double)releaseTime {
    [self setParameterValue: releaseTime
                      forId: kDynamicsProcessorParam_ReleaseTime];
}

-(void)setMasterGain:(double)masterGain {
    [self setParameterValue: masterGain
                      forId: kDynamicsProcessorParam_MasterGain];
}

@end

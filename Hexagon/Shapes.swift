//
//  Shapes.swift
//  Hexagon
//
//  Created by Thijs Nieuwkoop on 26/03/2016.
//  Copyright © 2016 Thijs Nieuwkoop. All rights reserved.
//

import SpriteKit
import Darwin

func hexagonPath(radius:Double) -> CGMutablePath {
    let hexPath = CGPathCreateMutable()
    
    CGPathMoveToPoint(hexPath, nil, CGFloat(0), CGFloat(radius))
    CGPathAddLineToPoint(hexPath, nil, CGFloat(0.5*radius*sqrt(3)), CGFloat(0.5*radius))
    CGPathAddLineToPoint(hexPath, nil, CGFloat(0.5*radius*sqrt(3)), CGFloat(-0.5*radius))
    CGPathAddLineToPoint(hexPath, nil, CGFloat(0), CGFloat(-radius))
    CGPathAddLineToPoint(hexPath, nil, CGFloat(-0.5*radius*sqrt(3)), CGFloat(-0.5*radius))
    CGPathAddLineToPoint(hexPath, nil, CGFloat(-0.5*radius*sqrt(3)), CGFloat(0.5*radius))
    CGPathCloseSubpath(hexPath)
    
    return hexPath
}

func playerHexagonPath(radius:Double) -> CGMutablePath {
    let hexPath = CGPathCreateMutable()
    
    CGPathMoveToPoint(hexPath, nil, CGFloat(0.25*radius*sqrt(3)), CGFloat(0.75*radius))
    CGPathAddArcToPoint(hexPath, nil, CGFloat(0.5*radius*sqrt(3)), CGFloat(0.5*radius), CGFloat(0.5*radius*sqrt(3)), CGFloat(-0.5*radius), CGFloat(30))
    CGPathAddArcToPoint(hexPath, nil, CGFloat(0.5*radius*sqrt(3)), CGFloat(-0.5*radius), CGFloat(0), CGFloat(-radius), CGFloat(30))
    CGPathAddArcToPoint(hexPath, nil, CGFloat(0), CGFloat(-radius), CGFloat(-0.5*radius*sqrt(3)), CGFloat(-0.5*radius), CGFloat(30))
    CGPathAddArcToPoint(hexPath, nil, CGFloat(-0.5*radius*sqrt(3)), CGFloat(-0.5*radius), CGFloat(-0.5*radius*sqrt(3)), CGFloat(0.5*radius), CGFloat(30))
    CGPathAddArcToPoint(hexPath, nil, CGFloat(-0.5*radius*sqrt(3)), CGFloat(0.5*radius), CGFloat(0), CGFloat(radius), CGFloat(30))
    CGPathAddArcToPoint(hexPath, nil, CGFloat(0), CGFloat(radius), CGFloat(0.5*radius*sqrt(3)), CGFloat(0.5*radius), CGFloat(30))
    CGPathCloseSubpath(hexPath)
    
    return hexPath
}

func playerPath(size:Double) -> CGMutablePath {
    let playerPath = CGPathCreateMutable()
    
    CGPathMoveToPoint(playerPath, nil, CGFloat(0), CGFloat(-0.5 * size))
    CGPathAddLineToPoint(playerPath, nil, CGFloat(-sqrt(0.75) * size), CGFloat(0))
    CGPathAddLineToPoint(playerPath, nil, CGFloat(0), CGFloat(0.5 * size))
    CGPathCloseSubpath(playerPath)
    
    return playerPath
}
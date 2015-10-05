//
//  BackgroundColorAnimation.swift
//  Background Animation in Swift
//
//  Created by alerikos on 10/4/15.
//  Copyright © 2015 AlexLerikos. All rights reserved.
//

import UIKit
import ChameleonFramework

protocol BackgroundColorAnimationDelegate{
		func doBackgroundColorAnimation()
}


class BackgroundColorAnimation: NSObject {
	
	// MARK: Properties
	var backgroundColorIndex:Int = 0
	var backgroundColors = Array<UIColor>()
	var delay:NSTimeInterval
	var	duration:NSTimeInterval
	
	
	init?(backgroundColors:Array<UIColor>, delay:Float, duration:Float) {
		// Initialize properties
		self.backgroundColors = backgroundColors
		self.delay = NSTimeInterval(delay)
		self.duration = NSTimeInterval(duration)
	}
	
	// MARK: Animation Function Delegate
	
	var delegate: BackgroundColorAnimationDelegate?


	
	
	
}

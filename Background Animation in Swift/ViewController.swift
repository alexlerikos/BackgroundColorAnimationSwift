//
//  ViewController.swift
//  Background Animation in Swift
//
//  Created by alerikos on 10/4/15.
//  Copyright © 2015 AlexLerikos. All rights reserved.
//

import UIKit
import ChameleonFramework

class ViewController: UIViewController,BackgroundColorAnimationDelegate {
	
	// MARK: Properties
	var backgroundColorAnimation:BackgroundColorAnimation?
//	var backgroundColorIndex = 0
	let backgroundColors = [FlatRed(),
													FlatOrange(),
													FlatPink(),
													FlatPurple(),
													FlatYellow(),
													FlatGreen(),
													FlatBlue()]


	override func viewDidLoad() {
		super.viewDidLoad()
		
		self.backgroundColorAnimation = BackgroundColorAnimation(backgroundColors: backgroundColors, delay: 0.0, duration: 2.5)
		self.view.backgroundColor = backgroundColors[0]
		self.doBackgroundColorAnimation()
		
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	// MARK: Recursive Background Color Animation	

	func doBackgroundColorAnimation() {
		
		if (self.backgroundColorAnimation!.backgroundColorIndex >= self.backgroundColors.count){
			 self.backgroundColorAnimation!.backgroundColorIndex = 0
		}
		
		
		UIView.animateWithDuration(self.backgroundColorAnimation!.duration,
															delay: self.backgroundColorAnimation!.delay,
															options: UIViewAnimationOptions.AllowUserInteraction,
															animations: {() in
																	self.view.backgroundColor = self.backgroundColors[self.backgroundColorAnimation!.backgroundColorIndex]
																	print("Animation i: ", self.backgroundColorAnimation!.backgroundColorIndex)
															},
															completion: {(value: Bool) in
																	++self.backgroundColorAnimation!.backgroundColorIndex
																	self.doBackgroundColorAnimation()
															})
	}

}


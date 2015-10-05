//
//  ViewController.swift
//  Background Animation in Swift
//
//  Created by alerikos on 10/4/15.
//  Copyright © 2015 AlexLerikos. All rights reserved.
//

import UIKit
import ChameleonFramework

class ViewController: UIViewController {
	
	// MARK: Properties
	var backgroundColorIndex = 0
	let backgroundColors:Array = [FlatRed,
																FlatOrange,
																FlatPink,
																FlatPurple,
																FlatYellow,
																FlatGreen,
																FlatBlue]


	override func viewDidLoad() {
		super.viewDidLoad()
		
		self.view.backgroundColor = backgroundColors[0]()
		self.doBackgroundColorAnimation()
		
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	// MARK: Recursive Background Color Animation	

	func doBackgroundColorAnimation() {
		
		
		if (self.backgroundColorIndex >= self.backgroundColors.count){
			self.backgroundColorIndex = 0
		}
		UIView.animateWithDuration(2.5,
															delay: 0.0,
															options: UIViewAnimationOptions.AllowUserInteraction,
															animations: {() in
																	self.view.backgroundColor = self.backgroundColors[self.backgroundColorIndex]()
																	print("Animation i: ", self.backgroundColorIndex)
															},
															completion: {(value: Bool) in
																	++self.backgroundColorIndex
																	self.doBackgroundColorAnimation()
															})
	}

}


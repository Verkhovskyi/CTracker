//
//  DateCheck.swift
//  CTracker
//
//  Created by Игорь Верховский on 22.04.2020.
//  Copyright © 2020 Ihor Verkhovskyi. All rights reserved.
//

import Foundation


func dateUpdate() {
	
	let currentDate = Int(Calendar.current.dateComponents([.day], from: Date()).day!)
	if currentDate != oldDate {
		days.append(0)
		oldDate = currentDate
	}
	
	print ("currentDate: \(currentDate)\nDays: \(days)\n")

}

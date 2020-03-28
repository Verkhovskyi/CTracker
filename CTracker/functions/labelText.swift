//
//  pushToLabel.swift
//  CTracker
//
//  Created by Игорь Верховский on 27.03.2020.
//  Copyright © 2020 Ihor Verkhovskyi. All rights reserved.
//

import Foundation

// Функция сбора информации в лейблы

func labelText () -> (daily: Int, weekly: Int, monthly: Int, perPack: Int) {
	weekly = 0
	monthly = 0
	
	day = days.count - 1
	
	week = days.count - 8
	while week < days.count {
		if week < 0 {
		   week += 1
			continue
		}
		weekly = weekly + days[week]
		week += 1
	}

	month = days.count - 31
	while month < days.count {
		if month < 0 {
			month += 1
			continue
		}
		monthly = monthly + days[month]
		month += 1
	}
	
	perPack = packs.count - 1
	
	return (days[day], weekly, monthly, packs[perPack])
}

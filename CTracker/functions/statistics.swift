//
//  statistics.swift
//  CTracker
//
//  Created by Игорь Верховский on 27.03.2020.
//  Copyright © 2020 Ihor Verkhovskyi. All rights reserved.
//

import Foundation

// Функция подсчета сигарет
    
func cigarettesSumm() {
	cigarettes = 0
	for cigarettesPerDay in days {
		cigarettes += cigarettesPerDay
	}
}
	
// Функция подсчёта средних значений
	
func avg() {
	avgPerDay = 0
	avgPerPack = 0
		
	avgPerDay = cigarettes / days.count
	avgPerPack = cigarettes / packs.count
}
    
// Функция сбора и вывода статистики
    
func statistics() -> String {
	cigarettesSumm()
	avg()
		
	return """
	\(days.count) days
	\(packs.count) packs
	\(cigarettes) cigarettes
		
	Average:
	\(avgPerDay) cigarettes per day
	\(avgPerPack) cigarettes per pack
	"""
}

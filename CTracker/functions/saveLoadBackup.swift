//
//  saveload.swift
//  CTracker
//
//  Created by Игорь Верховский on 27.03.2020.
//  Copyright © 2020 Ihor Verkhovskyi. All rights reserved.
//

import Foundation

// Бекап данных для функции "Отмена"

func backup() {
	backupDays = days																					// Присваивание текущего значения days oldDays
	backupPacks = packs																					// для дальнейшего бекапа из oldDays
	backupDate = oldDate
	
	print ("Backup\nDays: \(backupDays)\nPacks: \(backupPacks)\nDate: \(backupDate)\n")
}

// Функция сохранения данных
    
func saveData() {
	UserDefaults.standard.set(days, forKey: "daysList")
	UserDefaults.standard.set(packs, forKey: "packsList")
	UserDefaults.standard.set(backupDays, forKey: "backupDaysList")
	UserDefaults.standard.set(backupPacks, forKey: "backupPacksList")
	UserDefaults.standard.set(oldDate, forKey: "backupOldDate")
	UserDefaults.standard.synchronize()
        
	print("saveData\nDays: \(days)\nPacks: \(packs)\noldDate: \(oldDate)\n")
}
    
// Функция загрузки сохранённых данных
    
func loadData() {
        
	if let daysAvailable = UserDefaults.standard.array(forKey: "daysList") as? [Int] {					// Проверка наличия сохранённых данных
		days = daysAvailable																			// Если есть - загрузка, в противном случае дефолтное значение из vars
	}
        
	if let packsAvailable = UserDefaults.standard.array(forKey: "packsList") as? [Int] {
		packs = packsAvailable
	}
        
	if let oldDaysAvailable = UserDefaults.standard.array(forKey: "backupDaysList") as? [Int] {
		backupDays = oldDaysAvailable
	}
        
	if let oldPacksAvailable = UserDefaults.standard.array(forKey: "backupPacksList") as? [Int] {
		backupPacks = oldPacksAvailable
	}
	
	if let oldDateAvailable = UserDefaults.standard.object(forKey: "backupOldDate") as? Int {
		oldDate = oldDateAvailable
	}
        
	print("loadData\nDays: \(days)\nPacks: \(packs) \noldDate: \(oldDate)\n")
}

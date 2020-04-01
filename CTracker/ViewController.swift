//
//  ViewController.swift
//  CTracker
//
//  Created by Игорь Верховский on 17.03.2020.
//  Copyright © 2020 Ihor Verkhovskyi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
		
	// Лейблы
			
    @IBOutlet var cTodayLabel: UILabel!
	@IBOutlet var cWeeklyLabel: UILabel!
	@IBOutlet var cMonthlyLabel: UILabel!
	@IBOutlet var cPerPackLabel: UILabel!
    
	// Действия при загрузке приложения
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()																	// Загрузка пользовательских данных
		pushText()																	// Заполнение лейблов пользовательскими данными
    }
	
	/*
	Вставка информации в лейблы
	Так и не понял, как всё это сделать в отдельной функции
	*/
	
	func pushText() {
		let txt = labelText()														// Получение ретернов из labelText
		cTodayLabel.text = "\(txt.daily) cigarettes today"							// Вставка текста в лейбл
		cWeeklyLabel.text = "\(txt.weekly) cigarettes last week"
		cMonthlyLabel.text = "\(txt.monthly) cigarettes last month"
		cPerPackLabel.text = "\(txt.perPack) cigarettes per last pack"
	}
    
	// Кнопка "Отмена"
    
    @IBAction func undoButton(_ sender: UIButton) {
        days = backupDays
        packs = backupPacks
		pushText()																	// Обновление лейблов после выполнения действия
        saveData()																	// Синхронизация для загрузки данных при следующем запуске приложения
    }
    
	// Кнопка "Очистить"
    
    @IBAction func clearButton(_ sender: UIButton) {
        backup()																	// Создание бекапа для возможного использования undo
        days = [0]																	// Обнуление пользовательских данных
        packs = [0]
		pushText()
        saveData()
    }

	// Кнопка "Следующий день"
    
    @IBAction func nextDayButton(_ sender: UIButton) {
        backup()
        days.append(0)
		pushText()
        saveData()
    }
    
	// Кнопка "Следующая пачка"
    
    @IBAction func nextPackButton(_ sender: UIButton) {
        backup()
        packs.append(0)
		pushText()
        saveData()
    }
    
	// Кнопка "Следующая сигарета"
    
    @IBAction func nextCigaretteButton(_ sender: UIButton) {
        backup()
        days[day] = days[day] + 1
        pack = packs.count - 1
        packs[pack] = packs[pack] + 1
		pushText()
        saveData()
    }

	// Кнопка "Статистика"
    
    @IBAction func statisticsButton(_ sender: UIButton) {
		
		let alertMessage = statistics()
		
		let alert = UIAlertController(title: "Statistics", message: alertMessage, preferredStyle: .alert)		// Конфигурация алерта
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)								// Конфигурация кнопки в алерте
        alert.addAction(okButton)																				// Создание кнопки в алерте
        
        present(alert, animated: true, completion: nil)															// Конфигурация отображения алерта
		
    }
	
}

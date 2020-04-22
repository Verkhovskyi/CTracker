//
//  vars.swift
//  CTracker
//
//  Created by Игорь Верховский on 27.03.2020.
//  Copyright © 2020 Ihor Verkhovskyi. All rights reserved.
//

import Foundation
    
// Объявление переменных

// базовые значения основных величин

var days = [0]
var packs = [0]
var oldDate = Int(Calendar.current.dateComponents([.day], from: Date()).day!)

// бекапы для undo

var backupDays = [0]
var backupPacks = [0]
var backupDate = 0

// для подсчёта статистики

var cigarettes = 0
var avgPerDay = 0
var avgPerPack = 0
var summ = 0

// вспомогательные переменные для исользования в функциях

var day = 0
var pack = 0
var week = 0
var month = 0
var weekly = 0
var monthly = 0
var perPack = 0

//
//  main.swift
//  dz5 mes 2
//
//  Created by merim kasenova on 16/2/23.
//

import Foundation

//Домашнее задание №5.
//
//Создать по 3 примера перечислений.
//
//Создать структуру User c параметрами имя, фамилия, номер телефона. Создать enum из стран с кодами телефонов. Добавить параметр code в  структуру User. Создать класс DataBase с параметром массив юзеров и функций распечатки информации всех юзеров, функий распечатки только по определенной стране. В main cделать так, чтобы пользователь вводил все данные через ридлайн. Введенные данные должны записаться в массив в классе DataBase. Для телефона сделать 2 ридлайна, один для указывания страны по названию, другой для ввода номера. В общей информации номер телефона должен распечатываться в таком виде: “+996777777777”. Запрос для ввода данных сделать несколько раз циклом, чтобы можно было ввести разные данные.


let database = DataBase()

while true {
    print("Введите имя:")
    var name:String = readLine()!
    
    print("Введите фамилию:")
    var lastName:String = readLine()!
    
    print("Укажите страну:")
    var country: String = readLine()!
    
    var code: Code!
    
    switch country {
    case "UAE": code = .UAE
    case "UZB": code = .UZB
    case "KAZ": code = .KAZ
    case "RUS": code = .RUS
    default:
        code = .UAE
    }
    print("Введите номер телефона:")
    var telNumber: String = readLine()!
    
    let user = User(name: name, lastName: lastName, telNumber: telNumber, code: code)
    
    database.printUsers (user: user)
    database.usersAllInfo()
}



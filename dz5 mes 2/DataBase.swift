//
//  DataBase.swift
//  dz5 mes 2
//
//  Created by merim kasenova on 17/2/23.
//

import Foundation
//Создать класс DataBase с параметром массив юзеров и функций распечатки информации всех юзеров, функий распечатки только по определенной стране. В main cделать так, чтобы пользователь вводил все данные через ридлайн. Введенные данные должны записаться в массив в классе DataBase. Для телефона сделать 2 ридлайна, один для указывания страны по названию, другой для ввода номера. В общей информации номер телефона должен распечатываться в таком виде: “+996777777777”. Запрос для ввода данных сделать несколько раз циклом, чтобы можно было ввести разные данные.


class DataBase {
    var users: [User] = []
    
    func printUsers(user:User) {
        users.append(user)
    }
    
    func usersAllInfo() {
        for i in users {
            print(" \(i.name) \(i.lastName) \(i.code.rawValue) \(i.telNumber)")
        }
    }
    
    func userByCountry(code: Code) {
        for user in users {
            if user.code == code {
                print(" \(user.name) \(user.lastName) \(user.code.rawValue) \(user.telNumber)")
            }
        }
    }
}

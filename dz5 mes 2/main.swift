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

var database = DataBase()

print("Введите имя:")
var name:String = readLine()!

print("Введите фамилию:")
var lastName:String = readLine()!

print("Введите номер телефона:")
var telNumber: String = readLine()!

var country: String = readLine()!

var chosedCode: String = ""

var name1 = User(name: "Deni", lastName: "Devito", telNumber: "5735738",code: Code(rawValue: "971") ?? <#default value#>!

//                 var name2 = User(name: "Sofi", lastName: "Loren", telNumber: "688999",code: Code (rawValue: "+7") ?? <#default value#>)
                 var name2 = User(name: "Sofi", lastName: "Loren", telNumber: "36225",code: Code(rawValue: "+7") ?? <#default value#>)
                 var name3 = User(name: "Alan", lastName: "Daguev", telNumber: "575788", code: Code(rawValue: "+771") ?? <#default value#>)
                 var name4 = User(name: "Franco", lastName: "Derey", telNumber: "980696", code: Code(rawValue: "+988") ?? <#default value#>)

var users: [User] = [name1,name2,name3,name4]



switch telNumber {
case "UAE":
    chosedCode = Code.UAE.rawValue
case "RUS":
    chosedCode = Code.RUS.rawValue
case "UZB":
    chosedCode = Code.UZB.rawValue
case "KAZ":
    chosedCode = Code.KAZ.rawValue
default:
    ()
}



database.users.append(user)

database.usersInfo(users: database.users)

//
//  Item.swift
//  CustomTabBarSwiftUI
//
//  Created by Yago de Martin Lopez on 22/2/22.
//

import Foundation
import SwiftUI

struct Item: Identifiable {
    var id = UUID().uuidString
    var message: String
    var desc: String
    var tintColor: Color
}

var allItems = [ Item(message: "Voy al parque", desc: "John", tintColor: .red) ,  Item(message: "Voy al parque", desc: "John", tintColor: .red), Item(message: "Voy al parque", desc: "John", tintColor: .red), Item(message: "Voy al alcampo", desc: "Mari", tintColor: .red), Item(message: "Voy al parque", desc: "John", tintColor: .red), Item(message: "Voy al parque", desc: "John", tintColor: .green), Item(message: "Voy al ikea", desc: "Mary", tintColor: .red), Item(message: "Voy al space", desc: "Red", tintColor: .blue), Item(message: "Voy al parque", desc: "Rosa", tintColor: .pink), Item(message: "Voy al parque", desc: "John", tintColor: .red),Item(message: "Voy al parque", desc: "John", tintColor: .red) ,  Item(message: "Voy al parque", desc: "John", tintColor: .red), Item(message: "Voy al parque", desc: "John", tintColor: .red), Item(message: "Voy al alcampo", desc: "Mari", tintColor: .red), Item(message: "Voy al parque", desc: "John", tintColor: .red), Item(message: "Voy al parque", desc: "John", tintColor: .green), Item(message: "Voy al ikea", desc: "Mary", tintColor: .red), Item(message: "Voy al space", desc: "Red", tintColor: .blue), Item(message: "Voy al parque", desc: "Rosa", tintColor: .pink), Item(message: "Voy al parque", desc: "John", tintColor: .red)]

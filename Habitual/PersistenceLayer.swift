//
//  PersistenceLayer.swift
//  Habitual
//
//  Created by Gonzalo Birrueta on 3/1/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import Foundation

struct PersistenceLayer {

    // Step 1
    private(set) var habits: [Habit] = []

    // Step 2
    private static let userDefaultsHabitsKeyValue = "HABITS_ARRAY"

    init() {
        // Step 3
        self.loadHabits()
    }
    
    // Step 4
    private mutating func loadHabits() {

        // Step 5
        let userDefaults = UserDefaults.standard

        // Step 6
        guard
            let habitData = userDefaults.data(forKey: PersistenceLayer.userDefaultsHabitsKeyValue),
            let habits = try? JSONDecoder().decode([Habit].self, from: habitData) else {
                return
        }

        self.habits = habits
    }
    
    // Step 7
    @discardableResult

       // Step 8
       mutating func createNewHabit(name: String, image: Habit.Images) -> Habit {

           let newHabit = Habit(title: name, image: image)
           self.habits.insert(newHabit, at: 0) // Prepend the habits to the array
           self.saveHabits()

           return newHabit
       }
    
    
    private func saveHabits() {
        // Step 9
        guard let habitsData = try? JSONEncoder().encode(self.habits) else {
            fatalError("could not encode list of habits")
        }

        // Step 10
        let userDefaults = UserDefaults.standard
        userDefaults.set(habitsData, forKey: PersistenceLayer.userDefaultsHabitsKeyValue)
        userDefaults.synchronize()

    }
    
    
    // Step 11
    mutating func delete(_ habitIndex: Int) {
        // Remove habit at the given index
        self.habits.remove(at: habitIndex)

        // Persist the changes we made to our habits array
        self.saveHabits()
    }
}

//
//  ExerciseVM.swift
//  BookingApp
//
//  Created by Zaid Sheikh on 07/04/2023.
//

import Foundation

class ExerciseVM: ObservableObject{
    @Published var exercise: [Exercise] = []
    
    init(){
        self.addData()
    }
    
    func addData(){
        exercise = exerciseData
    }
    
    
    let exerciseData = [
        Exercise(icon: "weight", title: "Hong clean", bg: .init(gradient1: "completeText",gradient2: "blueBlue"),banner: "w1",desc: "Massive upper body",rating: "4.5",reviews: "204",detail: .init(img:"ex1", description: "On an inhalation forward into plank. On an exalhation bend your elbows and slowly lowe down to",duration: 16),cardImg: "ex1"),
        Exercise(icon: "leg", title: "Hands-up sit", bg: .init(gradient1: "blueBlue",gradient2: "completeText"),banner: "w2",desc: "Yoga",rating: "4.5",reviews: "204",detail: .init(img:"ex2", description: "On an inhalation forward into plank. On an exalhation bend your elbows and slowly lowe down to",duration: 12),cardImg: "ex2"),
        Exercise(icon: "hand", title: "Meditation", bg: .init(gradient1: "invoiceUnpaidBg",gradient2: "blueBlue"),banner: "w3",desc: "Massive upper body",rating: "4.5",reviews: "204",detail: .init(img:"ex1", description: "On an inhalation forward into plank. On an exalhation bend your elbows and slowly lowe down to",duration: 16),cardImg: "ex1"),
        Exercise(icon: "arm", title: "Up down", bg: .init(gradient1: "completeText",gradient2: "invoiceUnpaidText"),banner: "w2",desc: "Legs",rating: "4.5",reviews: "204",detail: .init(img:"ex3", description: "On an inhalation forward into plank. On an exalhation bend your elbows and slowly lowe down to",duration: 16),cardImg: "ex3"),
        Exercise(icon: "weight", title: "Hong clean", bg: .init(gradient1: "todoText",gradient2: "invoiceUnpaidText"),banner: "w1",desc: "Chest",rating: "4.5",reviews: "204",detail: .init(img:"ex4", description: "On an inhalation forward into plank. On an exalhation bend your elbows and slowly lowe down to",duration: 16),cardImg: "ex4"),
        Exercise(icon: "leg", title: "Hands-up sit", bg: .init(gradient1: "blueBlue",gradient2: "completeText"),banner: "w2",desc: "Yoga",rating: "4.5",reviews: "204",detail: .init(img:"ex2", description: "On an inhalation forward into plank. On an exalhation bend your elbows and slowly lowe down to",duration: 16),cardImg: "ex2"),
        Exercise(icon: "hand", title: "Meditation", bg: .init(gradient1: "invoiceUnpaidBg",gradient2: "blueBlue"),banner: "w3",desc: "Bicep",rating: "4.5",reviews: "204",detail: .init(img:"ex1", description: "On an inhalation forward into plank. On an exalhation bend your elbows and slowly lowe down to",duration: 16),cardImg: "ex1"),
        Exercise(icon: "arm", title: "Up down", bg: .init(gradient1: "completeText",gradient2: "invoiceUnpaidText"),banner: "w2",desc: "Tricep",rating: "4.5",reviews: "204",detail: .init(img:"ex3", description: "On an inhalation forward into plank. On an exalhation bend your elbows and slowly lowe down to",duration: 16),cardImg: "ex3"),
        Exercise(icon: "weight", title: "Hong clean", bg: .init(gradient1: "todoText",gradient2: "invoiceUnpaidText"),banner: "w1",desc: "Calves",rating: "4.5",reviews: "204",detail: .init(img:"ex4", description: "On an inhalation forward into plank. On an exalhation bend your elbows and slowly lowe down to",duration: 16),cardImg: "ex4"),
        Exercise(icon: "leg", title: "Hands-up sit", bg: .init(gradient1: "blueBlue",gradient2: "completeText"),banner: "w2",desc: "Yoga",rating: "4.5",reviews: "204",detail: .init(img:"ex1", description: "On an inhalation forward into plank. On an exalhation bend your elbows and slowly lowe down to",duration: 16),cardImg: "ex1"),
        Exercise(icon: "hand", title: "Meditation", bg: .init(gradient1: "invoiceUnpaidBg",gradient2: "blueBlue"),banner: "w3",desc: "Shoulder",rating: "4.5",reviews: "204",detail: .init(img:"ex2", description: "On an inhalation forward into plank. On an exalhation bend your elbows and slowly lowe down to",duration: 16),cardImg: "ex2"),
        Exercise(icon: "arm", title: "Up down", bg: .init(gradient1: "completeText",gradient2: "invoiceUnpaidText"),banner: "w2",desc: "Wings",rating: "4.5",reviews: "204",detail: .init(img:"ex3", description: "On an inhalation forward into plank. On an exalhation bend your elbows and slowly lowe down to",duration: 16),cardImg: "ex3"),
        Exercise(icon: "weight", title: "Hong clean", bg: .init(gradient1: "todoText",gradient2: "invoiceUnpaidText"),banner: "w1",desc: "Massive upper body",rating: "4.5",reviews: "204",detail: .init(img:"ex1", description: "On an inhalation forward into plank. On an exalhation bend your elbows and slowly lowe down to",duration: 16),cardImg: "ex1")
    ]
}

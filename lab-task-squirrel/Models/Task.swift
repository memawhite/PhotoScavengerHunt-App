//
//  Task.swift
//  lab-task-squirrel
//
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "🌸 Nature's Beauty",
                 description: "Capture a close-up photo of a blooming flower or an interesting plant."),
            Task(title: "🖼️ Urban Artistry",
                 description: "Find a piece of street art or graffiti and take a photo of it."),
            Task(title: "🪞 Reflections",
                 description: "Capture a clear reflection in a body of water, like a lake or pond."),
            Task(title: "💎 Hidden Gem",
                 description: "Photograph something unique or unusual that most people might overlook."),
            Task(title: "👥 Symmetry",
                 description: "Find a symmetrical object or building and take a perfectly centered photo of it."),
            Task(title: "👯‍♀️ Shadow Play",
                 description: "Capture an interesting shadow created by a natural or man-made object."),
            Task(title: "🌈 Color Explosion",
                 description: "Take a photo of the most colorful scene you can find in your surroundings."),
            Task(title: "👻 Candid Moment",
                 description: "Capture a candid shot of a stranger, showcasing a genuine emotion or action (be respectful and ask for permission if needed).")

        ]
    }
}

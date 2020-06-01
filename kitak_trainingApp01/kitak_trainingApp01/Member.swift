import Foundation
import UIKit

class Member  {
    //MARK: Properties
    var photo: UIImage?
    var name: String
    var team: String
    var year: String
    var whatever: String
    
    //MARK: Initialization
    init?(photo: UIImage?, name: String, team: String, year: String, whatever:String) {
        
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        guard !team.isEmpty else {
            return nil
        }
        
        guard !year.isEmpty else {
            return nil
        }
        
        guard !whatever.isEmpty else {
            return nil
        }
        
        // Initialize stored properties.
        self.photo = photo
        self.name = name
        self.team = team
        self.year = year
        self.whatever = whatever
    }
    
}

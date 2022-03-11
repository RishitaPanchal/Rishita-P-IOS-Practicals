import MapKit
import Foundation

class PinAnnotation: NSObject, MKAnnotation {

    var title: String?
    var coordinate: CLLocationCoordinate2D

    init(title: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.coordinate = coordinate
    }

}

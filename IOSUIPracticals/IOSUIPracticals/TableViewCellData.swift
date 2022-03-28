
import Foundation

// MARK: Dataclass for table section and row
class TableViewCellData {
   
    var chapterTitle: String
    var topics: [NavigationButton]
    
    init(chapterTitle: String, topics: [NavigationButton]) {
        self.chapterTitle = chapterTitle
        self.topics = topics
    }
    
}

// MARK: Array declaration 
class MainPageData {
    
    static let topicsData = [
        TableViewCellData(
            chapterTitle: "iOS-3A",
            topics: [
                NavigationButton(title: "BasicAutoLayout")
            ]
        ),
        TableViewCellData(
            chapterTitle: "iOS-3B",
            topics: [
                NavigationButton(title: "AdvanceAutolayout"),
                NavigationButton(title: "HuggingContentCompression")
            ]
        ),
        TableViewCellData(
            chapterTitle: "iOS-3C",
            topics: [
                NavigationButton(title: "ScrollView"),
                NavigationButton(title: "Practical1: SignUpSignIn"),
                NavigationButton(title: "TableviewWithCustomCell"),
                NavigationButton(title: "Practical 2 & 3"),
                NavigationButton(title: "SegmentControllToSwitchViews"),
                NavigationButton(title: "LifecycleDemo"),
                NavigationButton(title: "DatePicker"),
                NavigationButton(title: "WKWebview")
            ]
        ),
        TableViewCellData(
            chapterTitle: "iOS-3D",
            topics: [
                NavigationButton(title: "NavigationController"),
            ]
        )
    ]
    
}

// MARK: Dataclass for segue id
class NavigationButton {
    
    let title: String
    let segId: String
    
    init(title: String) {
        self.title = title
        self.segId = title
    }
    
}

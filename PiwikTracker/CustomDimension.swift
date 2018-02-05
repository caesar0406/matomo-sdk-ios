import Foundation

/// For more information on custom dimensions visit https://piwik.org/docs/custom-dimensions/
public struct CustomDimension {
    /// The index of the dimension. A dimension with this index must be setup in the piwik backend.
    let index: Int
    
    /// The value you want to set for this dimension.
    let value: String
    
    public init(index: Int, value: String) {
      self.index = index
      self.value = value
    }
}

@objc public class CustomDimensionObj:NSObject {
    /// The index of the dimension. A dimension with this index must be setup in the piwik backend.
    let index: Int
    
    /// The value you want to set for this dimension.
    let value: String
    
    init(index: Int, value: String) {
        self.index = index
        self.value = value
        super.init()
    }

    convenience override init() {
        self.init(index: 0, value: "")
    }
}

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
    var index: Int
    
    /// The value you want to set for this dimension.
    var value: String
    
    public override init() {
        self.index = 0
        self.value = ""
        super.init()
    }
    
    @objc public func setItemValue(index: Int, value: String) {
        self.index = index
        self.value = value
    }
    
    @objc public func getItemIndex()->Int {
        return self.index
    }
    
    @objc public func getItemValue()->String {
        return self.value
    }
    
    public convenience init(index: Int, value: String) {
        self.init()
        self.index = index
        self.value = value
    }
}

extension Collection where Iterator.Element: Comparable {
    func lessThanFirst() -> [Iterator.Element] {
        guard let first = self.first else { return [] }
        return self.filter { $0 < first }
    }
}

let items = [5, 6, 10, 4, 110, 3].lessThanFirst()
print(items)

extension Array where Element: Comparable {
    func lessThanFirst() -> [Element] {
        guard let first = self.first else { return [] }
        return self.filter { $0 < first }
    }
}

let items = [5, 6, 10, 4, 110, 3].lessThanFirst()
print(items)

#!/usr/bin/swift
import Foundation

struct Response: Decodable {
    let feed: Feed

    struct Feed: Decodable {
        let entry: [Entry]

        struct Entry: Decodable {
            let comment: String
            let rating: Int
            let title: String


            init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)

                comment = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .comment).decode(String.self, forKey: .label)
                rating  = Int(try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .rating).decode(String.self, forKey: .label))!
                title   = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .title).decode(String.self, forKey: .label)
            }

            private enum CodingKeys: String, CodingKey {
                case comment = "content"
                case rating  = "im:rating"
                case title

                case label
            }
        }
    }
}

func ratings(entries: [Response.Feed.Entry]) -> String {
    let countedSet = NSCountedSet()

    entries.forEach { countedSet.add($0.rating) }

    return (countedSet.allObjects as! [Int])
        .sorted(by: >)
        .reduce(into: "") { result, key in
            result.append("\(key): \(String(repeating: "*", count: countedSet.count(for: key)))\n")
    }
}

func reviews(entries: [Response.Feed.Entry]) -> String {
    return entries
        .filter { $0.rating <= 3 }
        .map({ """
            (\($0.rating)) - \($0.title)
            > \($0.comment)
            """
        }).joined(separator: "\n\n-\n\n")
}

let url = URL(string: "https://itunes.apple.com/gb/rss/customerreviews/id=1130498044/sortBy=mostRecent/json")!

URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in
    if let error = error {
        print(error.localizedDescription)
        exit(EXIT_FAILURE)
    }

    guard let httpResponse = response as? HTTPURLResponse, 200..<300 ~= httpResponse.statusCode else {
        print("Invalid response \(String(describing: response))")
        exit(EXIT_FAILURE)
    }

    if let data = data, data.count > 0 {
        do {
            let entries = try JSONDecoder().decode(Response.self, from: data).feed.entry
            print(ratings(entries: entries))
            print()
            print(reviews(entries: entries))
            exit(EXIT_SUCCESS)
        } catch {
            print("Failed to decode - \(error.localizedDescription)")
            exit(EXIT_FAILURE)
        }
    } else {
        print("No data!!")
        exit(EXIT_FAILURE)
    }
}).resume()

dispatchMain()

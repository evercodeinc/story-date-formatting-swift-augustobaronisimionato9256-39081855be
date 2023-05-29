import Foundation

@main
public struct DateFormatting {

    public static func main() {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        let date = formatter.date(from: "01/01/2022")

        print(DateFormatting().formatDate(date: date!))
    }

    func formatDate(date: Date) -> String {

        return ""
    }

    func dateFromString(dateString: String) -> Date? {

        return nil
    }
}

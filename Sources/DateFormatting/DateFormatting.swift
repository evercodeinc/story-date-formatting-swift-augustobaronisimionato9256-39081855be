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
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        
        return dateFormatter.string(from: date)
    }

    func dateFromString(dateString: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        dateFormatter.locale = Locale(identifier: "pt_BR")
        
        return dateFormatter.date(from: dateString)
    }
}

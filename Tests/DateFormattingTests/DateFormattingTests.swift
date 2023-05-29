import XCTest
@testable import DateFormatting

final class DateFormattingTests: XCTestCase {

    func testFormatDate() {

        let dateFormatting = DateFormatting()

        // Test with a known date
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        let date = formatter.date(from: "01/01/2022")

        let dateString = dateFormatting.formatDate(date: date!)
        XCTAssertEqual(dateString, "01/01/2022")
    }

    func testCreateDateFromString() {

        let dateFormatting = DateFormatting()

        // Test with a valid date string
        let dateString = "01/01/2022"
        let date = dateFormatting.dateFromString(dateString: dateString)
        XCTAssertNotNil(date)
        
        // Test with an invalid date string
        let invalidDateString = "invalid date string"
        let invalidDate = dateFormatting.dateFromString(dateString: invalidDateString)
        XCTAssertNil(invalidDate)
    }
}

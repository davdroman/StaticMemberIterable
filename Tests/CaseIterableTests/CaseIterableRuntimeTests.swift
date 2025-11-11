import CaseIterable
import Testing

@MainActor
@Suite
struct CaseIterableRuntimeTests {
	@CaseIterable
	enum CoffeeKind: Equatable {
		case espresso
		case latte
		case pourOver
	}

	@CaseIterable(.public)
	enum MenuSection {
		case breakfast, lunch, dinner
	}

	@Test func caseIterableMembers() {
		let cases = CoffeeKind.allCases

		#expect(cases.count == 3)
		#expect(cases.map(\.name) == ["espresso", "latte", "pourOver"])
		#expect(cases.map(\.title) == ["Espresso", "Latte", "Pour Over"])
		#expect(cases.map(\.value) == [.espresso, .latte, .pourOver])
		#expect(cases.map(\.id) == ["espresso", "latte", "pourOver"])
	}
}

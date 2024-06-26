package techpalace

import "strings"

// WelcomeMessage returns a welcome message for the customer.
func WelcomeMessage(customer string) string {
	return "Welcome to the Tech Palace, " + strings.ToUpper(customer)
}

// AddBorder adds a border to a welcome message.
func AddBorder(welcomeMsg string, numStarsPerLine int) string {
	var welcome string = ""
	welcome += strings.Repeat("*", numStarsPerLine) + "\n"
	welcome += welcomeMsg + "\n"
	welcome += strings.Repeat("*", numStarsPerLine)

	return welcome
}

// CleanupMessage cleans up an old marketing message.
func CleanupMessage(oldMsg string) string {
	oldMsg = strings.ReplaceAll(oldMsg, "*", "")
	oldMsg = strings.TrimSpace(oldMsg)
	return oldMsg
}

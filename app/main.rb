require "ferrum"

browser = Ferrum::Browser.new(
  browser_path: "/usr/bin/chromium",
  browser_options: {
    "no-sandbox": nil,
    "disable-dev-shm-usage": nil
  }
)

browser.go_to("https://example.com")

puts browser.current_url
puts browser.title

browser.quit
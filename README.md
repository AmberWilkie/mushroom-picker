# Mushroom Picker 🍄

## Installation
- `git clone https://github.com/AmberWilkie/mushroom-picker`
- `bundle`
- `rails db:migrate`
- `rails db:seed`
- `rails s`

## Ideas for improvement
- Find a way to loop through the params and search by all of them.
- Pagination. With more time, I'd implement pagination instead of just taking the first 100 items from the mushroom array.
- Testing. I typically use RSpec and in a program like this I'd expect to unit test the `MushroomHelper` (with mocks for the data service) and include integration tests for the UI.


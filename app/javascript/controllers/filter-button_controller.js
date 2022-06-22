import { Controller } from "stimulus"

export default class extends Controller {

  static targets = ["category", "card"]

  filter() {
    const categories = this.categoryTargets
    const categories_checked = categories.filter(category => category.checked)
    const categories_id = categories_checked.map(category => category.id)
    const formObject = {}
    new FormData(document.querySelector("form#search-form")).forEach((value, fieldName) => formObject[fieldName] = value)
    fetch(
      "/producers/filter",
      {
        method: 'POST',
        headers: {
          "Accept": "text/plain",
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          categories_id: categories_id,
          ...formObject
         })
      }
    )
      .then(response => response.text())
      .then((data) => {
        const cards = document.querySelector(".cards")
        cards.innerHTML = data
      })
  }

  // Micro on filter to listen the click
  // Get the ids of the filters "clicked"/"checked"
  // Get the cards that share the id's with the filters
}

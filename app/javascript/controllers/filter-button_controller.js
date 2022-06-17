import { Controller } from "stimulus"

export default class extends Controller {

  static targets = ["categories"]

  connect() {
    console.log("hola")
  }

  filter() {
    console.log(this.categoriesTarget)
  }

  // Micro on filter to listen the click
  // Get the ids of the filters "clicked"/"checked"
  // Get the cards that share the id's with the filters
}

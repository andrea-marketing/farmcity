import { Controller } from "stimulus"

export default class extends Controller {

  static targets = ["categories"]

  connect() {
    console.log("hola")
  }

  filter() {
    console.log(this.categoriesTarget)
    
  }
}

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "image" ]
  connect () {
    const spinner = this.imageTarget
    console.log(spinner)
  }

  display() {
  const spinner = this.imageTarget
  spinner.classList.remove('d-none');
  }
}

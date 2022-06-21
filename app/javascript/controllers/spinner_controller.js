import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "image", "link" ]
  connect () {
    const spinner = this.imageTarget
  spinner.classList.add('d-none');
    console.log(spinner)
  }

  display(e) {
    e.preventDefault()
    const spinner = this.imageTarget
    spinner.classList.remove('d-none');
    setTimeout(() => {
      this.linkTarget.click();
    }, 2000);

  }
}

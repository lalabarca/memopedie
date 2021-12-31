import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['bar', 'toggler', 'menu', 'blur'];

  show() {
    this.barTarget.classList.toggle("d-block");
  }

  hide() {
    this.barTarget.classList.remove("d-block");
  }

  slide() {
    this.togglerTarget.classList.toggle("active");
    this.menuTarget.classList.toggle("active");
    this.blurTarget.classList.toggle("active");
  }
}

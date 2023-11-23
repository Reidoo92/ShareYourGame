import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglabelElement"];
  connect() {}

  fire(event) {
    event.preventDefault();
    this.togglabelElementTarget.classList.toggle("d-none");
  }
}

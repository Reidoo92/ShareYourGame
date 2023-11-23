import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="birthday"
export default class extends Controller {
  connect() {
    flatpickr(this.element);
  }
}

import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="counter"
export default class extends Controller {
  static targets = ["output"]
  connect() {
    this.count = 0;
  }

  increment(){
    this.count += 1;
    this.outputTarget.textContent = `JS a cliqué sur le bouton ${this.count} fois`
  }
}

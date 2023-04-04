import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="coucou"
export default class extends Controller {
  connect() {
    console.log('coucou')
  }
}

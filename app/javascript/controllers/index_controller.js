
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = [ "image" ]

    connect() {
        console.log('coucou')
        this.imageStatus = true
    }

    toggle() {
        if(this.imageStatus == true){
            console.log('coucou');
            this.imageStatus = false;
            this.imageTarget.classList.add("hidden");
        }else{
            console.log('cezczczc')
            this.imageStatus = true;
            this.imageTarget.classList.remove("hidden");    
        }
    }
}




import { initSweetalert } from '../plugins/init_sweetalert';

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "button" ]

  connect() {
    console.log(this.buttonTargets)
  }

  sweet(e) {
    console.log(e.currentTarget)
    const sweetId = parseInt(e.currentTarget.dataset.id);
    const button = `#sweet-alert-demo-${sweetId}`;
    initSweetalert(button, {
      title: "Are you sure?",
      text: "If you cancel this booking, there might be some additional costs",
      icon: "warning",
      // showCancelButton: true,
      // confirmButtonColor: '#3085d6',
      // cancelButtonColor: '#d33',
      // confirmButtonText: 'Yes, delete it!'
    }, (value) => {
      console.log(value);
      if (value) {
        const link = document.querySelector(`#delete-link-${sweetId}`);
        link.click();
      }
    });
  }
}

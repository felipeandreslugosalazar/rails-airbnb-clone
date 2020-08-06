const btn = document.getElementById("cancel-button");

const initModal = btn.addEventListener('click', () => {
    Swal.fire({
        title: 'Are you sure?',
        text: 'Do you really want to cancel your Booking? There might be some additional costs!',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Yes, cancel my booking!',
        cancelButtonText: 'No, keep it'
      }).then((result) => {
        if (result.value) {
          Swal.fire(
            'Booking cancelled!',
            'You will reveive a confirmation mail within the next 48h',
            'success'
          )
        // For more information about handling dismissals please visit
        // https://sweetalert2.github.io/#handling-dismissals
        } else if (result.dismiss === Swal.DismissReason.cancel) {
          Swal.fire(
            'Good choice!!',
            'Your booking is still active!',
            'error'
          )
        }
      })
});

export { initModal };
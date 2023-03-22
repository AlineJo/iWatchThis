export function toggleModal() {
    // Get the modal element
    let modalElement = document.getElementById("addModal");

    // Create a Bootstrap modal instance
    let modal = bootstrap.Modal.getInstance(modalElement);

    // Hide the modal
    modal.toggle();
}


// JavaScript for live image preview
const imageUpload = document.getElementById('imageUpload');
const imagePreview = document.getElementById('imagePreview');

imageUpload.addEventListener('change', function(event) {
    console.log("okay")
    const file = event.target.files[0];
    if (file) {
        const reader = new FileReader();
        reader.onload = function(e) {
            imagePreview.src = e.target.result;
            imagePreview.style.display = 'block';
        };
        reader.readAsDataURL(file);
    }
});

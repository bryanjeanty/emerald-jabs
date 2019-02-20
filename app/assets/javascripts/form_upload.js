document.addEventListener('DOMContentLoaded', () => {
    document.addEventListener("turbolinks:load", () => {
        let uploadBtn = document.querySelectorAll('.upload-btn');
        let uploadLabel = document.querySelectorAll('.upload-label');
            for(let i = 0; i < uploadBtn.length; i++) {
                uploadLabel[i].addEventListener('click', (event) => {
                    uploadBtn[i].click();
                    uploadBtn[i].addEventListener('change', (event) => {
                        uploadLabel[i].innerHTML = `${ uploadBtn[i].files[0].name }`;
                });
            });
        }
    });
});
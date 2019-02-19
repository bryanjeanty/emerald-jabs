document.addEventListener('DOMContentLoaded', () => {
    document.addEventListener("turbolinks:load", () => {
        let commentUploadBtn = document.querySelector('.comment-upload-btn');
            let commentUploadLabel = document.querySelector('.comment-upload-label');
            commentUploadLabel.addEventListener('click', (event) => {
                commentUploadBtn.click();
                commentUploadBtn.addEventListener('change', (event) => {
                    commentUploadLabel.innerHTML = `${ commentUploadBtn.files[0].name }`;
                    console.log(commentUploadBtn.files);
                    console.log(commentUploadBtn.files[0].name);
            });
        });
    });
});
document.addEventListener('DOMContentLoaded', () => {
  document.addEventListener("turbolinks:load", () => {
    let quill = new Quill('#editor', {
      theme: 'snow'
    });

    let editorContentsLink = document.querySelector('.editor-contents');

    function getContents() {
      let HTMLContents = quill.root.innerHTML;
      let plainText = HTMLContents.replace(/<\/?[^>]+>/ig, " ");
      let editorContentsHref = editorContentsLink.getAttribute("href");
      editorContentsHref += plainText;
      window.location = editorContentsHref;
    }

    editorContentsLink.addEventListener('click', (event) => {
      event.preventDefault();
      getContents();
    });
  });
});

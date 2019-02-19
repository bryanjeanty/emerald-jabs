document.addEventListener('DOMContentLoaded', () => {
  document.addEventListener("turbolinks:load", () => {
    // let logAsHTMLBtn = document.querySelector('.log-as-html-btn');

    let quill = new Quill('#editor', {
      theme: 'snow'
    });

    // function logHTMLContent() {
    //   let JSONContents = JSON.stringify(quill.getContents());
    //   let JSObject = JSON.parse(JSONContents);
    //   let HTMLContents = quill.root.innerHTML;
    //   let plainText = HTMLContents.replace(/<\/?[^>]+>/ig, " ");
    //   console.log(JSONContents);
    //   console.log("");
    //   console.log(JSObject);
    //   console.log("");
    //   console.log(HTMLContents);
    //   console.log("");
    //   console.log(plainText);
    // }

    // logAsHTMLBtn.addEventListener('click', (event) => {
    //   event.preventDefault();
    //   logHTMLContent();
    // });

    let downloadAsPDFBtn = document.querySelector('.download-as-pdf-btn');
    let editorContentsLink = document.querySelector('.editor-contents');
    let randomAdd = document.querySelector('.random-add');
    // let editorPDFForm = document.querySelector('.editor-pdf-form');

    function getContents() {
      let HTMLContents = quill.root.innerHTML;
      let plainText = HTMLContents.replace(/<\/?[^>]+>/ig, " ");
      // let editorContentsHref = editorContentsLink.getAttribute("href");
      // editorContentsHref += plainText;
      // console.log(editorContentsLink.getAttribute("href"));
      console.log(plainText);
    }

    randomAdd.addEventListener('click', (event) => {
      event.preventDefault();
      // getContents();
      // editorPDFForm.submit();
      // console.log(editorContentsInput);
    });
  });
});


    // // var form = document.querySelector('form');
    // let editorForm = document.querySelector('.editor-form');
    // let saveBtn = document.querySelector('.editor-save-btn');
    // // form.onsubmit = function() {
    // saveBtn.addEventListener('click', (event) => {
    //   event.preventDefault();
    //   editorForm.submit();
    //   editorForm.addEventListener('submit', (event) => {
    //     let about = document.querySelector('input[name=about]');
    //     about.value = JSON.stringify(quill.getContents());
      
    //     console.log("Submitted", $(form).serialize(), $(form).serializeArray());
    //     return false;
    //   });
    // });
    //   // Populate hidden form on submit
    // //   var about = document.querySelector('input[name=about]');
    // //   about.value = JSON.stringify(quill.getContents());
      
    // //   console.log("Submitted", $(form).serialize(), $(form).serializeArray());
      
    // //   // No back end to actually submit to!
    // //   // alert('Open the console to see the submit data!')
    // //   return false;
    // // };
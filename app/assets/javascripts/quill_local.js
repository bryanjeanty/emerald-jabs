document.addEventListener('DOMContentLoaded', () => {
  document.addEventListener("turbolinks:load", () => {
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
    let logAsHTMLBtn = document.querySelector('.log-as-html-btn');
    let quill = new Quill('#editor', {
      theme: 'snow'
    });

    function logHTMLContent() {
      let JSONContents = JSON.stringify(quill.getContents());
      let JSObject = JSON.parse(JSONContents);
      let HTMLContents = quill.root.innerHTML;
      let plainText = HTMLContents.replace(/<\/?[^>]+>/ig, " ");
      console.log(JSONContents);
      console.log("");
      console.log(JSObject);
      console.log("");
      console.log(HTMLContents);
      console.log("");
      console.log(plainText);
    }

    function saveContents() {
      let HTMLContents = quill.root.innerHTML;
      let plainText = HTMLContents.replace(/<\/?[^>]+>/ig, " ");
    }
    
    logAsHTMLBtn.addEventListener('click', (event) => {
      event.preventDefault();
      logHTMLContent();
    })
  });
});

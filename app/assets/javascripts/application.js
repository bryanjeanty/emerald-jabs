// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
document.addEventListener('DOMContentLoaded', () => {
    document.addEventListener("turbolinks:load", () => {
        let comment = document.querySelectorAll('.comment');
        let editCommentForm = document.querySelectorAll('.edit-comment-form');
        let editCommentBtn = document.querySelectorAll('.edit-comment-btn');
        let postText = document.querySelectorAll('.post-text');

        function toggleEditComment(elem1, elem2) {
            elem1.style.display = 'block';
            elem2.style.display = 'none';
        }

        for(let i = 0; i < postText.length; i++) {
            if (postText[i].innerHTML.includes("@")) {
                let newStr = postText[i].innerHTML
                newRes = newStr.replace("@", "<mark style='background-color: red'>");
                postText[i].innerHTML = `${ newRes }`
            }
            if (postText[i].innerHTML.includes("$")) {
                let newStr = postText[i].innerHTML
                newRes = newStr.replace("$", "</mark>");
                postText[i].innerHTML = `${ newRes }`
            }
        }

        for(let i = 0; i < comment.length; i++) {
            editCommentBtn[i].addEventListener('click', (event) => {
                if (editCommentForm[i].style.display == 'none') {
                    toggleEditComment(editCommentForm[i], comment[i]);
                } else {
                    toggleEditComment(comment[i], editCommentForm[i]);
                }
            })
        }
    });
});
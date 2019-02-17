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

        function toggleEditComment(elem1, elem2) {
            elem1.style.display = 'block';
            elem2.style.display = 'none';
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

        let postText = document.querySelectorAll('.post-text');
        let highlightTextBox = document.querySelectorAll('.highlight-text-box');

        function storeHighlight(elem) {
            elemArr = elem.split("");
            let highlightArr = [];
            for (let i = 0; i < elemArr.length; i++) {
                if ((elemArr[i] == "[") && (elemArr[i+1] == "[")) {
                    for(let j = i+2; j < elemArr.length; j++) {
                        highlightArr.push(elemArr[j]);
                        if ((elemArr[j+1] == "]") && (elemArr[j+2] == "]")) {
                            highlightArr.push("<br>");
                            break;
                        }
                    }
                }
            }
            let highlight = highlightArr.join("");
            return highlight;
        }

        for (let i = 0; i < postText.length; i++) {
            let postStr = postText[i].innerHTML;
            let highlightText = storeHighlight(postStr);
            // highlightText.innerHTML += storeHighlight(postStr);
            // highlightTextBox[i].appendChild(highlightText);
            highlightTextBox[i].innerHTML += `${ highlightText }`;
        }

        function replaceAll(elem, marker, highlight) {
            let newStr = elem.innerHTML;
            newStr = newStr.split(marker);
            newStr = newStr.join(highlight);
            elem.innerHTML = `${ newStr }`
        }

        for(let i = 0; i < postText.length; i++) {
            if (postText[i].innerHTML.includes("[[")) {
                replaceAll(postText[i], "[[", "<mark style='background-color: red'>");
            }
            if (postText[i].innerHTML.includes("]]")) {
                replaceAll(postText[i], "]]", "</mark>");
            }
        }
    });
});
// ==UserScript==
// @name         GItHubFileListing
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  try to take over the world!
// @author       You
// @match        https://github.com/ravisayal/*
// @grant        none
// ==/UserScript==

(function() {
    'use strict';

    //const fileElems = //document.querySelectorAll("#ghx-content-group > div.ghx-backlog-group > div.ghx-backlog-container.ghx-open.ghx-everything-else.ui-droppable > div.ghx-issues.js-issue-list.ghx-has-issues > div > div.ghx-issue-content > div > div.ghx-summary");
    //var fileElems = document.querySelectorAll("#ghx-content-group > div.ghx-backlog-group > div.ghx-backlog-container.ghx-open.ghx-everything-else.ui-droppable > div.ghx-issues.js-issue-list.ghx-has-issues > div > div.ghx-issue-content > div > div.ghx-key > a");
    var docElems = document.querySelectorAll("#js-repo-pjax-container > div.container-xl.clearfix.new-discussion-timeline.px-3.px-md-4.px-lg-5 > div > div.Box.mb-3 > div.js-details-container.Details > div > div > div.flex-auto.min-width-0.col-md-2.mr-3 > span > a");
    //'#files div.file-info a.link-gray-dark');
    var docItems = [];

    for (let a of docElems) {
        docItems.push(a.title);
    }

    var docItemsStr = docItems.join('\n');
    console.log(docItemsStr);
    copy(docItemsStr);
    console.log('Copied to the clipboard as well 😁');
})();

// ==UserScript==
// @name         TWS-Maestro-Set Default Priority
// @namespace    http://fujitsu-internal/
// @version      0.1
// @description  Default the Job Priority level
// @author       You
// @match        http://twsprd.cadm.harvard.edu:1888/tws_submit*
// @grant        none
// ==/UserScript==

(function() {
    'use strict';
//    window.alert("Debug Message 1");
    document.getElementsByName("privalue")[0].value = "0";
})();

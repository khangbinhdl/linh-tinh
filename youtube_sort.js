// ==UserScript==
// @name         Sort youtube videos
// @namespace    http://tampermonkey.net/
// @author       Binh
// @match        https://www.youtube.com/c/*/video*
// @icon         https://www.google.com/s2/favicons?domain=youtube.com
// @grant        none
// ==/UserScript==

(function () {
  'use strict';
  const sortMenu = document.querySelector('#sort-menu');
  sortMenu.style.background = 'dark';
  sortMenu.style.padding = '8px';
  sortMenu.style.borderRadius = '2px';
  // sortMenu.style.boxShadow = 'var(--shadow-elevation-2dp_-_box-shadow)';
  sortMenu.style.fontSize = '1.2em';
  sortMenu.style.color = 'white'
  sortMenu.innerHTML = `
  <label for="sort-select"">Sắp xếp theo:</label>
 <select name="sort-select" id="sort-select" onchange="location = this.value;">
    <option disabled selected value>  </option>
    <option value="?view=0&sort=p&flow=grid">Phổ biến nhất</option>
    <option value="?view=0&sort=da&flow=grid">Ngày thêm (cũ nhất)</option>
    <option value="?view=0&sort=dd&flow=grid">Ngày thêm (mới nhất)</option>
  </select>
    `;
})();

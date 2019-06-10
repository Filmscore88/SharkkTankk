Inventor show page only for current_investor, the link to inventor show page on the Invention show page only if current_investor

Last thing, if there is time in the invetion_investments index page, try adding total amounts seperated by investors and keep the list limited to 1 occurence of the invention. Since each item listed is actually a transaction, there can be multiple on the same invention

before_action autheticaion_required

fix authenticate password issue

add investments to inventions show page

add the edit functionality for inventions

!!!!!In the inventor inventions show page, add investments with investor name and investment amount, change investment amount to integer so you can a total column for all investment totals!!!!!

delete any attributes not uses









1-Authentication password and login for everything
2-Authorization for who gets to see what
3-Scoping

4-Your forms should correctly display validation errors. a. Your fields should be enclosed within a fields_with_errors class b. Error messages describing the validation failures must be present within the view

5-Validations
6-HTML CSS
7-Blog/Video



<div class="h30 pt4 px3 mb1px">
  <div class="clamp-5 navy-500 mb3 hover-target">
    <a href="https://www.kickstarter.com/projects/granzella/r-type-final-2-aiming-for-a-brand-new-the-best-shmup-ever?ref=discovery" class="soft-black mb3">
      <h3 class="type-18 light hover-item-text-underline mb1">R-Type Final 2, Aiming for a Brand-New, the Best Shmup Ever</h3>
      <div class="hide block-sm">
        <p class="dark-grey-400 type-14 text-decoration-none clamp-2">Using the latest technology, create and bring out the newest game of the side-scrolling shooter legend R-Type series into the world.</p>
      </div>
    </a>
  </div>
  <div class="type-13 flex">
    <div class="inline-block">
      <span class="soft-black">by</span>
       <a href="https://www.kickstarter.com/profile/granzella?ref=discovery" class="soft-black hover-text-underline medium">Granzella Inc.</a>
     </div>
   </div>
 </div>
 <div class="pb3 pt3 px3-sm px4">
   <div class="h20-sm pt1px">
     <div class="bg-grey-400 mb3 w100p">
       <div class="bg-ksr-green-700 h3px" style="width: 100%;">
       </div>
     </div>
     <div class="ksr-green-700 medium">
       <div class="type-13 mr2">
         <span>¥52,135,845</span>
         <span class="ml1 normal">pledged</span>
       </div>
       <div class="type-13 mr2 dark-grey-500 medium">
         <span>115%</span>
         <span class="ml1 normal">funded</span>
       </div>
       <div class="type-13 ksr_page_timer mr2 dark-grey-500 medium" data-end_time="1560265200000">
         <span class="js-num">6</span>
         <span class="js-text ml1">days to go</span>
       </div>
       <div class="type-12 mb2 mt3 medium inline-block">
         <a class="dark-grey-500 hover-soft-black text-underline" href="http://www.kickstarter.com/discover/categories/games/video%20games?ref=discovery">Video Games</a>
       </div>
       <div class="type-12 mb2 mt3 ml4 medium inline-block">
         <svg class="svg-icon__map-pin icon-12 mr3px mb1px fill-dark-grey-500" aria-hidden="true">
           <use xlink:href="#map-pin">
           </use>
         </svg>
         <a class="dark-grey-500 hover-soft-black text-underline" href="https://www.kickstarter.com/discover/places/ishikawa-uruma-shi-jp?ref=discovery">Ishikawa, Japan</a>
       </div>
     </div>
   </div>
 </div>
</div>
</div>
</div>
</div>
















<div class="h30 pt4 px3 mb1px">
  <div class="clamp-5 navy-500 mb3 hover-target">
    <a <%=link_to @invention.name%> class="soft-black mb3">
      <h3 class="type-18 light hover-item-text-underline mb1"><%= @invention.name%></h3>
      <div class="hide block-sm">
        <p class="dark-grey-400 type-14 text-decoration-none clamp-2">Using the latest technology, create and bring out the newest game of the side-scrolling shooter legend R-Type series into the world.</p>
      </div>
    </a>
  </div>
  <div class="type-13 flex">
    <div class="inline-block">
      <span class="soft-black">by</span>
       <a href="https://www.kickstarter.com/profile/granzella?ref=discovery" class="soft-black hover-text-underline medium">Granzella Inc.</a>
     </div>
   </div>
 </div>
 <div class="pb3 pt3 px3-sm px4">
   <div class="h20-sm pt1px">
     <div class="bg-grey-400 mb3 w100p">
       <div class="bg-ksr-green-700 h3px" style="width: 100%;">
       </div>
     </div>
     <div class="ksr-green-700 medium">
       <div class="type-13 mr2">
         <span>¥52,135,845</span>
         <span class="ml1 normal">pledged</span>
       </div>
       <div class="type-13 mr2 dark-grey-500 medium">
         <span>115%</span>
         <span class="ml1 normal">funded</span>
       </div>
       <div class="type-13 ksr_page_timer mr2 dark-grey-500 medium" data-end_time="1560265200000">
         <span class="js-num">6</span>
         <span class="js-text ml1">days to go</span>
       </div>
       <div class="type-12 mb2 mt3 medium inline-block">
         <a class="dark-grey-500 hover-soft-black text-underline" href="http://www.kickstarter.com/discover/categories/games/video%20games?ref=discovery">Video Games</a>
       </div>
       <div class="type-12 mb2 mt3 ml4 medium inline-block">
         <svg class="svg-icon__map-pin icon-12 mr3px mb1px fill-dark-grey-500" aria-hidden="true">
           <use xlink:href="#map-pin">
           </use>
         </svg>
         <a class="dark-grey-500 hover-soft-black text-underline" href="https://www.kickstarter.com/discover/places/ishikawa-uruma-shi-jp?ref=discovery">Ishikawa, Japan</a>
       </div>
     </div>
   </div>
 </div>
</div>
</div>
</div>
</div>

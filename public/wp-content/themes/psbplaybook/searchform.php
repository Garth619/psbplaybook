<form role="search" method="get" class="search-form" action="<?php echo home_url('/'); ?>">

  <div class='search-wrapper'>
    <label>
      <span class="screen-reader-text"><?php echo _x('Search for:', 'label') ?></span>
    </label>
    <input type="search" class="search-field" placeholder="<?php echo esc_attr_x('Search', 'placeholder') ?>"
      value="<?php echo get_search_query() ?>" name="s" title="<?php echo esc_attr_x('Search for:', 'label') ?>" />
    <img class='search-icon' src='<?php bloginfo('template_directory');?>/images/search.svg' alt='' />
  </div><!-- search-wrapper -->
  <div class='submit-wrapper'>
    <input type="submit" class="search-submit" value="<?php echo esc_attr_x('', 'submit button') ?>" />
    <img class='submit-img' src='<?php bloginfo('template_directory');?>/images/arrow-three.svg' alt='' />
  </div><!-- submit-wrapper -->

</form>
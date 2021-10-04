<?php get_header();?>

<div id="internal-main">

  <div id='page-container' class='two-col'>

    <div id='page-content'>

      <?php if (have_posts()): ?>

      <h1 id='page-title' class='blog-title'>
        <?php printf(__('Search Results for: %s', 'twentyten'), '<span>' . get_search_query() . '</span>');?></h1>
      <!-- page-header -->

      <div id='page-content-inner'>

        <?php get_template_part('loop', 'index');?>

      </div><!-- page-content-inner -->

      <?php else: ?>

      <h1 id='page-title' class='blog-title'>
        <?php printf(__('Search Results for: %s', 'twentyten'), '<span>' . get_search_query() . '</span>');?></h1>
      <!-- page-header -->

      <div id='page-content-inner' class='content'>

        <h2>Nothing Found</h2>

        <p>Sorry, but nothing matched your search criteria.</p>

      </div><!-- page-content-inner -->

      <?php endif;?>

    </div><!-- page-content -->

    <?php if (!get_field('disable_sidebar')) {

    get_sidebar('blog');

}?>

  </div><!-- page-container -->

</div><!-- internal-main -->

<?php get_footer();?>
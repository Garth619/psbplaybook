<?php get_header();?>

<div id="internal-main">

  <div id='page-container'>

    <?php the_content();?>

    <?php if (!get_field('disable_sidebar')) {

    get_sidebar();

}?>

  </div><!-- page-container -->

</div><!-- internal-main -->

<?php get_footer();?>
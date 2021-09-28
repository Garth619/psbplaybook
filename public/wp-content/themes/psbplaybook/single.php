<?php get_header();?>

<div id="internal-main">

  <?php get_template_part('loop', 'single');?>

  <?php if (!get_field('disable_sidebar')) {

    get_sidebar();

}?>

</div><!-- internal-main -->

<?php get_footer();?>
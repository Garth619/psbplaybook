<?php get_header();?>

<?php get_header();?>

<div id="internal-main">

  <div id='page-container' class='two-col'>

    <div id='page-content'>

      <h1 id='page-title' class='blog-title'>
        <?php printf(__('<span>%s</span>'), get_the_date(_x('Y', 'yearly archives date format')));?></h1>
      <!-- page-header -->

      <div id='page-content-inner'>

        <?php get_template_part('loop', 'index');?>

      </div><!-- page-content-inner -->

    </div><!-- page-content -->

    <?php if (!get_field('disable_sidebar')) {

    get_sidebar('blog');

}?>

  </div><!-- page-container -->

</div><!-- internal-main -->

<?php get_footer();?>
<?php

/* Template Name: Contact */

get_header();?>

<div id="internal-main">

  <div id='page-container' class='two-col'>

    <div id='page-content'>

      <h1 id='page-title'><?php the_title();?></h1><!-- page-header -->

      <div id='page-content-inner' class='content'>

        <?php the_content();?>

        <?php get_template_part('page-templates/includes/contactform/template', 'contact_form');?>

      </div><!-- page-content-inner -->

    </div><!-- page-content -->

    <?php if (!get_field('disable_sidebar')) {

    get_sidebar();

}?>

  </div><!-- page-container -->

</div><!-- internal-main -->

<?php get_footer();?>
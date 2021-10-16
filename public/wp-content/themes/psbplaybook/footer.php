<footer>

  <div id='footer-inner'>

    <div id='footer-logo'>

      <a href='<?php bloginfo('url');?>/?home'>

        <?php $logo = get_field('logo', 'option');?>

        <img src="<?php echo $logo['url']; ?>" alt="<?php echo $logo['alt']; ?>" />

      </a>

    </div><!-- footer-logo -->

    <div id='footer-info'>

      <div class='footer-info-row'>

        <span class='footer-info-title'><?php the_field('toll_free_title', 'option');?></span><!-- footer-info-title -->

        <a class='footer-info-content'
          href='tel:+1<?php echo str_replace(['-', '(', ')', ' '], '', get_field('phone', 'option')); ?>'><?php the_field('phone', 'option');?></a>
        <!-- footer-info-content -->

      </div><!-- footer-info-row -->

      <div class='footer-info-row'>

        <span class='footer-info-title'><?php the_field('main_website_title', 'option');?></span>
        <!-- footer-info-title -->

        <a class='footer-info-content' href='<?php the_field('website_link', 'option');?>' target='_blank'
          rel='noopener'><?php the_field('website_verbiage', 'option');?></a><!-- footer-info-content -->

      </div><!-- footer-info-row -->

    </div><!-- footer-info -->

    <div id='footer-social-icon'>

      <?php if (have_rows('social_media', 'option')): ?>
      <?php while (have_rows('social_media', 'option')): the_row();?>

      <?php

    if (get_sub_field('icon') == 'LinkedIn') {
        $social_icon = 'linkedin';
    }
    if (get_sub_field('icon') == 'Instagram') {
        $social_icon = 'insta';
    }
    if (get_sub_field('icon') == 'Twitter') {
        $social_icon = 'twitter';
    }
    if (get_sub_field('icon') == 'Facebook') {
        $social_icon = 'facebook';
    }

    ?>

      <a href='	<?php the_sub_field('link');?>' target='_blank' rel='noopener'>

        <?php echo file_get_contents(get_template_directory() . '/images/' . $social_icon . '.svg'); ?>

      </a>

      <?php endwhile;?>

      <?php endif;?>

    </div><!-- footer-social-icon -->

  </div><!-- footer-inner -->

  <div id='copyright'>

    <div id='copyright-inner'>

      <ul>
        <li>Copyright &copy; <?php echo date('Y'); ?> <?php the_field('law_firm_name_and_rights', 'options');?> </li>
        <?php if (have_rows('copyright_links', 'options')): ?>
        <?php while (have_rows('copyright_links', 'options')): the_row();?>

        <li><a href='	<?php the_sub_field('link');?>'
            <?php if (get_sub_field('open_tab_in_new_window')) {echo "target='_blank' rel='noopener'";}?>><?php the_sub_field('title');?></a>
        </li>

        <?php endwhile;?>

        <?php endif;?>

      </ul>

      <a id='ilawyer' href='//ilawyermarketing.com' target='_blank' rel='noopener'>

        <img src='<?php bloginfo('template_directory');?>/images/ilawyer-logo.svg' alt='' />

      </a>

    </div><!-- copyright-inner -->

  </div><!-- copyright -->

</footer>

<?php if (!current_user_can('mepr-active', 'rules:358')) {?>

<div id='member-join-overlay'>

  <div id='member-join-inner'>

    <span id='member-join-overlay-close'>Close</span><!-- member-join-overlay-close -->

    <?php get_template_part('page-templates/includes/join/template', 'join');?>

  </div><!-- member-join-inner -->

</div><!-- member-join -->

<?php }?>

<?php wp_footer();?>

<?php the_field('footer_scripts', 'option');?>

</body>

</html>
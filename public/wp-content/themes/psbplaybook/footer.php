<footer>

  <div id='footer-inner'>

    <div id='footer-logo'>

      <a href='<?php bloginfo('url');?>/'>

        <img src='<?php bloginfo('template_directory');?>/images/psbplaybook-logo.svg' alt='' />

      </a>

    </div><!-- footer-logo -->

    <div id='footer-info'>

      <div class='footer-info-row'>

        <span class='footer-info-title'>Toll Free</span><!-- footer-info-title -->

        <a class='footer-info-content' href='tel:+18884986437'>(888) 498-6487</a><!-- footer-info-content -->

      </div><!-- footer-info-row -->

      <div class='footer-info-row'>

        <span class='footer-info-title'>Main Website</span><!-- footer-info-title -->

        <a class='footer-info-content' href='' target='_blank' rel='noopener'>psblaw.com</a><!-- footer-info-content -->

      </div><!-- footer-info-row -->

    </div><!-- footer-info -->

    <div id='footer-social-icon'>

      <a href='<?php bloginfo('bloginfo');?>' target='_blank' rel='noopener'>

        <?php echo file_get_contents(get_template_directory() . '/images/linkedin.svg'); ?>

      </a>

      <a href='<?php bloginfo('bloginfo');?>' target='_blank' rel='noopener'>

        <?php echo file_get_contents(get_template_directory() . '/images/insta.svg'); ?>

      </a>

      <a href='<?php bloginfo('bloginfo');?>' target='_blank' rel='noopener'>

        <?php echo file_get_contents(get_template_directory() . '/images/twitter.svg'); ?>

      </a>

      <a href='<?php bloginfo('bloginfo');?>' target='_blank' rel='noopener'>

        <?php echo file_get_contents(get_template_directory() . '/images/facebook.svg'); ?>

      </a>

    </div><!-- footer-social-icon -->

  </div><!-- footer-inner -->

  <div id='copyright'>

    <div id='copyright-inner'>

      <ul>
        <li>Copyright &copy; <?php echo date('Y'); ?> Panish Shea & Boyle All rights reserved. </li>
        <li><a href=''>DISCLAIMEr</a></li>
        <li><a href=''>SITEMAP</a></li>
        <li><a href=''>Google Maps</a></li>
      </ul>

      <a id='ilawyer' href='//ilawyermarketing.com' target='_blank' rel='noopener'>

        <img src='<?php bloginfo('template_directory');?>/images/ilawyer-logo.svg' alt='' />

      </a>

    </div><!-- copyright-inner -->

  </div><!-- copyright -->

</footer>

<?php wp_footer();?>

<?php the_field('footer_scripts', 'option');?>

</body>

</html>
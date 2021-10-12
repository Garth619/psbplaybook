<section id='section-two'>

  <div id='sec-two-inner'>

    <span class='sec-two-title sign-in'><?php the_field('section_two_title_sign_in');?></span><!-- sec-two-title -->

    <span class='sec-two-title logged-in'><?php the_field('section_two_title_logged_in');?></span><!-- sec-two-title -->

    <div id='sec-two-sp-wrapper'>

      <span class='divider divider-left'></span><!-- divider -->

      <div id='sec-two-sp-slideshow'>

        <?php if (have_rows('section_two_sellling_points')): ?>
        <?php while (have_rows('section_two_sellling_points')): the_row();?>

        <div class='sec-two-sp-slide'>

          <span class='sec-two-sp-title'><?php the_sub_field('title');?></span><!-- sec-two-sp-title -->

          <span class='sec-two-description'> <?php the_sub_field('description');?></span><!-- sec-two-description -->

        </div><!-- sec-two-sp-slide -->

        <?php endwhile;?>

        <?php endif;?>

      </div><!-- sec-two-sp-slideshow -->

      <span class='divider divider-right'></span><!-- divider -->

    </div><!-- sec-two-sp-wrapper -->

    <div id="sec-two-arrows">

      <div id="sec-two-arrow-left" class="sec-two-arrow">

        <?php echo file_get_contents(get_template_directory() . '/images/arrow-two.svg'); ?>

      </div><!-- sec-two-arrow-left -->

      <span id="sec-two-arrow-counter">

      </span><!-- sec-two-arrow-counter -->

      <div id="sec-two-arrow-right" class="sec-two-arrow">

        <?php echo file_get_contents(get_template_directory() . '/images/arrow-two.svg'); ?>

      </div><!-- sec-two-arrow-right -->

    </div><!-- sec-two-arrows -->

  </div><!-- sec-two-inner -->

</section><!-- section-two -->
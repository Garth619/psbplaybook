<?php if (have_rows('section_five_featured_speakers')): ?>

<section id='section-five'>

  <div id='sec-five-inner'>

    <span id='sec-five-title'><?php the_field('section_five_title');?></span><!-- sec-five-title -->

    <div id='sec-five-fs-wrapper'>

      <div id='sec-five-arrow-left' class='sec-five-arrow'>

        <?php echo file_get_contents(get_template_directory() . '/images/arrow-three.svg'); ?>

      </div><!-- sec-five-arrow-left -->

      <div id='sec-five-fs-slideshow'>

        <?php while (have_rows('section_five_featured_speakers')): the_row();?>

        <div class='sec-five-fs-slide'>

          <?php if (get_sub_field('internal_or_external_link') == 'External') {?>

          <a href='<?php the_sub_field('external_link');?>' target='_blank' rel='noopener'>

            <div class='sec-five-fs-img'>

              <?php $external_profile_picture = get_sub_field('external_profile_picture');?>
              <?php if ($external_profile_picture) {?>
              <img src="<?php echo $external_profile_picture['url']; ?>"
                alt="<?php echo $external_profile_picture['alt']; ?>" />
              <?php }?>

            </div><!-- sec-five-featured-speakers-img -->

            <span class='sec-five-fs-name'><?php the_sub_field('name');?></span>
            <!-- sec-five-featured-speakers-name -->

            <span class='sec-five-fs-position'><?php the_sub_field('position');?></span>
            <!-- sec-five-featured-speakers-position -->

          </a>

          <?php }?>

          <?php if (get_sub_field('internal_or_external_link') == 'Internal') {?>

          <?php $post_object = get_sub_field('internal_link');?>
          <?php if ($post_object): ?>
          <?php $post = $post_object;?>
          <?php setup_postdata($post);?>

          <a href='<?php the_permalink();?>'>

            <div class='sec-five-fs-img'>

              <?php $fs_profile = get_field('fs_profile');?>
              <?php if ($fs_profile) {?>
              <img src="<?php echo $fs_profile['url']; ?>" alt="<?php echo $fs_profile['alt']; ?>" />
              <?php }?>

            </div><!-- sec-five-featured-speakers-img -->

            <span class='sec-five-fs-name'><?php the_title();?></span>
            <!-- sec-five-featured-speakers-name -->

            <span class='sec-five-fs-position'><?php the_field('fs_position');?></span>
            <!-- sec-five-featured-speakers-position -->

          </a>

          <?php wp_reset_postdata();?>
          <?php endif;?>

          <?php }?>

        </div><!-- sec-five-fs-slide -->

        <?php endwhile;?>

      </div><!-- sec-five-fs-slideshow -->

      <div id='sec-five-arrow-right' class='sec-five-arrow'>

        <?php echo file_get_contents(get_template_directory() . '/images/arrow-three.svg'); ?>

      </div><!-- sec-five-arrow-right -->

    </div><!-- sec-five-fs-wrapper -->

  </div><!-- sec-five-inner -->

</section><!-- section-five -->

<?php endif;?>
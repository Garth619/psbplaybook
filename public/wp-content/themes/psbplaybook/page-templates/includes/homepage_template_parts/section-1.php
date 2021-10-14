<section id='section-one'>

  <div id='sec-one-top'>

    <div class='playbook-video'>

      <div
        class='playbook-wistia wistia_embed wistia_async_<?php the_field('section_one_wistia_video_id');?> popover=true popoverContent=html'
        data-wistia='<?php the_field('section_one_wistia_video_id');?>'></div>
      <!-- playbook-wistia -->

      <div class='playbook-video-overlay'>

        <div class='playbook-play-button'>

          <?php echo file_get_contents(get_template_directory() . '/images/playbutton.svg'); ?>

        </div><!-- playbook-play-button -->

      </div><!-- playbook-video-overlay -->

      <picture>

        <?php $section_one_background_image_desktop_webp = get_field('section_one_background_image_desktop_webp');?>
        <?php if ($section_one_background_image_desktop_webp) {?>

        <source media='(min-width: 1170px)' srcset='<?php echo $section_one_background_image_desktop_webp['url']; ?>'
          type='image/webp'>

        <?php }?>

        <?php $section_one_background_image_desktop = get_field('section_one_background_image_desktop');?>
        <?php if ($section_one_background_image_desktop) {?>

        <source media='(min-width: 1170px)' srcset='<?php echo $section_one_background_image_desktop['url']; ?>'>

        <?php }?>

        <?php $section_one_background_image_mobile_webp = get_field('section_one_background_image_mobile_webp');?>
        <?php if ($section_one_background_image_mobile_webp) {?>

        <source srcset='<?php echo $section_one_background_image_mobile_webp['url']; ?>' type='image/webp'>

        <?php }?>

        <?php $section_one_background_image_mobile = get_field('section_one_background_image_mobile');?>

        <img class='playbook-video-image' src="<?php echo $section_one_background_image_mobile['url']; ?>"
          alt="<?php echo $section_one_background_image_mobile['alt']; ?>" />

      </picture>

    </div><!-- playbook-video -->

    <span id='learn-title'><?php the_field('section_one_selling_point_title');?></span>
    <!-- learn-title -->

  </div><!-- sec-one-top -->

  <div id='sec-one-bottom'>

    <div id='sec-one-bottom-inner'>

      <?php get_template_part('page-templates/includes/join/template', 'join');?>

      <?php if (current_user_can('mepr-active', 'rules:358')) {?>

      <div id='sec-one-recent-episodes'>

        <span id='sec-one-recent-episodes-title'><?php the_field('section_one_recent_episodes_title');?></span>
        <!-- sec-one-recent-episodes-title -->

        <div id='sec-one-recent-episodes-wrapper'>

          <?php $mymain_query = new WP_Query(array('post_type' => 'post', 'posts_per_page' => '4', 'order' => 'DSC'));while ($mymain_query->have_posts()): $mymain_query->the_post();?>

          <div class='sec-one-single-episode'>

            <a href='<?php the_permalink();?>'>

              <span><?php the_title();?></span>

              <img src='<?php bloginfo('template_directory');?>/images/arrow.svg' alt='' />

            </a>

          </div><!-- sec-one-single-episode -->

          <?php endwhile;?>
          <?php wp_reset_postdata(); // reset the query ?>

          <div class='sec-one-single-episode'>

            <a href='<?php the_field('section_one_view_all_episodes_link');?>'>

              <span>View All</span>

              <img src='<?php bloginfo('template_directory');?>/images/arrow.svg' alt='' />

            </a>

          </div><!-- sec-one-single-episode -->

        </div><!-- sec-one-recent-episodes-wrapper -->

      </div><!-- sec-one-recent-episodes -->

      <?php }?>

    </div><!-- sec-one-bottom-inner -->

  </div><!-- sec-one-bottom -->

</section><!-- section-one -->
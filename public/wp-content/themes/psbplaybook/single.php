<?php get_header();?>

<div id="internal-main">

  <div id='page-container' class='two-col'>

    <div id='page-content'>

      <div class='post-meta'>

        <span class='post-episode'>Episode <?php the_field('episode_number');?></span><!-- post-episode -->

        <span class='post-author'>Post by <?php the_author();?></span><!-- post-author -->

        <span class='post-date'><?php $pfx_date = get_the_date();
echo $pfx_date;?></span>
        <!-- post-date -->

        <?php echo get_the_category_list(); ?>

      </div><!-- post-meta -->

      <h1 id='page-title' class='blog-title'><?php the_title();?></h1>
      <!-- page-header -->

      <div id='page-content-inner'>

        <?php if (have_posts()): while (have_posts()): the_post();?>

        <div id='single-post' class='content'>

          <div class='post-meta-wrapper'>

            <?php

        $wistiaID = get_field('wistia_id');

        if ($wistiaID) {?>

            <div class='single-post-video'>

              <?php get_template_part('page-templates/includes/video/template', 'video');?>

            </div><!-- single-post-video -->

            <h2 class="post-header"><a href="<?php the_permalink();?>"><?php the_field('single_video_title');?></a>
            </h2>

            <?php }?>

          </div><!-- post-meta-wrapper -->

          <div id='single-post-content'>

            <?php if (current_user_can('mepr-active', 'rules:358')): ?>

            <?php if (have_rows('download_episode_materials')): ?>

            <div id='single-post-material'>

              <h3><?php the_field('download_episode_material_header');?></h3>

              <div id='single-post-material-list'>

                <?php while (have_rows('download_episode_materials')): the_row();?>

                <a class='single-post-material' href="<?php the_sub_field('file');?>" target="_blank">

                  <?php if (get_sub_field('icon_type') == 'pdf') {?>

                  <img src='<?php bloginfo('template_directory');?>/images/pdf.svg' alt='' />

                  <?php }?>

                  <?php if (get_sub_field('icon_type') == 'ppt') {?>

                  <img src='<?php bloginfo('template_directory');?>/images/ppt.svg' alt='' />

                  <?php }?>

                  <?php if (get_sub_field('icon_type') == 'doc') {?>

                  <img src='<?php bloginfo('template_directory');?>/images/doc.svg' alt='' />

                  <?php }?>

                  <span class='single-post-material-title'><?php the_sub_field('title');?></span>
                  <!-- single-post-material-title -->

                </a><!-- single-post-material -->

                <?php endwhile;?>

              </div><!-- single-post-material-list -->

            </div><!-- single-post-material -->

            <?php endif;?>

            <?php endif;?>

            <?php if (get_field('summary')) {?>

            <div id='single-post-summary'>

              <h3><?php the_field('summary_header');?></h3>

              <?php if (current_user_can('mepr-active', 'rules:358')): ?>

              <?php the_field('summary');?>

              <?php else: ?>

              <?php

    $excerpt = wp_trim_words(get_field('summary'), $num_words = 65, $more = '... <br><br><a class="memberpress-signup">Sign Up to View More!</a>');

    echo $excerpt;

    ?>

              <?php endif;?>

              <?php edit_post_link(__('Edit'), '', '');?>

            </div><!-- single-post-summary -->

            <?php }?>

          </div><!-- single-post-content -->

        </div><!-- single_post -->

        <?php endwhile; // end of loop ?>

        <?php endif;?>

      </div><!-- page-content-inner -->

    </div><!-- page-content -->

    <?php if (current_user_can('mepr-active', 'rules:358')): ?>

    <div id='single-post-bottom' class='content'>

      <?php if (have_rows('featured_speakers')): ?>

      <div id='single-post-featured-speakers-wrapper'>

        <h3><?php the_field('featured_speaker_header');?></h3>

        <div id='single-post-featured-speakers-inner'>

          <div id='single-post-featured-speakers'>

            <?php while (have_rows('featured_speakers')): the_row();?>

            <div class='single-post-featured-speakers-slide'>

              <?php if (get_sub_field('internal_or_external_link') == 'External') {?>

              <a href='<?php the_sub_field('external_link');?>' target='_blank' rel='noopener'>

                <div class='single-post-featured-speakers-img'>

                  <?php $external_profile_picture = get_sub_field('external_profile_picture');?>
                  <?php if ($external_profile_picture) {?>
                  <img src="<?php echo $external_profile_picture['url']; ?>"
                    alt="<?php echo $external_profile_picture['alt']; ?>" />
                  <?php }?>

                </div><!-- single-post-featured-speakers-img -->

                <span class='single-post-featured-speakers-name'><?php the_sub_field('name');?></span>
                <!-- single-post-featured-speakers-name -->

                <span class='single-post-featured-speakers-position'><?php the_sub_field('position');?></span>
                <!-- single-post-featured-speakers-position -->

              </a>

              <?php }?>

              <?php if (get_sub_field('internal_or_external_link') == 'Internal') {?>

              <?php $post_object = get_sub_field('internal_link');?>
              <?php if ($post_object): ?>
              <?php $post = $post_object;?>
              <?php setup_postdata($post);?>

              <a href='<?php the_permalink();?>'>

                <div class='single-post-featured-speakers-img'>

                  <?php $fs_profile = get_field('fs_profile');?>
                  <?php if ($fs_profile) {?>
                  <img src="<?php echo $fs_profile['url']; ?>" alt="<?php echo $fs_profile['alt']; ?>" />
                  <?php }?>

                </div><!-- single-post-featured-speakers-img -->

                <span class='single-post-featured-speakers-name'><?php the_title();?></span>
                <!-- single-post-featured-speakers-name -->

                <span class='single-post-featured-speakers-position'><?php the_field('fs_position');?></span>
                <!-- single-post-featured-speakers-position -->

              </a>

              <?php wp_reset_postdata();?>
              <?php endif;?>

              <?php }?>

            </div><!-- single-post-featured-speakers-slide -->

            <?php endwhile;?>

          </div><!-- single-post-featured-speakers -->

          <div id='single-post-featured-speakers-arrow-wrapper'>

            <div id='single-post-featured-speakers-arrow-left' class='single-post-featured-speakers-arrows'>

            </div><!-- single-post-featured-speakers-arrow-left -->

            <span id='single-post-featured-speakers-arrow-title'>More Speakers</span>
            <!-- single-post-featured-speakers-arrow-title -->

            <div id='single-post-featured-speakers-arrow-right' class='single-post-featured-speakers-arrows'>

            </div><!-- single-post-featured-speakers-arrow-right -->

          </div><!-- single-post-featured-speakers-arrow-wrapper -->

        </div><!-- single-post-featured-speakers-inner -->

      </div><!-- single-post-featured-speakers-wrapper -->

      <?php endif;?>

      <?php get_template_part('page-templates/includes/contactform/template', 'contact_form');?>

    </div><!-- single-post-bottom -->

    <?php endif;?>

    <?php if (!get_field('disable_sidebar')) {

    get_sidebar('blog');

}?>

  </div><!-- page-container -->

</div><!-- internal-main -->

<?php get_footer();?>
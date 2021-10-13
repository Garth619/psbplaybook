<section id='section-three'>

  <div id='sec-three-inner'>

    <div id='sec-three-top'>

      <span id='sec-three-title'><?php the_field('section_three_title');?></span><!-- sec-three-title -->

      <div id='sec-three-featured-post'>

        <?php

$featured_posts_link = get_field('section_three_featured_posts_link');

$featured_posts_url = "href='" . get_field('section_three_featured_posts_link') . "'";

?>

        <a <?php if ($featured_posts_link) {echo $featured_posts_url;}
;?>>

          <?php $section_three_featured_post_image = get_field('section_three_featured_post_image');?>
          <?php if ($section_three_featured_post_image) {?>

          <div id='sec-three-large-image'>

            <img src="<?php echo $section_three_featured_post_image['url']; ?>"
              alt="<?php echo $section_three_featured_post_image['alt']; ?>" />

          </div><!-- sec-three-large-image -->

          <?php }?>

          <span id='sec-three-featured-date'
            class='sec-three-subtitle'><?php the_field('section_three_featured_post_date');?></span>
          <!-- sec-three-featured-date -->

          <span id='sec-three-description'><?php the_field('section_three_featured_post_description');?></span>
          <!-- sec-three-description -->

        </a>

      </div><!-- sec-three-featured-post -->

    </div><!-- sec-three-top -->

    <div id='sec-three-bottom'>

      <span id='sec-three-prev-episodes-title'
        class='sec-three-subtitle'><?php the_field('section_three_episodes_title');?></span>
      <!-- sec-three-prev-episodes -->

      <div id='sec-three-prev'>

        <?php $mymain_query = new WP_Query(array('post_type' => 'post', 'posts_per_page' => '3', 'order' => 'DSC'));while ($mymain_query->have_posts()): $mymain_query->the_post();?>

        <div class='sec-three-prev-single'>

          <?php

    $wistiaID = get_field('wistia_id');
    $novideo = '';

    if (!$wistiaID) {
        $novideo = ' no-video';
    }

    if ($wistiaID) {
        echo "<div class='sec-three-prev-single-video'>";
        get_template_part('page-templates/includes/video/template', 'video');
        echo "</div><!-- sec-three-prev-single-video -->";
    }

    ?>

          <div class='sec-three-prev-single-content'>

            <a href='<?php the_permalink();?>'>

              <span class='sec-thress-prev-epi-num'>Episode <?php the_field('episode_number');?></span>
              <!-- sec-three-prev-title -->

              <span class='sec-three-prev-title'><?php the_title();?></span>
              <!-- sec-three-prev-title -->

              <span class='sec-three-prev-date'><?php $pfx_date = get_the_date();
    echo $pfx_date;?></span>
              <!-- sec-three-prev-date -->

            </a>

          </div><!-- sec-three-prev-single-content -->

        </div><!-- sec-three-prev-single -->

        <?php endwhile;?>
        <?php wp_reset_postdata(); // reset the query ?>

      </div><!-- sec-three-prev -->

    </div><!-- sec-three-bottom -->

  </div><!-- sec-three-inner -->

</section><!-- section-three -->
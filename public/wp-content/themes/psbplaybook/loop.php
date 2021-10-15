<?php if (!have_posts()): ?>

<div id="post-0" class="post error404 not-found">

  <h2>Not Found</h2>

  <div class="entry-content">
    <p>Apologies, but no posts have been created</p>

  </div><!-- .entry-content -->
</div><!-- #post-0 -->

<?php endif;?>

<div id="blog-feed">

  <?php if (have_posts()): while (have_posts()): the_post();?>

  <?php

        $wistiaID = get_field('wistia_id');
        $novideo = '';

        if (!$wistiaID) {
            $novideo = ' no-video';
        }?>

  <div class='blog-post<?php echo $novideo; ?>'>

    <?php

        if ($wistiaID) {
            echo "<div class='blog-post-video'>";
            get_template_part('page-templates/includes/video/template', 'video');
            echo "</div><!-- blog-post-video -->";
        }

        ?>

    <div class='post-meta-wrapper'>

      <div class='post-meta'>

        <span class='post-author'>Post by <?php the_author();?></span><!-- post-author -->

        <span class='post-date'><?php $pfx_date = get_the_date();
        echo $pfx_date;?></span>
        <!-- post-date -->

        <?php echo get_the_category_list(); ?>

      </div><!-- post-meta -->

      <div class='content'>

        <h2 class="post-header"><a href="<?php the_permalink();?>"><?php the_title();?></a></h2>

      </div><!-- content -->

    </div><!-- post-meta-wrapper -->

    <div class='post-content content'>

      <div>

        <?php echo wp_trim_words(get_the_content(), 54, '...'); ?>

      </div>

      <a class="learn-more" href="<?php the_permalink();?>">Learn More</a>

    </div><!-- post-content -->

    <?php edit_post_link(__('Edit'), '', '');?>

  </div><!-- blog-post -->

  <?php endwhile; // end of loop ?>

  <?php endif;?>

</div><!-- blog-feed -->

<?php my_numeric_posts_nav();?>
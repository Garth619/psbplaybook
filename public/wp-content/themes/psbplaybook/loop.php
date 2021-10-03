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

  <div class='blog-post'>

    <div class='single-post-video'>

      <div class='playbook-video'>

        <div data-wistia='fvynu51wm6'
          class='playbook-wistia wistia_embed wistia_async_fvynu51wm6 popover=true popoverContent=html'>
        </div>
        <!-- playbook-wistia -->

        <div class='playbook-video-overlay'>

          <div class='playbook-play-button'>

            <?php echo file_get_contents(get_template_directory() . '/images/playbutton.svg'); ?>

          </div><!-- playbook-play-button -->

        </div><!-- playbook-video-overlay -->

        <img class='playbook-video-image' src='<?php bloginfo('template_directory');?>/images/episode-video-1.jpg'
          alt='' />

        <img class='playbook-video-image-spacer' src='<?php bloginfo('template_directory');?>/images/spacer.png'
          alt='Image Spacer' />

      </div><!-- playbook-video -->

    </div><!-- single-post-video -->

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
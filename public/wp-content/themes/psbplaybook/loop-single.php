<?php if (have_posts()): while (have_posts()): the_post();?>

<div id='single_post'>

  <div class='post-meta-wrapper'>

    <div class='post-meta'>

      <span class='post-episode'>Episode <?php the_field('episode_number');?></span><!-- post-episode -->

      <span class='post-author'>Post by <?php the_author();?></span><!-- post-author -->

      <span class='post-date'><?php $pfx_date = get_the_date();
        echo $pfx_date;?></span>
      <!-- post-date -->

      <?php echo get_the_category_list(); ?>

    </div><!-- post-meta -->

    <div class='single-post-video'>

      <?php get_template_part('page-templates/includes/video/template', 'video');?>

    </div><!-- single-post-video -->

    <div class='content'>

      <h2 class="post-header"><a href="<?php the_permalink();?>"><?php the_title();?></a></h2>

    </div><!-- content -->

  </div><!-- post-meta-wrapper -->

  <?php the_content();?>

  <?php edit_post_link(__('Edit'), '', '');?>

</div><!-- single_post -->

<?php endwhile; // end of loop ?>

<?php endif;?>
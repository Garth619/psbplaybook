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

            <div class='single-post-video'>

              <?php get_template_part('page-templates/includes/video/template', 'video');?>

            </div><!-- single-post-video -->

            <div>

              <h2 class="post-header"><a href="<?php the_permalink();?>"><?php the_title();?></a></h2>

            </div><!-- content -->

          </div><!-- post-meta-wrapper -->

          <div id='single-post-content'>

            <div id='single-post-material'>

              <h3>DOWNLOAD EPISODE MATERIALs</h3>

              <div id='single-post-material-list'>

                <a class='single-post-material'>

                  <img src='<?php bloginfo('template_directory');?>/images/pdf.svg' alt='' />

                  <span class='single-post-material-title'>Episode 9 - Pierce v. Murrieta Valley Unified School
                    District</span><!-- single-post-material-title -->

                </a><!-- single-post-material -->

                <a class='single-post-material'>

                  <img src='<?php bloginfo('template_directory');?>/images/pdf.svg' alt='' />

                  <span class='single-post-material-title'>Episode 9 - Pierce v. Murrieta Valley Unified School
                    District</span><!-- single-post-material-title -->

                </a><!-- single-post-material -->

                <a class='single-post-material'>

                  <img src='<?php bloginfo('template_directory');?>/images/pdf.svg' alt='' />

                  <span class='single-post-material-title'>Episode 9 - Pierce v. Murrieta Valley Unified School
                    District</span><!-- single-post-material-title -->

                </a><!-- single-post-material -->

                <a class='single-post-material'>

                  <img src='<?php bloginfo('template_directory');?>/images/pdf.svg' alt='' />

                  <span class='single-post-material-title'>Episode 9 - Pierce v. Murrieta Valley Unified School
                    District</span><!-- single-post-material-title -->

                </a><!-- single-post-material -->

              </div><!-- single-post-material-list -->

            </div><!-- single-post-material -->

            <div id='single-post-summary'>

              <h3>SUMMARY</h3>

              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut nisl nisi. Etiam aliquam lectus in
                fermentum euismod. Morbi pulvinar neque sed tempus interdum. Nam neque justo, euismod eget pulvinar sit
                amet, finibus in erat. Phasellus augue libero, lobortis in volutpat in, aliquam sed purus. Integer
                ullamcorper ornare eleifend. Donec auctor, sem ut sodales porta, metus massa egestas felis, sit amet
                sollicitudin velit quam sed sem. In porta feugiat urna, quis pretium odio auctor bibendum. Pellentesque
                enim quam, pretium quis risus vitae, viverra fringilla sapien. Sed egestas id erat eget pretium. </p>

              <p>In sit amet lectus tortor. Morbi rhoncus orci tellus, eu aliquet enim tristique at. Phasellus bibendum
                non mauris a efficitur. Pellentesque faucibus pharetra nulla, at posuere augue malesuada in. Cras
                tristique tortor vel lectus tincidunt elementum et ut tortor. Curabitur posuere lectus et lacus lacinia
                mattis. Nunc facilisis luctus vehicula. Suspendisse cursus pretium aliquam. Nam mollis bibendum cursus.
                Aenean maximus eget sapien quis pellentesque. In nec nibh quis odio eleifend blandit ut vel turpis.
                Suspendisse molestie mauris at dictum commodo. Ut scelerisque aliquam odio vel finibus.</p>

              <?php //the_content();?>

              <?php edit_post_link(__('Edit'), '', '');?>

            </div><!-- single-post-summary -->

          </div><!-- single-post-content -->

        </div><!-- single_post -->

        <?php endwhile; // end of loop ?>

        <?php endif;?>

      </div><!-- page-content-inner -->

    </div><!-- page-content -->

    <div id='single-post-bottom' class='content'>

      <div id='single-post-featured-speakers-wrapper'>

        <h3>Featured Speakers</h3>

        <div id='single-post-featured-speakers-inner'>

          <div id='single-post-featured-speakers'>

            <div class='single-post-featured-speakers-slide'>

              <a href=''>

                <div class='single-post-featured-speakers-img'>

                  <img src='<?php bloginfo('template_directory');?>/images/adam-shea.jpg' alt='' />

                </div><!-- single-post-featured-speakers-img -->

                <span class='single-post-featured-speakers-name'>adam Shea</span>
                <!-- single-post-featured-speakers-name -->

                <span class='single-post-featured-speakers-position'>PSB PARTNER</span>
                <!-- single-post-featured-speakers-position -->

              </a>

            </div><!-- single-post-featured-speakers-slide -->

            <div class='single-post-featured-speakers-slide'>

              <a href=''>

                <div class='single-post-featured-speakers-img'>

                  <img src='<?php bloginfo('template_directory');?>/images/adam-shea.jpg' alt='' />

                </div><!-- single-post-featured-speakers-img -->

                <span class='single-post-featured-speakers-name'>adam Shea</span>
                <!-- single-post-featured-speakers-name -->

                <span class='single-post-featured-speakers-position'>PSB PARTNER</span>
                <!-- single-post-featured-speakers-position -->

              </a>

            </div><!-- single-post-featured-speakers-slide -->

            <div class='single-post-featured-speakers-slide'>

              <a href=''>

                <div class='single-post-featured-speakers-img'>

                  <img src='<?php bloginfo('template_directory');?>/images/adam-shea.jpg' alt='' />

                </div><!-- single-post-featured-speakers-img -->

                <span class='single-post-featured-speakers-name'>adam Shea</span>
                <!-- single-post-featured-speakers-name -->

                <span class='single-post-featured-speakers-position'>PSB PARTNER</span>
                <!-- single-post-featured-speakers-position -->

              </a>

            </div><!-- single-post-featured-speakers-slide -->

            <div class='single-post-featured-speakers-slide'>

              <a href=''>

                <div class='single-post-featured-speakers-img'>

                  <img src='<?php bloginfo('template_directory');?>/images/adam-shea.jpg' alt='' />

                </div><!-- single-post-featured-speakers-img -->

                <span class='single-post-featured-speakers-name'>adam Shea</span>
                <!-- single-post-featured-speakers-name -->

                <span class='single-post-featured-speakers-position'>PSB PARTNER</span>
                <!-- single-post-featured-speakers-position -->

              </a>

            </div><!-- single-post-featured-speakers-slide -->

            <div class='single-post-featured-speakers-slide'>

              <a href=''>

                <div class='single-post-featured-speakers-img'>

                  <img src='<?php bloginfo('template_directory');?>/images/adam-shea.jpg' alt='' />

                </div><!-- single-post-featured-speakers-img -->

                <span class='single-post-featured-speakers-name'>adam Shea</span>
                <!-- single-post-featured-speakers-name -->

                <span class='single-post-featured-speakers-position'>PSB PARTNER</span>
                <!-- single-post-featured-speakers-position -->

              </a>

            </div><!-- single-post-featured-speakers-slide -->

            <div class='single-post-featured-speakers-slide'>

              <a href=''>

                <div class='single-post-featured-speakers-img'>

                  <img src='<?php bloginfo('template_directory');?>/images/adam-shea.jpg' alt='' />

                </div><!-- single-post-featured-speakers-img -->

                <span class='single-post-featured-speakers-name'>adam Shea</span>
                <!-- single-post-featured-speakers-name -->

                <span class='single-post-featured-speakers-position'>PSB PARTNER</span>
                <!-- single-post-featured-speakers-position -->

              </a>

            </div><!-- single-post-featured-speakers-slide -->

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

      <div id='general-form'>

        <span id='general-form-title'>QUESTIONs? COMMENTs?</span><!-- general-form-title -->

        <span id='general-form-description'>If you have questions or comments regarding this topic/episode, send us
          a message below</span><!-- general-form-description -->

        <?php gravity_form(2, false, false, false, '', true, 1236);?>

      </div><!-- general-form -->

    </div><!-- single-post-bottom -->

    <?php if (!get_field('disable_sidebar')) {

    get_sidebar('blog');

}?>

  </div><!-- page-container -->

</div><!-- internal-main -->

<?php get_footer();?>
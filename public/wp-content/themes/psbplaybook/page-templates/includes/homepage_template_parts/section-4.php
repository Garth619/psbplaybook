<section id='section-four'>

  <div id='sec-four-inner'>

    <span id='sec-four-subtitle'><?php the_field('section_four_subtitle');?></span><!-- sec-four-subtitle -->

    <span id='sec-four-title'><?php the_field('section_four_title');?></span><!-- sec-four-title -->

    <div id='sec-four-content-wrapper'>

      <div id='sec-four-content' class='content'>

        <?php the_field('section_four_content');?>

      </div><!-- sec-four-content -->

      <?php $section_four_image = get_field('section_four_image');?>
      <?php if ($section_four_image) {?>
      <div id='sec-four-image'>

        <img src="<?php echo $section_four_image['url']; ?>" alt="<?php echo $section_four_image['alt']; ?>" />

      </div><!-- sec-four-image -->

      <?php }?>

    </div><!-- sec-four-content-wrapper -->

  </div><!-- sec-four-inner -->

</section><!-- section-four -->
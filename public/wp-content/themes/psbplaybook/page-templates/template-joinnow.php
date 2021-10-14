<?php

/* Template Name: Join Now */

get_header();?>

<div id="internal-main">

  <div id='member-signup-overlay'>

    <span id='member-signup-title'><?php the_title();?></span><!-- member-signup-title -->

    <div id='member-signup-inner'>

      <?php the_content();?>

      <span id='join-up-required'><span>*</span> Required</span><!-- join-up-required -->

    </div><!-- member-signup-inner -->

  </div><!-- member-signup -->

</div><!-- internal-main -->

<script type="text/javascript">
const urlParams = new URLSearchParams(window.location.search);
const myParam = urlParams.get('join-form-email');
const inputEmail = document.getElementById("user_email1");
inputEmail.value = myParam;
</script>

<?php get_footer();?>
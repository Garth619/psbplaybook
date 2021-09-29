<section id='section-one'>

  <div id='sec-one-top'>

    <div class='playbook-video'>

      <div class='playbook-wistia wistia_embed wistia_async_dsqtgjeu3h popover=true popoverContent=html'></div>
      <!-- playbook-wistia -->

      <div class='playbook-video-overlay'>

        <div class='playbook-play-button'>

          <?php echo file_get_contents(get_template_directory() . '/images/playbutton.svg'); ?>

        </div><!-- playbook-play-button -->

      </div><!-- playbook-video-overlay -->

      <picture>

        <source media='(min-width: 1170px)' srcset='<?php bloginfo('template_directory');?>/images/hero-1920.jpg'>

        <img class='playbook-video-image' src='<?php bloginfo('template_directory');?>/images/hero-video-img-mobile.jpg'
          alt='' />

      </picture>
      <!-- remove 'data-' and 'lazyload' if needs to load on page load -->

    </div><!-- playbook-video -->

    <span id='learn-title'>Learn from the best as part of our<br> exclusive Plaintiff Lawyer network.</span>
    <!-- learn-title -->

  </div><!-- sec-one-top -->

  <div id='sec-one-bottom'>

    <div id='sec-one-bottom-inner'>

      <div id='sec-one-sign-up'>

        <span id='sec-one-sign-up-title'>JOIN THE PLAYBOOk</span><!-- sec-one-sign-up-title -->

        <span id='sec-one-sign-up-subtitle'>Learn from the best as part of our exclusive Plaintiff Lawyer
          network.</span><!-- sec-one-sign-up-subtitle -->

        <form id="signup-form">

          <div class="signup-form-input-wrapper">

            <input type="email" id="signup-form-email" name="signup-form-email" value="" placeholder="Your Firm E-mail"
              required>

          </div><!-- signup-form-input-wrapper -->

          <span id='sec-one-sign-up-required'><span>*</span> Required</span><!-- sec-one-sign-up-required -->

          <div id='signup-form-submit-wrapper'>

            <button id="signup-form-submit">Sign Up</button>

          </div><!-- signup-form-submit-wrapper -->

        </form>

        <span id='sec-one-sign-up-description'>Membership is <strong>free</strong> in order to access our digital
          library and live
          events.</span><!-- sec-one-sign-up-description -->

      </div><!-- sec-one-sign-up -->

    </div><!-- sec-one-bottom-inner -->

  </div><!-- sec-one-bottom -->

</section><!-- section-one -->
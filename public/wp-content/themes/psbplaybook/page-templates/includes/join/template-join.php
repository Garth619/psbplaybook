<?php if (!current_user_can('mepr-active', 'rules:358')) {?>

<div class='playbook-member-join'>

  <span class='playbook-member-join-title'><?php the_field('join_now_title', 'option');?></span>
  <!-- playbook-member-join-title -->

  <span class='playbook-member-join-subtitle'><?php the_field('join_now_description', 'option');?></span>
  <!-- playbook-member-join-subtitle -->

  <form class="join-form" method="GET" action="<?php the_permalink(352);?>">

    <div class="join-form-input-wrapper">

      <input type="email" class="join-form-email" name="join-form-email" value="" placeholder="Your Firm E-mail"
        required>

    </div><!-- join-form-input-wrapper -->

    <span class='playbook-member-join-required'><span>*</span> Required</span>
    <!-- playbook-member-join-required -->

    <div class='join-form-submit-wrapper'>

      <button class="join-form-submit">Sign Up</button>

    </div><!-- join-form-submit-wrapper -->

  </form>

  <span class='playbook-member-join-description'><?php the_field('join_now_description_two', 'option');?></span>
  <!-- playbook-member-join-description -->

</div><!-- playbook-member-join -->

<?php }?>
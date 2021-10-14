<?php

$memberpress = current_user_can('mepr-active', 'rules:358');

if ($memberpress) {
    $userloggedin = 'memberpress-loggedin';
} else {
    $userloggedin = 'memberpress-join';
}

$wistiaID = get_field('wistia_id');
$custom_thumbnail = get_field('custom_thumbnail');

if ($custom_thumbnail) {
    $wistiaView = 'html';
} else {
    $wistiaView = 'thumbnail';
}

?>

<div class='playbook-video playbook-<?php echo $wistiaView; ?> <?php echo $userloggedin; ?>'>

  <div data-wistia='<?php echo $wistiaID; ?>'
    class='playbook-wistia wistia_embed wistia_async_<?php echo $wistiaID; ?> popover=true popoverContent=<?php echo $wistiaView; ?>'>
  </div>
  <!-- playbook-wistia -->

  <div class='playbook-video-overlay'>

    <div class='playbook-play-button'>

      <?php echo file_get_contents(get_template_directory() . '/images/playbutton.svg'); ?>

    </div><!-- playbook-play-button -->

  </div><!-- playbook-video-overlay -->

  <?php if ($custom_thumbnail) {?>
  <img class='playbook-video-image' src="<?php echo $custom_thumbnail['url']; ?>"
    alt="<?php echo $custom_thumbnail['alt']; ?>" />
  <?php }?>

  <img class='playbook-video-image-spacer' src='<?php bloginfo('template_directory');?>/images/spacer.png'
    alt='Image Spacer' />

</div><!-- playbook-video -->
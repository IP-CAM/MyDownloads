<?php echo $header; 
$theme_options = $registry->get('theme_options');
$config = $registry->get('config'); 
include('catalog/view/theme/' . $this->config->get($this->config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_top.tpl'); ?>

      <div class="table-responsive">
        <table class="table table-bordered table-hover">
          <thead>
            <tr>
              <td class="text-left"><?php echo $column_type; ?></td>
              <td class="text-left"><?php echo $column_digits; ?></td>
              <td class="text-right"><?php echo $column_expiry; ?></td>
            </tr>
          </thead>
          <tbody>
            <?php if ($cards) { ?>
            <?php foreach ($cards  as $card) { ?>
            <tr>
              <td class="text-left"><?php echo $card['type']; ?></td>
              <td class="text-left"><?php echo $card['digits']; ?></td>
              <td class="text-right"><?php echo $card['expiry']; ?></td>
			  <td class="text-right"><a href="<?php echo $delete . $card['card_id']; ?>" class="btn btn-danger"><?php echo $button_delete; ?></a></td>

            </tr>
            <?php } ?>
            <?php } else { ?>
            <tr>
              <td class="text-center" colspan="5"><?php echo $text_empty; ?></td>
            </tr>
            <?php } ?>
          </tbody>
        </table>
      </div>
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
	  <div class="buttons clearfix">
        <div class="pull-left"><a href="<?php echo $back; ?>" class="btn btn-default"><?php echo $button_back; ?></a></div>
        <div class="pull-right"><a href="<?php echo $add; ?>" class="btn btn-primary"><?php echo $button_new_card; ?></a></div>
      </div>


<?php include('catalog/view/theme/' . $this->config->get($this->config->get('config_theme') . '_directory') . '/template/new_elements/wrapper_bottom.tpl'); ?>
<?php echo $footer; ?>
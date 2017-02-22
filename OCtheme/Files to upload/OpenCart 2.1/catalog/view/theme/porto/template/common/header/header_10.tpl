<header class="header_10">
	<div class="overflow">
		<?php echo $currency.$language.$cart; ?>
		
		<?php if ($logo) { ?>
		<!-- Logo -->
		<h1 class="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></h1>
		<?php } ?>
		
		<?php 
		$menu = $modules->getModules('menu');
		if( count($menu) ) {
			foreach ($menu as $module) {
				echo $module;
			}
		} elseif($categories) {
		?>
		<div class="container-megamenu horizontal mobile-disabled">
			<div class="megaMenuToggle">
				<div class="megamenuToogle-wrapper">
					<div class="megamenuToogle-pattern">
						<div class="container">
							<div><span></span><span></span><span></span></div>
							Navigation
						</div>
					</div>
				</div>
			</div>
			
			<div class="megamenu-wrapper">
				<div class="megamenu-pattern">
					<div class="container">
						<ul class="megamenu">
							<?php foreach ($categories as $category) { ?>
							<?php if ($category['children']) { ?>
							<li class="with-sub-menu hover"><p class="close-menu"></p><p class="open-menu"></p>
								<a href="<?php echo $category['href'];?>"><span><strong><?php echo $category['name']; ?></strong></span></a>
							<?php } else { ?>
							<li>
								<a href="<?php echo $category['href']; ?>"><span><strong><?php echo $category['name']; ?></strong></span></a>
							<?php } ?>
								<?php if ($category['children']) { ?>
								<?php 
									$width = '100%';
									$row_fluid = 3;
									if($category['column'] == 1) { $width = '220px'; $row_fluid = 12; }
									if($category['column'] == 2) { $width = '500px'; $row_fluid = 6; }
									if($category['column'] == 3) { $width = '700px'; $row_fluid = 4; }
								?>
								<div class="sub-menu" style="width: <?php echo $width; ?>">
									<div class="content">
										<p class="arrow"></p>
										<div class="row hover-menu">
											<?php for ($i = 0; $i < count($category['children']);) { ?>
											<div class="col-sm-<?php echo $row_fluid; ?> mobile-enabled">
												<div class="menu">
													<ul>
													  <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
													  <?php for (; $i < $j; $i++) { ?>
													  <?php if (isset($category['children'][$i])) { ?>
													  <li><a href="<?php echo $category['children'][$i]['href']; ?>" onclick="window.location = '<?php echo $category['children'][$i]['href']; ?>';"><?php echo $category['children'][$i]['name']; ?></a></li>
													  <?php } ?>
													  <?php } ?>
													</ul>
												</div>
											</div>
											<?php } ?>
										</div>
									</div>
								</div>
								<?php } ?>
							</li>
							<?php } ?>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<?php
		}
		?>
		
		<div class="searchform-popup">
		    <a class="search-toggle"><i class="fa fa-search"></i></a>
		    <div class="searchform search_form">
		        <fieldset>
		            <span class="text">
		                <input type="text" name="search" class="input-block-level search-query" placeholder="<?php echo $search; ?>" required>
		            </span>
		            <span class="button-wrap">
		                <button class="button-search" title="Search" type="submit">
		                    <i class="fa fa-search"></i>
		                </button>
		            </span>
		        </fieldset>
		    </div>
		</div><!-- End .searchform -->
		<a class="mobile-toggle"><i class="fa fa-reorder"></i></a>
		
		<ul class="top-links">
		    <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
		    <li><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a></li>
		    <li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
		    <?php if ($logged) { ?>
		    <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
		    <?php } else { ?>
		    <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
		    <?php } ?>
		</ul>
		
		<?php 
		$top_block = $modules->getModules('top_block');
		if( count($top_block) ) { 
		 foreach ($top_block as $module) {
		  echo $module;
		 }
		} ?>
    </div>
</header><!-- End #header -->

<?php $slideshow = $modules->getModules('slideshow'); ?>
<?php  if(count($slideshow)) { ?>
<!-- Slider -->
<div id="slider">
	<div class="background-slider"></div>
	<div class="background">
		<div class="shadow"></div>
		<div class="pattern">
			<?php foreach($slideshow as $module) { ?>
			<?php echo $module; ?>
			<?php } ?>
		</div>
	</div>
</div>
<?php } ?>
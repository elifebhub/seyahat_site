
<div class="search">
			<div class="search_inner">

				<!-- Search Contents -->
				
				<div class="container fill_height no-padding">
					<div class="row fill_height no-margin">
						<div class="col fill_height no-padding">

							<!-- Search Tabs -->

							<div class="search_tabs_container">
								<div class="search_tabs d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">

									<div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="<?php echo ASSETSIMAGE; ?>/bus.png" alt="">Araba Kİralama</div>
									<div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="<?php echo ASSETSIMAGE; ?>/departure.png" alt="">Uçuşlar</div>
									<div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="<?php echo ASSETSIMAGE; ?>/cruise.png" alt="">Turlar</div>
									<div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="<?php echo ASSETSIMAGE; ?>/island.png" alt="">Geziler</div>
									<div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="assets/images/diving.png" alt="">AKTİVİTELER</div>

								</div>		
							</div>

							<?php 
							
							$nextMonthLastDay = date('Y-m-t', strtotime('+1 month'));
							?>

							<div class="search_panel active">
							<form action="<?php echo APPURL;?>/search_results_car.php" method="GET" id="search_form_1" class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
							<div class="search_item">
								<div>ARABA VARIŞ YERİ</div>
								<input type="text" name="destination" class="destination search_input" required="required">
							</div>
							<div class="search_item">
								<div>GİRİŞ</div>
								<input type="date" name="check_in" class="check_in search_input" placeholder="YYYY-MM-DD" value="<?php echo date('Y-m-d'); ?>">
							</div>
							<div class="search_item">
								<div>ÇIKIŞ</div>
								<input type="date"  name="check_out" class="check_out search_input" placeholder="YYYY-MM-DD" value="<?php echo $nextMonthLastDay; ?>">
							</div>
							<div class="search_item">
								<div>YETİŞKİNLER</div>
								<select name="adults" id="adults_4" class="dropdown_item_select search_input">
									<option>1</option>
									<option>2</option>
									<option>3</option>
								</select>
							</div>
							<div class="search_item">
								<div>ÇOCUKLAR</div>
								<select name="children" id="children_4" class="dropdown_item_select search_input">
									<option>0</option>
									<option>1</option>
									<option>2</option>
								</select>
							</div>
									
							
								
									<button class="button search_button">ARA<span></span><span></span><span></span></button>
								</form>
							</div>

							<!-- Search Panel -->

							<div class="search_panel">
							<form action="<?php echo APPURL;?>/search_results_flight.php" method="GET" id="search_form_2" class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
							<div class="search_item">
								<div>UÇUŞ VARIŞ YERİ</div>
								<input type="text" name="destination" class="destination search_input" required="required">
							</div>
							<div class="search_item">
								<div>GİRİŞ</div>
								<input type="date" name="check_in" class="check_in search_input" placeholder="YYYY-MM-DD" value="<?php echo date('Y-m-d'); ?>">
							</div>
							<div class="search_item">
								<div>ÇIKIŞ</div>
								<input type="date"  name="check_out" class="check_out search_input" placeholder="YYYY-MM-DD" value="<?php echo $nextMonthLastDay; ?>">
							</div>
							<div class="search_item">
								<div>YETİŞKİNLER</div>
								<select name="adults" id="adults_4" class="dropdown_item_select search_input">
									<option>1</option>
									<option>2</option>
									<option>3</option>
								</select>
							</div>
							<div class="search_item">
								<div>ÇOCUKLAR</div>
								<select name="children" id="children_4" class="dropdown_item_select search_input">
									<option>0</option>
									<option>1</option>
									<option>2</option>
								</select>
							</div>
							<button type="submit" class="button search_button">ARA<span></span><span></span><span></span></button>
						</form>
							</div>

							<!-- Search Panel -->

							<div class="search_panel">
							<form action="<?php echo APPURL;?>/search_results_cruise.php" method="GET" id="search_form_3" class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
							<div class="search_item">
								<div>TUR VARIŞ YERİ</div>
								<input type="text" name="destination" class="destination search_input" required="required">
							</div>
							<div class="search_item">
								<div>GİRİŞ</div>
								<input type="date" name="check_in" class="check_in search_input" placeholder="YYYY-MM-DD" value="<?php echo date('Y-m-d'); ?>">
							</div>
							<div class="search_item">
								<div>ÇIKIŞ</div>
								<input type="date"  name="check_out" class="check_out search_input" placeholder="YYYY-MM-DD" value="<?php echo $nextMonthLastDay; ?>">
							</div>
							<div class="search_item">
								<div>YETİŞKİNLER</div>
								<select name="adults" id="adults_4" class="dropdown_item_select search_input">
									<option>1</option>
									<option>2</option>
									<option>3</option>
								</select>
							</div>
							<div class="search_item">
								<div>ÇOCUKLAR</div>
								<select name="children" id="children_4" class="dropdown_item_select search_input">
									<option>0</option>
									<option>1</option>
									<option>2</option>
								</select>
							</div>
							<button type="submit" class="button search_button">ARA<span></span><span></span><span></span></button>
						</form>
							</div>

							<!-- Search Panel -->

							<div class="search_panel">
							<form action="<?php echo APPURL;?>/search_resulst_tour.php" method="GET" id="search_form_4" class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
							<div class="search_item">
								<div>GEZİ VARIŞ YERİ</div>
								<input type="text" name="destination" class="destination search_input" required="required">
							</div>
							<div class="search_item">
								<div>GİRİŞ</div>
								<input type="date" name="check_in" class="check_in search_input" placeholder="YYYY-MM-DD" value="<?php echo date('Y-m-d'); ?>">
							</div>
							<div class="search_item">
								<div>ÇIKIŞ</div>
								<input type="date"  name="check_out" class="check_out search_input" placeholder="YYYY-MM-DD" value="<?php echo $nextMonthLastDay; ?>">
							</div>
							<div class="search_item">
								<div>YETİŞKİNLER</div>
								<select name="adults" id="adults_4" class="dropdown_item_select search_input">
									<option>1</option>
									<option>2</option>
									<option>3</option>
								</select>
							</div>
							<div class="search_item">
								<div>ÇOCUKLAR</div>
								<select name="children" id="children_4" class="dropdown_item_select search_input">
									<option>0</option>
									<option>1</option>
									<option>2</option>
								</select>
							</div>
							<button type="submit" class="button search_button">ARA<span></span><span></span><span></span></button>
						</form>
							</div>

							<!-- Search Panel -->

							<div class="search_panel">
							<form action="<?php echo APPURL;?>/search_results_activate.php" method="GET" id="search_form_5" class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
							<div class="search_item">
								<div>AKTİVİTE VARIŞ YERİ</div>
								<input type="text" name="destination" class="destination search_input" required="required">
							</div>
							<div class="search_item">
								<div>GİRİŞ</div>
								<input type="date" name="check_in" class="check_in search_input" placeholder="YYYY-MM-DD" value="<?php echo date('Y-m-d'); ?>">
							</div>
							<div class="search_item">
								<div>ÇIKIŞ</div>
								<input type="date"  name="check_out" class="check_out search_input" placeholder="YYYY-MM-DD" value="<?php echo $nextMonthLastDay; ?>">
							</div>
							<div class="search_item">
								<div>YETİŞKİNLER</div>
								<select name="adults" id="adults_4" class="dropdown_item_select search_input">
									<option>1</option>
									<option>2</option>
									<option>3</option>
								</select>
							</div>
							<div class="search_item">
								<div>ÇOCUKLAR</div>
								<select name="children" id="children_4" class="dropdown_item_select search_input">
									<option>0</option>
									<option>1</option>
									<option>2</option>
								</select>
							</div>
							<button type="submit" class="button search_button">ARA<span></span><span></span><span></span></button>
						</form>
							</div>

                       </div>
</div>


							
						
					</div>
				</div>	
			</div>	
		</div>

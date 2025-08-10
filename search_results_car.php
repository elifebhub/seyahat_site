<?php require "includes/header.php"?>
<link rel="stylesheet" type="text/css" href="assets/styles/offers_styles.css">
<link rel="stylesheet" type="text/css" href="assets/styles/offers_responsive.css">

<div class="home">
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="assets/images/about_background.jpg"></div>
		<div class="home_content">
			<div class="home_title">TEKLİFLERİMİZ</div>
		</div>
	</div>

	<!-- Offers -->

	<div class="offers">

		<!-- Search -->
        <?php require "includes/sidebar.php"?>
		<!-- Offers -->

		<div class="container">
			<div class="row">
				<div class="col-lg-1 temp_col"></div>
				<div class="col-lg-11">
					
					<!-- Offers Sorting -->
					<div class="offers_sorting_container">
						<ul class="offers_sorting">
							<li>
								<span class="sorting_text">Fİyat</span>
								<i class="fa fa-chevron-down"></i>
								<ul>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "original-order" }' data-parent=".price_sorting"><span>Hepsİnİ Göster</span></li>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "price" }' data-parent=".price_sorting"><span>Artan</span></li>
								</ul>
							</li>
							<li>
								<span class="sorting_text">Konum</span>
								<i class="fa fa-chevron-down"></i>
								<ul>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "original-order" }'><span>Varsayılan</span></li>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "name" }'><span>Alfabetİk</span></li>
								</ul>
							</li>
							<li>
								<span class="sorting_text">Puan</span>
								<i class="fa fa-chevron-down"></i>
								<ul>
									<li class="filter_btn" data-filter="*"><span>Hepsİnİ Göster</span></li>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "stars" }'><span>Artan</span></li>
									<li class="filter_btn" data-filter=".rating_3"><span>3</span></li>
									<li class="filter_btn" data-filter=".rating_4"><span>4</span></li>
									<li class="filter_btn" data-filter=".rating_5"><span>5</span></li>
								</ul>
							</li>
							
				</div>

				<div class="col-lg-12">
					<!-- Offers Grid -->

					<div class="offers_grid">


					<?php 
					if (isset($_GET['destination']) && isset($_GET['check_in']) &&  isset($_GET['check_out']) && 
					isset($_GET['adults']) && isset($_GET['children'])  ){
					$destination = $_GET['destination'];
					$checkIn = $_GET['check_in'];
					$checkOut = $_GET['check_out'];
					$adults = $_GET['adults'];
					$children = $_GET['children'];

					
					try{
						$query= "SELECT * FROM car WHERE destination=:destination AND 
						(DATE(checking) <= :checkIn AND DATE(checkout) >=:checkOut) AND
						adults= :adults AND children = :children";
						$stmt = $conn->prepare($query);
						$stmt->bindParam(':destination', $destination);
						$stmt->bindParam(':checkIn', $checkIn);
						$stmt->bindParam(':checkOut', $checkOut);
						$stmt->bindParam(':adults', $adults);
						$stmt->bindParam(':children', $children);
						$stmt->execute();

						if($stmt->rowCount()===0){
					 ?>

					<div class="offers_item rating_4">
							<div class="row">
								
								<div class="col-lg-12">
								<div class="alert alert-warning" role="alert">
  Sonuç Yok
</div>
								
							   </div>
								
							</div>
						</div>


					<?php
						} else {

						while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
							
						?>
							
						<div class="offers_item rating_<?php echo $row['score']; ?>">
							<div class="row">
								<div class="col-lg-1 temp_col"></div>
								<div class="col-lg-3 col-1680-4">
									<div class="offers_image_container">
										
										<div class="offers_image_background" style="background-image:url(<?php echo DBIMAGE;?>/<?php echo $row['image']; ?> )"></div>
										<div class="offer_name"><a href="<?php echo APPURL;?>/detail/car.php?id=<?php echo $row['id'] ?>"><?php echo $row['title']; ?></a></div>
									</div>
								</div>
								<div class="col-lg-8">
									<div class="offers_content">
										<div class="offers_price">$<?php echo $row['price']; ?><span>GECELİK</span></div>
										<div class="rating_r rating_r_<?php echo $row['score']; ?> offers_rating" data-rating="<?php echo $row['score']; ?>">
											<i></i>
											<i></i>
											<i></i>
											<i></i>
											<i></i>
										</div>
										<p class="offers_text"><?php echo $row['description']; ?></p>
										
										<div class="button book_button"><a href="book.php?id=2&category=car">Rezervasyon Yap<span></span><span></span><span></span></a></div>
										<div class="offer_reviews">
										
											<div class="offer_reviews_rating text-center"><?php echo $row['user_rating']; ?></div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<?php 
						}}
				} catch(PDOException $e){
					echo "Error : ".$e->getMessage();
				}
			}
				?>



						

					</div>
				</div>

			</div>
		</div>		
	</div>

    <?php require "includes/footer.php"?>
<script src="assets/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="assets/plugins/parallax-js-master/parallax.min.js"></script>
<script src="assets/js/offers_custom.js"></script>
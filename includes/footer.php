
	<!-- Footer -->

	<footer class="footer">
		<div class="container">
			<div class="row">

			<?php 
							try{
								$query14= "SELECT * FROM about";
								$result14 = $conn->query($query14);
								while($row = $result14->fetch(PDO::FETCH_ASSOC)){
							?>

				<!-- Footer Column -->
				<div class="col-lg-3 footer_column">
					<div class="footer_col">
						<div class="footer_content footer_about">
							<div class="logo_container footer_logo">
								<div class="logo"><a href="#"><img src="<?php echo APPURL; ?>/assets/images/logo.png" alt="">ERA Seyehat</a></div>
							</div>
							<p class="footer_about_text">   <?php 
    $trim = strlen($row['description']) > 200 ? substr($row['description'], 0, 200) . '...' : $row['description'];
    echo $trim;
?></p>
							<ul class="footer_social_list">
								<li class="footer_social_item"><a href="<?php echo $row['pinterest']; ?>"><i class="fa fa-pinterest"></i></a></li>
								<li class="footer_social_item"><a href="<?php echo $row['facebook']; ?>"><i class="fa fa-facebook-f"></i></a></li>
								<li class="footer_social_item"><a href="<?php echo $row['twitter']; ?>"><i class="fa fa-twitter"></i></a></li>
								
							</ul>
						</div>
					</div>
				</div>
				<?php 
							} }
							catch(PDOException $e){
								echo "Error :" .$e->getMessage();
							}
							?>



				<!-- Footer Column -->
				<div class="col-lg-3 footer_column">
					<div class="footer_col">
						<div class="footer_title">Blog Postları</div>
						<div class="footer_content footer_blog">
							<?php
						try{
								$query20= "SELECT * FROM blog ORDER BY  create_at DESC LIMIT 3";
								$result20 = $conn->query($query20);
								while($row = $result20->fetch(PDO::FETCH_ASSOC)){
							?>

							<!-- Footer blog item -->
							<div class="footer_blog_item clearfix">
								<div class="footer_blog_image"><img src="<?php echo DBIMAGE; ?>/<?php echo $row['image']; ?>" alt="https://unsplash.com/@avidenov"></div>
								<div class="footer_blog_content">
									<div class="footer_blog_title"><a href="blog.html"><?php echo $row['title']; ?></a></div>
									<div class="footer_blog_date"><?php echo $row['create_at']; ?></div>
								</div>
							</div>
							
							<?php 
							} }
							catch(PDOException $e){
								echo "Error :" .$e->getMessage();
							}
							?>
							
							
						</div>
					</div>
				</div>

				<!-- Footer Column -->
				<div class="col-lg-3 footer_column">
					<div class="footer_col">
						<div class="footer_title">ETİKETLER</div>
						<div class="footer_content footer_tags">
							<ul class="tags_list clearfix">
								<li class="tag_item"><a href="#">Tasarım</a></li>
								<li class="tag_item"><a href="#">Moda</a></li>
								<li class="tag_item"><a href="#">Müzik</a></li>
								<li class="tag_item"><a href="#">Video</a></li>
								<li class="tag_item"><a href="#">Parti</a></li>
								<li class="tag_item"><a href="#">Fotoğrafçılık</a></li>
								<li class="tag_item"><a href="#">Macera</a></li>
								<li class="tag_item"><a href="#">Seyehat</a></li>
							</ul>
						</div>
					</div>
				</div>

				<?php 
							try{
								$query13= "SELECT * FROM about";
								$result13 = $conn->query($query13);
								while($row = $result13->fetch(PDO::FETCH_ASSOC)){
							?>

				<!-- Footer Column -->
				<div class="col-lg-3 footer_column">
					<div class="footer_col">
						<div class="footer_title">İLETİŞİM BİLGİLERİ</div>
						<div class="footer_content footer_contact">
							<ul class="contact_info_list">
								<li class="contact_info_item d-flex flex-row">
									<div><div class="contact_info_icon"><img src="<?php echo APPURL; ?>/assets/images/placeholder.svg" alt=""></div></div>
									<div class="contact_info_text"><?php echo $row['adress']; ?></div>
								</li>
								<li class="contact_info_item d-flex flex-row">
									<div><div class="contact_info_icon"><img src="<?php echo APPURL; ?>/assets/images/phone-call.svg" alt=""></div></div>
									<div class="contact_info_text"><?php echo $row['phone']; ?></div>
								</li>
								<li class="contact_info_item d-flex flex-row">
									<div><div class="contact_info_icon"><img src="<?php echo APPURL; ?>/assets/images/message.svg" alt=""></div></div>
									<div class="contact_info_text"><a href="mailto:contactme@gmail.com?Subject=Hello" target="_top"><?php echo $row['email']; ?></a></div>
								</li>
								<li class="contact_info_item d-flex flex-row">
									<div><div class="contact_info_icon"><img src="<?php echo APPURL; ?>/assets/images/planet-earth.svg" alt=""></div></div>
									<div class="contact_info_text"><a href="">www.eraseyehat.com</a></div>
								</li>
							</ul>
						</div>
					</div>
				</div>

				<?php 
							} }
							catch(PDOException $e){
								echo "Error :" .$e->getMessage();
							}
							?>

			</div>
		</div>
	</footer>

	<!-- Copyright -->

	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 order-lg-1 order-2  ">
					<div class="copyright_content d-flex flex-row align-items-center">
						<div><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Telif Hakkı &copy;<script>document.write(new Date().getFullYear());</script> Saklıdır. | <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">ERA Seyehat</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
					</div>
				</div>
				
			</div>
		</div>
	</div>

</div>

<script src="<?php echo APPURL; ?>/assets/js/jquery-3.2.1.min.js"></script>
<script src="<?php echo APPURL; ?>/assets/styles/bootstrap4/popper.js"></script>
<script src="<?php echo APPURL; ?>/assets/styles/bootstrap4/bootstrap.min.js"></script>
<script src="<?php echo APPURL; ?>/assets/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="<?php echo APPURL; ?>/assets/plugins/easing/easing.js"></script>
<script src="<?php echo APPURL; ?>/assets/js/custom.js"></script>

</body>

</html>
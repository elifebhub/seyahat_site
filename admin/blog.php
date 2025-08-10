<?php require "includes/header.php"?>


<?php 

if($_SERVER["REQUEST_METHOD"]=="POST"){
	$id = $_POST['id'];
	$stmt = $conn->prepare("DELETE FROM blog  WHERE `id`=:id");
	$stmt->bindParam(':id',$id );

	if($stmt->execute()){
        echo "Success";
    }
    else
    {
        echo "Error";
    }




}



?>

<main class="content">
				<div class="container-fluid p-0">

					<h1 class="h3 mb-3">Blog</h1>

					<div class="row">
						<div class="col-12">
							<div class="card">
							<div class="card-header">
								<p><a href="blog-add.php">						<button class="btn btn-info">Yeni Blog</button>
</a> </p>
</div>

							<div class="card-header">
							<form method="post"> 
							<input type="number" class="form-control" name="id">
<button name="submit"  class="btn btn-danger" type="submit" id="form_submit_button" class="form_submit_button button trans_200">Sil<span></span><span></span><span></span></button>

								</div>	
								</form>		

							
								<div class="card-header">
									<h5 class="card-title mb-0">Kullanıcılar</h5>
								</div>

									
								<table class="table table-hover my-0">
									<thead>
										<tr>
										<th class="d-none d-md-table-cell">id</th>

											<th>Başlık</th>
											<th class="d-none d-xl-table-cell">Resimler</th>
											<th>Tarih - Saat</th>
                                            <th>Aksiyon</th>
                                           
                                      
										</tr>
									</thead>
									<tbody>
<?php 

try {

    $stmt= $conn->prepare("SELECT * FROM blog");
    $stmt ->execute();


    while($row = $stmt->fetch(PDO::FETCH_ASSOC)){

   
?>

										<tr>
										<td><?php echo $row["id"]; ?></td>
											<td><?php echo $row["title"]; ?></td>
                                            <td class="d-none d-xl-table-cell"><img style="width: 45px" src="<?php echo $row["image"]; ?>"> </td>
                                            <td class="d-none d-xl-table-cell"><?php echo $row["create_at"]; ?></td>
                                            <td class="d-none d-md-table-cell"><a href="blog-update.php?id=<?php echo $row["id"]; ?>">Güncelle</a></td>

										</tr>


                                <?php 
    }
}
catch(PDOException $e)
{
    echo "Error" .$e->getMessage();
}
                                
                                
                                ?>
										
									</tbody>
								</table>
							</div>
						</div>
					</div>

				</div>
			</main>

			
			



<?php require "includes/footer.php"?>
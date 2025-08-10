<?php require "includes/header.php"?>


<?php 

if($_SERVER["REQUEST_METHOD"]=="POST"){
	$id = $_POST['id'];
	$stmt = $conn->prepare("DELETE FROM active  WHERE `id`=:id");
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

					<h1 class="h3 mb-3">AKTİVİTE</h1>

					<div class="row">
						<div class="col-12">
							<div class="card">
							<div class="card-header">
								<p><a href="active-add.php">			<button class="btn btn-info">YENİ AKTİVİTE</button>
</a> </p>
</div>

							<div class="card-header">
							<form method="post"> 
							<input type="number" class="form-control" name="id">
<button name="submit"  class="btn btn-danger" type="submit" id="form_submit_button" class="form_submit_button button trans_200">SİL<span></span><span></span><span></span></button>

								</div>	
								</form>		

							
								<div class="card-header">
									<h5 class="card-title mb-0">AKTİVİTE</h5>
								</div>

									
								<table class="table table-hover my-0">
									<thead>
										<tr>
										<th class="d-none d-md-table-cell">id</th>

											<th>Başlık</th>
											<th class="d-none d-xl-table-cell">Resim</th>
											<th class="d-none d-xl-table-cell">Fiyat</th>
											<th>Skor</th>
                                            <th>Kullanıcı oyu</th>
                                            <th> Varış Yeri</th>
                                            <th> Giriş- Çıkış </th>
                                            <th> Yetişkinler - Çocuklar </th>
											<th class="d-none d-md-table-cell">Aksiyon</th>
                                      
										</tr>
									</thead>
									<tbody>
<?php 

try {

    $stmt= $conn->prepare("SELECT * FROM active");
    $stmt ->execute();


    while($row = $stmt->fetch(PDO::FETCH_ASSOC)){

   
?>

										<tr>
										<td><?php echo $row["id"]; ?></td>
											<td><?php echo $row["title"]; ?></td>
											<td class="d-none d-xl-table-cell"><img style="width: 45px" src="<?php echo $row["image"]; ?>"> </td>
											<td class="d-none d-xl-table-cell"><?php echo $row["price"]; ?></td>
                                            <td class="d-none d-xl-table-cell"><?php echo $row["score"]; ?></td>
                                            <td class="d-none d-xl-table-cell"><?php echo $row["user_rating"]; ?></td>
                                            <td class="d-none d-xl-table-cell"><?php echo $row["destination"]; ?></td>
                                            <td class="d-none d-xl-table-cell"><?php echo $row["checking"]; ?> - <?php echo $row["checkout"]; ?> </td>
                                            <td class="d-none d-xl-table-cell"><?php echo $row["adults"]; ?> -  <?php echo $row["children"]; ?> </td>
											
											<td class="d-none d-md-table-cell"><a href="active-update.php?id=<?php echo $row["id"]; ?>">Güncelle</a></td>
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
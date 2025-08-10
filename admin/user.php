<?php require "includes/header.php"?>


<?php 

if($_SERVER["REQUEST_METHOD"]=="POST"){
	$id = $_POST['id'];
	$stmt = $conn->prepare("DELETE FROM users  WHERE `id`=:id");
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

					<h1 class="h3 mb-3">Kullanıcılar</h1>

					<div class="row">
						<div class="col-12">
							<div class="card">

							<div class="card-header">
							<form method="post"> 
							<input type="number" class="form-control" name="id">
								<button name="submit"  class="btn btn-primary" type="submit" id="form_submit_button" class="form_submit_button button trans_200">Kaydet<span></span><span></span><span></span></button>

								</div>	
								</form>		

							
								<div class="card-header">
									<h5 class="card-title mb-0">Kullanıcılar</h5>
								</div>

									
								<table class="table table-hover my-0">
									<thead>
										<tr>
										<th class="d-none d-md-table-cell">id</th>

											<th>Kullanıcı Adı</th>
											<th class="d-none d-xl-table-cell">E-Mail</th>
											<th class="d-none d-xl-table-cell">Oluşturt</th>
											<th>Rol</th>
											<th class="d-none d-md-table-cell">Macera</th>
                                      
										</tr>
									</thead>
									<tbody>
<?php 

try {

    $stmt= $conn->prepare("SELECT * FROM users");
    $stmt ->execute();


    while($row = $stmt->fetch(PDO::FETCH_ASSOC)){

   
?>

										<tr>
										<td><?php echo $row["id"]; ?></td>
											<td><?php echo $row["username"]; ?></td>
											<td class="d-none d-xl-table-cell"><?php echo $row["email"]; ?></td>
											<td class="d-none d-xl-table-cell"><?php echo $row["create_at"]; ?></td>
											<td>
                                                
                                            <?php 
                                            if($row["admin"]==1)
                                            {
                                                echo '<span class="badge bg-success">Admin</span>';

                                            }
                                            else
                                            {
                                                echo '<span class="badge bg-danger">user</span>';
                                            }
                                            
                                         
                                            
                                            
                                            ?>
                                       </td>
											<td class="d-none d-md-table-cell"><a href="user-update.php?id=<?php echo $row["id"]; ?>">Güncelle</a></td>
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
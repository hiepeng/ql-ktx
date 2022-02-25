<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['detsuid']==0)) {
  header('location:logout.php');
  } else{

if(isset($_POST['submit']))
  {
  	$userid=$_SESSION['detsuid'];
    $dateexpense=$_POST['dateexpense'];
   
	 $name=$_POST['name'];
	 $phone=$_POST['phone'];
    
    $query=mysqli_query($con, "insert into nguoithue(UserId,NgayThue,Name,Phone) value('$userid','$dateexpense','$name','$phone')");
if($query){
echo "<script>alert('Đăng kí thuê phòng thành công, chúng tối sẽ liên hệ lại sớm nhất');</script>";
} else {
echo "<script>alert('Something went wrong. Please try again');</script>";

}
  
}
  ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Đăng kí thuê phòng</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="css/datepicker3.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">
	
	<!--Custom Font-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse"><span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span></button>
                <a class="navbar-brand" href="add-ktx.php"><span>Đăng kí thuê phòng</span></a>
                
            </div>
            
        </div>
        <!-- /.container-fluid -->
    </nav>
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">Đăng kí thuê phòng</li>
			</ol>
		</div><!--/.row-->
		
		
				
		
		<div class="row">
			<div class="col-lg-12">
			
				
				
				<div class="panel panel-default">
					<div class="panel-heading">Đăng kí thuê phòng</div>
					<div class="panel-body">
						<p style="font-size:16px; color:red; align:center"> <?php if($msg){ echo $msg;
  }  ?> </p>
						<div class="col-md-12">
							
							<form role="form" method="post" action="">
								<div class="form-group">
									<label>Ngày thuê</label>
									<input class="form-control" type="date" value="" name="dateexpense" required="true">
								</div>
							
								
								<div class="form-group">
									<label>Tên người thuê</label>
									<input class="form-control" type="text" value="" required="true" name="name">
								</div>

								<div class="form-group">
									<label>Điện thoại</label>
									<input class="form-control" type="text" value="" required="true" name="phone">
								</div>

							
																
								<div class="form-group has-success">
									<button type="submit" class="btn btn-primary" name="submit">Thêm</button>
								</div>
								
								
								
								</div>
								
							</form>
						</div>
					</div>
				</div><!-- /.panel-->
			</div><!-- /.col-->
			<?php include_once('includes/footer.php');?>
		</div><!-- /.row -->
	</div><!--/.main-->
	
<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/custom.js"></script>
	
</body>
</html>
<?php }  ?>
<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
?>

<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
        <div class="profile-sidebar">
            <div class="profile-userpic">
                <img src="http://placehold.it/50/30a5ff/fff" class="img-responsive" alt="">
            </div>
            <div class="profile-usertitle">
                <?php
$uid=$_SESSION['detsuid'];
$ret=mysqli_query($con,"select FullName from tbluser where ID='$uid'");
$row=mysqli_fetch_array($ret);
$name=$row['FullName'];

?>
                <div class="profile-usertitle-name"><?php echo $name; ?></div>
                <div class="profile-usertitle-status"><span class="indicator label-success"></span>Online</div>
            </div>
            <div class="clear"></div>
        </div>
        <div class="divider"></div>
        
        <ul class="nav menu">
            <li class="active"><a href="dashboard.php"><em class="fa fa-dashboard">&nbsp;</em> Dashboard</a></li>
            
            
           
          
            <li><a href="add-expense.php"><em class="fa fa-arrow-right">&nbsp;</em>Thêm mới KTX</a></li>
            <li><a href="manage-expense.php"><em class="fa fa-arrow-right">&nbsp;</em>Danh sách KTX</a></li>
   

            
            <li><a href="list-add.php"><em class="fa fa-envelope-open-o">&nbsp;</em>Các đơn xin thuê</a></li>
            <li><a href="add-ktx.php"><em class="fa fa-asterisk">&nbsp;</em>Tạo đăng kí thuê</a></li>
            <li><a href="user-profile.php"><em class="fa fa-user">&nbsp;</em> Hồ sơ</a></li>

             <li><a href="change-password.php"><em class="fa fa-clone">&nbsp;</em> Đổi mật khẩu</a></li>
<li><a href="index.php"><em class="fa fa-power-off">&nbsp;</em> Đăng xuất</a></li>
<a href="register.php"  class="btn btn-primary">Thêm Tài khoản</a></span>

        </ul>
    </div>
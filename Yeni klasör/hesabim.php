<?php include 'header.php'; ?>

<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="page-title-wrap">
				<div class="page-title-inner">
					<div class="row">
						<div class="col-md-12">
							<div class="bigtitle">Hesap Bilgilerim</div>
							<p >Bilgilerinizi aşağıdan düzenleyebilirsiniz...</p>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>

	<form action="nedmin/netting/islem.php" method="POST" class="form-horizontal checkout" role="form">
		<div class="row">
			<div class="col-md-6">
				<div class="title-bg">
					<div class="title">Kayıt Bilgileri</div>
				</div>
				<?php 

if ($_GET['durum']=="ok") {?>

<b style="color:green;">İşlem Başarılı...</b>

<?php } elseif ($_GET['durum']=="no") {?>

<b style="color:red;">İşlem Başarısız...</b>

<?php }

?>
				

				


				<div class="form-group dob">
					<div class="col-sm-12">
						Kullanıcı adı (değiştirilemez)
						<input type="text" class="form-control"  required="" disabled="" name="kullanici_adsoyad" value="<?php echo $kullanicicek['kullanici_adsoyad'] ?>" placeholder="Ad ve Soyadınızı Giriniz...">
					</div>
					
				</div>
				<div class="form-group">
					<div class="col-sm-12">
						Mail
						<input type="email" class="form-control" required="" name="kullanici_mail" value="<?php echo $kullanicicek['kullanici_mail'] ?>"  placeholder="Dikkat! Mail adresiniz kullanıcı adınız olacaktır.">
					</div>
				</div>
				<div class="form-group dob">
					<div class="col-sm-6">
						İl
						<input type="text" class="form-control" name="kullanici_il" value="<?php echo $kullanicicek['kullanici_il'] ?>"   placeholder="Şifrenizi Giriniz...">
					</div>
					<div class="col-sm-6">
						İlce
						<input type="text" class="form-control" name="kullanici_ilce" value="<?php echo $kullanicicek['kullanici_ilce'] ?>"  placeholder="Şifrenizi Tekrar Giriniz...">
					</div>
				</div>

				<input type="hidden" name="kullanici_id" value="<?php echo $kullanicicek['kullanici_id'] ?>" >


				
			</div>
			<br>
			<br>
			<br>
			<div class="col-md-6">
				<br>
				<div class="form-group dob">
					<div class="col-sm-12">
					Telefon No
						<input type="text" class="form-control" name="kullanici_gsm" value="<?php echo $kullanicicek['kullanici_gsm'] ?>" placeholder="Ad ve Soyadınızı Giriniz...">
					</div>
					
				</div>

				<div class="form-group dob">
					<div class="col-sm-12">
						Adres
						<input type="text" class="form-control" name="kullanici_adres" value="<?php echo $kullanicicek['kullanici_adres'] ?>" placeholder="Ad ve Soyadınızı Giriniz...">
					</div>
					
				</div>
				
			</div>
		</div>
		<button type="submit" name="kullanicigncelle" class="btn btn-default btn-red">Bilgilerimi Güncelle</button>
	</div>
</form>
<div class="spacer"></div>
</div>

<?php include 'footer.php'; ?>
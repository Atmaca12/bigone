<? include 'header.php'; 
session_start();

$urunsor=$db->prepare("SELECT * FROM urun where urun_id=:id");
$urunsor->execute(array(
  'id'=>$_GET['urun_id']
  ));

  $uruncek=$urunsor->fetch(PDO::FETCH_ASSOC);

  if($urunsor->rowcount()==0){
	header("Location:index.php?durum=oynasma");
	exit;
  }

?>

	
	
	<div class="container">
		
		<div class="row">
			<div class="col-md-9"><!--Main content-->
				<div class="title-bg">
					<div class="title"><? echo $uruncek['urun_ad'] ?></div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="dt-img">
							<div class="detpricetag"><div class="inner"><? echo $uruncek['urun_fiyat'] ?></div></div>
							<a class="fancybox" href="images\sample-1.jpg" data-fancybox-group="gallery" title="Cras neque mi, semper leon"><img src="images\sample-1.jpg" alt="" class="img-responsive"></a>
						</div>
						<div class="thumb-img">
							<a class="fancybox" href="images\sample-4.jpg" data-fancybox-group="gallery" title="Cras neque mi, semper leon"><img src="images\sample-4.jpg" alt="" class="img-responsive"></a>
						</div>
						<div class="thumb-img">
							<a class="fancybox" href="images\sample-5.jpg" data-fancybox-group="gallery" title="Cras neque mi, semper leon"><img src="images\sample-5.jpg" alt="" class="img-responsive"></a>
						</div>
						<div class="thumb-img">
							<a class="fancybox" href="images\sample-1.jpg" data-fancybox-group="gallery" title="Cras neque mi, semper leon"><img src="images\sample-1.jpg" alt="" class="img-responsive"></a>
						</div>
					</div>
					<div class="col-md-6 det-desc">
						<div class="productdata">
							<div class="infospan">ürün kodu  <span><? echo $uruncek['urun_id'] ?></span></div>
							<div class="infospan">ürün fiyarı <span><? echo $uruncek['urun_fiyat'] ?></span></div>
							<br>
								<div class="form-group">
									<label for="qty" class="col-sm-2 control-label">adet</label>
									<div class="col-sm-4">
										<input type="text" class="form-control" name="urun_adet" value="1">
									</div>
									<div class="col-sm-4">
										<button class="btn btn-default btn-red btn-sm"><span class="addchart">Sepete Ekle </span></button>
									</div>
									<div class="clearfix"></div>
								</div>
							
							
						
							
							<div class="sharing">
								<div class="share-bt">
									<div class="addthis_toolbox addthis_default_style ">
										<a class="addthis_counter addthis_pill_style"></a>
									</div>
									<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-4f0d0827271d1c3b"></script>
									<div class="clearfix"></div>
								</div>
								<div class="avatock"><span>
							<?
								if($uruncek['urun_stok']>=50){
									echo "stokta var - adedi :".$uruncek['urun_stok'];
								}
								else if($uruncek['urun_stok']==1 || $uruncek['urun_stok']<=10 ){?>
									<button class="btn btn-danger btn-xs" >TÜKENMEK ÜZERE!  </button>
							<?
							echo "adedi : ".$uruncek['urun_stok'] ;
								} else{echo"stokta yok";}
							
							?>
							
							
							
							</span></div>
							</div>
							
						</div>
					</div>
					
				</div>

				<div class="tab-review">
					<ul id="myTab" class="nav nav-tabs shop-tab">
						<li class="active"><a href="#desc" data-toggle="tab">Açıklama</a></li>
						<li class=""><a href="#rev" data-toggle="tab">Yorumlar(0)</a></li>
						<li class=""><a href="#video" data-toggle="tab">video</a></li>
						
					</ul>
					<div id="myTabContent" class="tab-content shop-tab-ct">
						<div class="tab-pane fade active in" id="desc">
							<p>
							<? echo $uruncek['urun_detay'] ?>
							</p>
						</div>
						<div class="tab-pane fade" id="rev">


							<p class="dash">
							<span>Jhon Doe</span> (11/25/2012)<br><br>
							Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse.
							</p>


							<h4>Yorum yaz</h4>
							<form role="form">
							
								<?   if(isset($_SESSION['userkullanicigiris'])){  ?>

									<div class="form-group">
								<textarea class="form-control" id="text"></textarea>
							</div>
							<div class="form-group">
								<div class="rate"><span>Rating:</span></div>
								<div class="starwrap">
									<div id="default"></div>
								</div>
								<div class="clearfix"></div>
							</div>
							<button type="submit" class="btn btn-default btn-red btn-sm">Submit</button>

									<!-- video -->
							
						

							</form>
							<?
							
						} else {echo"Yorum Yazmak İçin Giriş Yapın";}
								
								?>
								


									
						</div>
						<div class="tab-pane fade " id="video">

							<? 
							$say=strlen($uruncek['urun_video']);
							if($say>6){   ?>
							<p>
							<iframe width="560" height="315" src="https://www.youtube.com/embed/<?php echo $uruncek['urun_video'] ?>" frameborder="0" allowfullscreen></iframe>
							</p>
							<?  } else {
								echo "urun videosu eklenmemiştir" ;
								}   
								
								?>
						</div>
							
						
					</div>
					
				</div>
				
							

				
				<div id="title-bg">
					<div class="title">Related Product</div>
				</div>



				<div class="row prdct"><!--Products-->


				<?php
				//benzer urunleri random şekilde çekme alanı
									$kategori_id=$uruncek['kategori_id'];
					 $urunaltsor=$db->prepare("SELECT * FROM urun where kategori_id=:kategori_id  ORDER BY rand() DESC limit 3");
					$urunaltsor->execute(array(
    				'kategori_id' =>$kategori_id
					)); 
					
					while($urunaltcek=$urunaltsor->fetch(PDO::FETCH_ASSOC)) {
					
					?>	
					<div class="col-md-4">
						<div class="productwrap">
							<div class="pr-img">
								<div class="hot"></div>
								<a href="urun-<?=seo($urunaltcek['urun_ad'])."-".$urunaltcek['urun_id'] ?>"><img src="images\sample-3.jpg" alt="" class="img-responsive"></a>
								<div class="pricetag on-sale"><div class="inner on-sale"><? echo $urunaltcek['urun_fiyat']."tl" ?></div></div>
							</div>
							<span class="smalltitle"><a href="urun-<?=seo($urunaltcek['urun_ad'])."-".$urunaltcek['urun_id'] ?>"><? echo $urunaltcek['urun_ad'] ?></a></span>
							<span class="smalldesc">Item kodu: <? echo $urunaltcek['urun_id'] ?></span>
						</div>
                    </div>

					<? } ?>



					
				</div><!--Products-->
				<div class="spacer"></div>
			</div><!--Main content-->
			<? include 'sidebar.php' ?>
		</div>
	</div>
	
	<? include 'footer.php' ?>
<?php 
session_start();

if (isset($_POST['tcsorgula'])) {
    
    if (tckimlik($_POST['tcno'])) {
        
        $_SESSION['tcok']="tcok";
header("Location:gir.php");
    }

    else{
   echo "gecerli tc kimlik no girin";

}
}

    








function tckimlik($tckimlik){ 
    $olmaz=array('11111111110','22222222220','33333333330','44444444440','55555555550','66666666660','7777777770','88888888880','99999999990'); 
    if($tckimlik[0]==0 or !ctype_digit($tckimlik) or strlen($tckimlik)!=11){ return false;  } 
    else{ 
        for($a=0;$a<9;$a=$a+2){ $ilkt=$ilkt+$tckimlik[$a]; } 
        for($a=1;$a<9;$a=$a+2){ $sont=$sont+$tckimlik[$a]; } 
        for($a=0;$a<10;$a=$a+1){ $tumt=$tumt+$tckimlik[$a]; } 
        if(($ilkt*7-$sont)%10!=$tckimlik[9] or $tumt%10!=$tckimlik[10]){ return false; } 
        else{  
            foreach($olmaz as $olurmu){ if($tckimlik==$olurmu){ return false; } } 
            return true; 
        } 
    } 
} 
if(tckimlik('11111111110')){ echo 'Tc Kimlik Numarası doğru!'; } else { echo 'Lütfen geçerli bir Tc Kimlik Numarası giriniz...'; } 
?>



<form action="" method="post">
    <input type="text" name="tcno" id="" placeholder="tc imlik nonuzu giriniz">
<input type="submit" name="tcsorgula" >

</form>
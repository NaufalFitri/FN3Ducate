<?php
# Memulakan fungsi SESSION
session_start();

# Memanggil fail header.php dan fail fungsi.php
include('header.php');
include('fungsi.php');
?>


<div class="w3-container w3-light-grey">
<div class="w3-row w3-margin-top">
  <div class=" w3-container w3-third">
    <div class="w3-panel w3-border w3-light-gray w3-round-large w3-center">

<br><b>Sila Pilih :</b><br><br>
 <a class="w3-btn w3-round w3-block w3-blue-gray" href='peserta-signup-borang.php'>Pendaftaran Peserta Baharu</a><br> 
 <a class="w3-btn w3-round w3-block w3-blue-gray" href='peserta-login-borang.php'>Login Peserta</a><br>
 <a class="w3-btn w3-round w3-block w3-blue-gray" href='hakim-login-borang.php'>Login Hakim</a><br>
  </div>
</div>

  <div class="w3-container w3-twothird">
    <div class="w3-panel w3-border w3-light-grey w3-round-large w3-center">
  <p><hr>
<p><b><u>Syarat Pertandingan</u></b></p>
<li>Seorang peserta hanya boleh menghantar 1 penyertaan sahaja.</li>
<li>Terdapat 2 kategori iaitu sekolah dan individu.</li>
<li>Bagi kategori individu, pemenang akan tempat 1 hingga 5.</li>
<li>Semua penyertaan akan mendapat sijil penyertaan.</li>
<li>Bagi kategori sekolah, tiada had untuk pelajar menghantar penyertaan.</li>
<li>Pemenang akan dikira dari jumlah mata terkumpul pelajar-pelajar dari sekolah tersebut yang menyertai pertandingan.</li>
<li>Keputusan akan hanya dipaparkan setelah semua peserta telah dinilai.</li>
<hr></p>
</div>
  </div>
</div>
</div>

<div class="w3-container w3-green">
<div class="w3-panel w3-light-grey w3-topbar w3-bottombar w3-border-black w3-center">
    

    <u><b><br>Keputusan Individu</b></u>
    
    <?PHP
    # Memanggil fungsi semak() dari fail fungsi.php
    $k=semak();
    
    # Semakan nilai yang dipulangkan
    
    if($k=="Semua peserta telah dinilai.")
    {
        # jika nilai dipulangkan semua peserta telah dinilai.
        # panggil fungsi keputusan individu dari fail fungsi.php
        # dan papar keputusan 5 individu terbaik.
        # bilangan pemenang anda boleh ubah di fail fungsi.php
        keputusan_individu();
    }
    else
    {
        # paparan jika proses penilaian masih belum tamat
        echo "<br>Proses penilaian masih dibuat.<br>";
    }
    ?>
    <br>
    </div>
</div>

<div class="w3-container w3-red">
<div class="w3-panel w3-light-grey w3-topbar w3-bottombar w3-border-black w3-center">

<u><b><br>Keputusan Sekolah</b></u>

<?PHP
# Memanggil fungsi semak() dari fail fungsi.php
$k=semak();

if($k=="Semua peserta telah dinilai.")
{
    # jika nilai dipulangkan semua peserta telah dinilai. 
    # panggil fungsi keputusan sekolah dari fail fungsi
    # dan paparkan keputusan keseluruhan sekolah
    keputusan_sekolah();
}
else
{
    # paparan jika proses penilaian masih belum tamat
    echo "<br>Proses penilaian masih dibuat.<br>";
}

?>
<br>
</div>
</div>









































<div class="w3-panel w3-border w3-blue-gray w3-round-large ">




<div class="w3-row w3-margin-top">
  <div class=" w3-container w3-third">
    <div class="w3-panel w3-border w3-light-gray w3-round-large w3-center">

<br><b>Sila Pilih :</b><br><br>
 <a class="w3-btn w3-round w3-block w3-blue-gray" href='peserta-signup-borang.php'>Pendaftaran Peserta Baharu</a><br> 
 <a class="w3-btn w3-round w3-block w3-blue-gray" href='peserta-login-borang.php'>Login Peserta</a><br>
 <a class="w3-btn w3-round w3-block w3-blue-gray" href='hakim-login-borang.php'>Login Hakim</a><br>
  </div>
</div>

  <div class="w3-container w3-twothird">
    <div class="w3-panel w3-border w3-light-grey w3-round-large w3-center">
  <p><hr>
<p><b><u>Syarat Pertandingan</u></b></p>
<li>Seorang peserta hanya boleh menghantar 1 penyertaan sahaja.</li>
<li>Terdapat 2 kategori iaitu sekolah dan individu.</li>
<li>Bagi kategori individu, pemenang akan tempat 1 hingga 5.</li>
<li>Semua penyertaan akan mendapat sijil penyertaan.</li>
<li>Bagi kategori sekolah, tiada had untuk pelajar menghantar penyertaan.</li>
<li>Pemenang akan dikira dari jumlah mata terkumpul pelajar-pelajar dari sekolah tersebut yang menyertai pertandingan.</li>
<li>Keputusan akan hanya dipaparkan setelah semua peserta telah dinilai.</li>
<hr></p>
</div>
  </div>
</div>

<div class="w3-panel w3-light-grey w3-topbar w3-bottombar w3-border-black w3-center">
    

<u><b><br>Keputusan Individu</b></u>

<?PHP
# Memanggil fungsi semak() dari fail fungsi.php
$k=semak();

# Semakan nilai yang dipulangkan

if($k=="Semua peserta telah dinilai.")
{
    # jika nilai dipulangkan semua peserta telah dinilai.
    # panggil fungsi keputusan individu dari fail fungsi.php
    # dan papar keputusan 5 individu terbaik.
    # bilangan pemenang anda boleh ubah di fail fungsi.php
    keputusan_individu();
}
else
{
    # paparan jika proses penilaian masih belum tamat
    echo "<br>Proses penilaian masih dibuat.<br>";
}
?>
<br>
</div>


<!-- Memaparkan keputusan Keseluruhan Sekolah -->
<div class="w3-panel w3-light-grey w3-topbar w3-bottombar w3-border-black w3-center">

<u><b><br>Keputusan Sekolah</b></u>

<?PHP
# Memanggil fungsi semak() dari fail fungsi.php
$k=semak();

if($k=="Semua peserta telah dinilai.")
{
    # jika nilai dipulangkan semua peserta telah dinilai. 
    # panggil fungsi keputusan sekolah dari fail fungsi
    # dan paparkan keputusan keseluruhan sekolah
    keputusan_sekolah();
}
else
{
    # paparan jika proses penilaian masih belum tamat
    echo "<br>Proses penilaian masih dibuat.<br>";
}

?>
<br>
</div>

<?php include ('footer.php'); ?>






















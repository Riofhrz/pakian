<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title>Kios Jersey</title>
  <link rel="stylesheet" href="style.css">
</head>

<body>

  <div class="header">
    <p>Toko Pakaian Band</p>
  </div>
  <nav>
    <ul> <?php include("page/navbar.php") ?> </ul>
  </nav>

  <?php include("content.php") ?>

  <?php include("page/user/keranjang.php") ?>
  <div class="footer">
    <p>copyright by</p>
  </div>

</body>

</html>
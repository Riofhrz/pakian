SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `tbl_barang` (
  `id_barang` int(100) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(5) NOT NULL,
  `created` date NOT NULL,
  `nama_image` varchar(50) NOT NULL,
  `type_image` varchar(50) NOT NULL,
  `size_image` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `tbl_barang` (`id_barang`, `deskripsi`, `harga`, `stok`, `created`, `nama_image`, `type_image`, `size_image`) VALUES
(1, 'Jersey Barcelona HOME 2017/2018', 145000, 100, '2021-01-01', '1.PNG', 'image/png', 106168),
(2, 'Jersey Real Madrid HOME 2017/2018', 135000, 50, '2021-01-01', '3.png', 'image/png', 85919),
(3, 'Jersey Argentina HOME 2017/2018', 120000, 50, '2021-01-01', '2.png', 'image/png', 86296),
(4, 'Jersey Liverpool HOME 2017/2018', 135000, 100, '2021-01-01', '4.png', 'image/png', 92477),
(5, 'Jersey AC Milan HOME 2017/2018', 130000, 50, '2021-01-01', '5.png', 'image/png', 93559),
(6, 'Jersey Manchester City HOME 2017/2018', 145000, 100, '2021-01-01', '6.png', 'image/png', 98904),
(7, 'Jersey Bayern Munchen HOME 2017/2018', 130000, 50, '2021-01-01', '7.png', 'image/png', 99855),
(9, 'Jersey Borusia Dortmund HOME 2017/2018', 135000, 50, '2021-01-01', '8.png', 'image/png', 135955);

CREATE TABLE `tbl_keranjang` (
  `id` int(100) NOT NULL,
  `id_user` int(100) NOT NULL,
  `id_barang` int(100) NOT NULL,
  `ukuran` varchar(5) NOT NULL,
  `qty` int(50) NOT NULL,
  `kurir` varchar(15) NOT NULL,
  `date_in` date NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `tbl_pesanan` (
  `id_pesanan` int(100) NOT NULL,
  `id_user` int(100) NOT NULL,
  `id_barang` int(100) NOT NULL,
  `ukuran` varchar(5) NOT NULL,
  `qty` int(50) NOT NULL,
  `kurir` varchar(15) NOT NULL,
  `date_in` date NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_pesanan` (`id_pesanan`, `id_user`, `id_barang`, `ukuran`, `qty`, `kurir`, `date_in`, `total`) VALUES;


CREATE TABLE `tbl_users` (
  `id_user` int(100) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(6) NOT NULL,
  `password` varchar(6) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_hp` text NOT NULL,
  `title` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_users` (`id_user`, `nama_lengkap`, `email`, `username`, `password`, `alamat`, `no_hp`, `title`) VALUES;


ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_barang`);

ALTER TABLE `tbl_keranjang`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tbl_pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_user`);


ALTER TABLE `tbl_barang`
  MODIFY `id_barang` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `tbl_keranjang`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tbl_pesanan`
  MODIFY `id_pesanan` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

ALTER TABLE `tbl_users`
  MODIFY `id_user` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

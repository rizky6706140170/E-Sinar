<?php
global $wpdb;
global $current_user;
session_start();
// $id_user      = $_GET['id_user'];
// $id_user = $_SESSION['login'];
$cek_sesion = $_GET['id_user']; //keamanan jika ada yang akses lewat link
$id_user = $current_user->id;
// echo $cek_sesion;
// echo $id_user;
// $query_seminar_h = $wpdb->get_results("SELECT * FROM daftar_seminar where id_user = '$id_user'");
$query_seminar_h = $wpdb->get_results("SELECT * , a.id_post as post_id , d.post_title as title , e.meta_value as tanggal_sm FROM daftar_seminar a LEFT JOIN wp_users b on a.id_user = b.ID LEFT JOIN file_verifikasi c on a.id = c.id_daftar LEFT JOIN wp_posts d on a.id_post = d.ID LEFT JOIN wp_postmeta e on a.id_post = e.post_id where a.id_user = '$id_user' and e.meta_key = 'date'");
?>
<?php if($cek_sesion && $cek_sesion != $id_user) : ?>
<div>
    <h1>anda tidak bisa akses kesini</h1>
</div>
<?php  elseif (empty($cek_sesion) && !empty($id_user) || $cek_sesion && $cek_sesion == $id_user) :?>
<div class="row" >
	<div class="col-md-12" style="text-align: center;">
		<h3>History Pendaftaran Seminar</h3>
	</div>
	
</div>
<div class="row" >
	<div class="col-md-12" style="text-align: center;">
		 <form method="post" action="<?php echo $_SERVER['REQUEST_URI']; ?>" style="display: inline-block;">
        <table id="table-data" class='wp-list-table widefat fixed striped' style="width: 100%;">
            <thead>
                <tr>
                    <th class="manage-column ss-list-width text-center text-bold" style="width: 5%;">No</th>
                    <th class="manage-column ss-list-width text-center text-bold">Nama Pendaftar</th>
                    <th class="manage-column ss-list-width text-center text-bold">Nama Seminar</th>
                    <th class="manage-column ss-list-width text-center text-bold">Tanggal Seminar</th>
                    <th class="manage-column ss-list-width text-center text-bold">Foto Pembayaran</th>
                    <th class="manage-column ss-list-width text-center text-bold">Status</th>
                    <th class="manage-column ss-list-width text-center text-bold">Action</th>
                </tr>
            </thead>
            <tbody>
            	<?php $no = 0; foreach ($query_seminar_h as $key => $value): $no++; ?>
            		<tr>
                        <td class="manage-column ss-list-width text-center"><?php echo $no; ?></td>
            			<td class="manage-column ss-list-width text-center">
                            <?php
                               echo $value->display_name;
                            ?>         
                        </td>
            			<td class="manage-column ss-list-width text-center"><?php echo $value->title; ?></td>
                        <td class="manage-column ss-list-width text-center">
                            <?php
                                 $tgl_sm=$wpdb->get_var("SELECT meta_value from wp_postmeta where post_id='$value->post_id' and meta_key = 'date'");
                                 $tanggal = substr($tgl_sm, 6);
                                $bulan = substr($tgl_sm, 4,-2);
                                $tahun = substr($tgl_sm, 0,4);
                                $tanggal_seminar = $tanggal .'-'. $bulan .'-'. $tahun;
                                echo $tanggal_seminar;
                            ?>
                        </td>
            			<td class="manage-column ss-list-width text-center">
                            <a href="<?php echo content_url().'/uploads/bukti/'.$value->file_foto; ?>" target="_blank">bukti bayar</a>
                        </td>
            			<td class="manage-column ss-list-width text-center">
                            <?php if($value->status == 0) : ?>
                                <span>Belum Diverfikasi</span>
                            <?php elseif($value->status == 2) : ?>
                                <span>Belum di verifikasi ( Upload pembayaran salah)</span>
                            <?php elseif($value->status == 3) : ?>
                                <span>Pembayaran terbaru sudah dikirim (menunggu verifikasi)</span>
                            <?php else : ?>
                                <span>Terverifikasi</span><br>
                                 <form enctype="multipart/form-data" method="post">
                                     <input type="submit" name="get_pdf" value="Lihat PDF">
                                 </form>
                                 <?php
                                 if(isset($_POST["get_pdf"]))
                                 {
                                    $waktu_mulai=$wpdb->get_var("SELECT meta_value from wp_postmeta where post_id='$value->post_id' and meta_key = 'waktu_mulai'");
                                    $waktu_selesai=$wpdb->get_var("SELECT meta_value from wp_postmeta where post_id='$value->post_id' and meta_key = 'waktu_selesai'");

                                    $tanggal_pdf = substr($value->tanggal_sm, 6);
                                    $bulan_pdf = substr($value->tanggal_sm, 4,-2);
                                    $tahun_pdf = substr($value->tanggal_sm, 0,4);
                                    $tanggal_seminar_pdf = $tanggal_pdf .'-'. $bulan_pdf .'-'. $tahun_pdf;
                                // echo $tanggal_seminar;
                                    $dataPdf['nama_pendaftar'] =  $value->display_name;
                                    $dataPdf['email'] = $value->user_email;
                                    $dataPdf['nama_seminar'] = $value->title;
                                    $dataPdf['date'] = $tanggal_seminar_pdf;
                                    $dataPdf['id_user'] = $id_user;
                                    $dataPdf['id_post'] = $value->post_id;
                                    $dataPdf['mulai'] = $waktu_mulai;
                                    $dataPdf['selesai'] = $waktu_selesai;
                                    // print_r($dataPdf);
                                    getPdf($dataPdf);
                                
                                        $file = content_url().'/uploads/pdf/'.$id_user.$value->post_id.'_verifikasi.pdf';
                                    
                                        echo "<script>
                                         window.open( 
                                        '$file', '_blank'); 
                                        </script>";
                                 }

                                 ?>
                            <?php endif; ?>       
                        </td>
                        <td class="manage-column ss-list-width text-center">
                           
                            <?php if($value->status == 1) : ?>
                            <?php elseif($value->status == 3) : ?>
                            <?php else : ?>
                                <?php $_SESSION['id_post'] = $value->post_id; ?>
                                 <a href="<?php echo home_url().'/editbukti/?post='.$value->post_id; ?>" class="btn btn-success" style="background: #0733f3;">Edit Bukti Bayar</a>
                            <?php endif; ?>
                        </td>
            		</tr>
            	<?php endforeach; ?>
            </tbody>
        </table>
    </form>
	</div>
	
</div>
<?php endif; ?>
<script type="text/javascript">
	  jQuery(document).ready(function($) {
            $('#table-data').DataTable({
                dom: 'Bfrtip',
                order: [[ 0, "asc" ]],
                columnDefs: [
                    { "orderable": false, "targets": 0 }
                ],
                // buttons: [
                //     'copy', 'csv', 'excel', 'pdf', 'print'
                // ],
                // buttons: [
                //     {
                //         extend: 'excel',
                //         title: 'Data eVoucher',
                //         exportOptions: {
                //             columns: [ 0, 1, 2, 3, 4, 5, 6, 7 ]
                //         }
                //     },
                //     {
                //         extend: 'pdf',
                //         title: 'Data eVoucher',
                //         exportOptions: {
                //             columns: [ 0, 1, 2, 3, 4, 5, 6, 7 ]
                //         }
                //     },
                //     {
                //         extend: 'print',
                //         title: 'Data eVoucher',
                //         exportOptions: {
                //             columns:[ 0, 1, 2, 3, 4, 5, 6, 7 ]
                //         }
                //     },
                // ],
            });
        });
</script>
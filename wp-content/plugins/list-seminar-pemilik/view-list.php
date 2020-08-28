<?php 
function View_ls_sm()
{ ?>
	<?php
		global $wpdb;
		global $current_user;
		$type       = $_GET['type'];
		$id_user = $_GET['id_user'];
		$id_post = $_GET['id_post'];

		$cek_session = $current_user->id;
	?>
<?php if($cek_session == $id_user) : ?>
	<?php
		$harga_seminar = $wpdb->get_var("SELECT meta_value from wp_postmeta where post_id='$id_post' and meta_key = 'harga'");
		$jumlah_pendaftar = $wpdb->get_var("SELECT count(id) FROM daftar_seminar where id_author = '$cek_session' and id_post ='$id_post'");
		$verified = $wpdb->get_var("SELECT count(id) FROM daftar_seminar where id_author = '$cek_session' and id_post ='$id_post' and status = 1");
		$not_verified = $wpdb->get_var("SELECT count(id) FROM daftar_seminar where id_author = '$cek_session' and id_post ='$id_post' and status != 1 ");


		$query_get_htg = $wpdb->get_row("SELECT * , count(a.id) as jumlah , b.meta_value as harga FROM daftar_seminar a LEFT JOIN wp_postmeta b on a.id_post = b.post_id where a.id_post = '$id_post' and b.meta_key='harga' and id_author = '$cek_session' and a.status = 1");
		// print_r($query_get_htg);
		// echo $query_get_htg->jumlah;

		$total_uang_masuk = $query_get_htg->jumlah * $query_get_htg->harga;
		if($total_uang_masuk != 0)
		{
			$htg_persen = $total_uang_masuk * (10/100);
			$uang_pemilik = $total_uang_masuk - $htg_persen;
			$uang_esinar = $total_uang_masuk - $uang_pemilik;
		}
		else
		{
			$uang_pemilik = 0;
			$uang_esinar = 0;
		}


	?>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="box-uangmasuk" style="background-color: #82ef82;">
					<span style="font-size: 20px;">Jumlah Uang Yang Masuk:</span>
					<p style="font-size: 30px;"><?php echo "Rp. ". number_format($total_uang_masuk,2,',','.'); ?></p>
				</div>
			</div>

			<div class="col-md-4">
				<div class="box-uangmasuk" style="background-color: #82ef82;">
					<span style="font-size: 20px;">Jumlah Uang Yang Diterima Pemilik:</span>
					<p style="font-size: 30px;"><?php echo "Rp. ". number_format($uang_pemilik,2,',','.'); ?></p>
				</div>
			</div>

			<div class="col-md-4">
				<div class="box-uangmasuk" style="background-color: #82ef82;">
					<span style="font-size: 20px;">Jumlah Uang Yang Diterima E-sinar:</span>
					<p style="font-size: 30px;"><?php echo "Rp. ". number_format($uang_esinar,2,',','.'); ?></p>
				</div>
			</div>
		</div>
		<div class="alert alert-warning alert-dismissible fade show" role="alert">
		  <strong>Jumlah Uang</strong> disini diambil dari banyaknya data yang sudah diverifikasi.
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		    <span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<div>
			<p>Harga Seminar : Rp. <?php echo number_format($harga_seminar,2,',','.'); ?> </p>
			<p>Jumlah Pendaftar : <?php echo $jumlah_pendaftar; ?></p>
			<p>Pendaftar Terverifikasi : <?php echo $verified; ?> </p>
			<p>Pendaftar Belum Terverifikasi : <?php echo $not_verified; ?></p>
		</div>
	</div>

	<div class="wrap">
		<div class="title-border">
	        <h1 class="wp-heading-inline">List Pendaftar :</h1>
	    </div>
	    <?php
	    	$list_pendaftar = $wpdb->get_results("SELECT * FROM daftar_seminar a LEFT JOIN wp_users b on a.id_user = b.ID  where a.id_post='$id_post' and a.id_author='$cek_session'");

	    ?>

	     <form method="post" action="<?php echo $_SERVER['REQUEST_URI']; ?>" style="display: inline-block;">
	     	<table id="table-data" class='wp-list-table widefat fixed striped' style="width: 100%;">
	            <thead>
	                <tr>
	                    <th class="manage-column ss-list-width text-center text-bold" style="width: 5%;">No</th>
	                    <th class="manage-column ss-list-width text-center text-bold">Nama Pendaftar</th>
	                    <th class="manage-column ss-list-width text-center text-bold">Email Pendaftar</th>
	                     <th class="manage-column ss-list-width text-center text-bold">Tanggal Daftar</th>
	                    <th class="manage-column ss-list-width text-center text-bold">Status</th>
	                </tr>
	            </thead>
	            <tbody>
	            	<?php $no = 0; foreach ($list_pendaftar as $key => $value): $no++; ?>
		            	<tr>
		            		<td class="manage-column ss-list-width text-center"><?php echo $no; ?></td>
		            		<td class="manage-column ss-list-width text-center"><?php echo $value->display_name; ?></td>
		            		<td class="manage-column ss-list-width text-center"><?php echo $value->user_email; ?></td>
		            		<td class="manage-column ss-list-width text-center"><?php echo $value->created_at; ?></td>
		            		<td class="manage-column ss-list-width text-center">
		            			<?php
		            				if($value->status == 1)
		            				{
		            					echo "Terverifikasi";
		            				}
		            				elseif($value->status == 2)
		            				{
		            					echo "kesalahan upload";
		            				}
		            				else
		            				{
		            					echo "belum diverifikasi";
		            				}
		            			?>
		            		</td>
		            	</tr>
	            	<?php endforeach; ?>
	            </tbody>
	        </table>
	     </form>
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
                buttons: [
                    {
                        extend: 'excel',
                        title: 'Data Pendaftaran Seminar',
                        messageTop: 'This print was produced using the Print button for DataTables',
                        exportOptions: {
                            columns: [ 0, 1, 2, 3 , 4]
                        }
                    },
                    // {
                    //     extend: 'pdf',
                    //     title: 'Data Pendaftaran Seminar',
                    //     exportOptions: {
                    //         columns: [ 0, 1, 2, 3]
                    //     }
                    // },
                    {
                        extend: 'print',
                        title: 'Data Pendaftaran Seminar',
                        messageTop: 'Uang Masuk : <?php echo "Rp. ". number_format($total_uang_masuk,2,',','.'); ?>',
                        exportOptions: {
                            columns:[ 0, 1, 2, 3 , 4]
                        }
                    },
                ],
            });
        });
	</script>
<?php } ?>
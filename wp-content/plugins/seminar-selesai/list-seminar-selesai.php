<?php 
function Data_seminar_selesai()
{ ?>
	<?php
      global $wpdb;
      global $current_user;

      // echo $current_user->id;
      // $query_seminar = $wpdb->get_results("SELECT * FROM daftar_seminar left join ");
      $data_seminar = $wpdb->get_results("SELECT * , a.id as id_selesaii , b.ID as id_posts FROM seminar_selesai a LEFT JOIN wp_posts b on a.id_post = b.ID LEFT JOIN wp_users c on a.id_author = c.ID LEFT JOIN rekening_pemilik d on a.id_author = d.id_user LEFT JOIN upload_bukti_selesai e on a.id = e.id_selesai");
    ?>
     <div class="wrap">
     	<div class="title-border">
	        <h1 class="wp-heading-inline">Seminar List Selesai : </h1>
	    </div>
	     <form method="post" action="<?php echo $_SERVER['REQUEST_URI']; ?>" style="display: inline-block;">
	     	<table id="table-data" class='wp-list-table widefat fixed striped' style="width: 100%;">
	            <thead>
	                <tr>
	                    <th class="manage-column ss-list-width text-center text-bold" style="width: 5%;">No</th>
	                    <th class="manage-column ss-list-width text-center text-bold">Nama Seminar</th>
	                    <th class="manage-column ss-list-width text-center text-bold">Pemilik</th>
	                    <th class="manage-column ss-list-width text-center text-bold">Harga Seminar</th>
	                    <th class="manage-column ss-list-width text-center text-bold">Terverifikasi</th>
                        <th class="manage-column ss-list-width text-center text-bold">Total Uang</th>
	                    <th class="manage-column ss-list-width text-center text-bold">Uang Pemilik</th>
	                    <th class="manage-column ss-list-width text-center text-bold">Uang E-sinar</th>
	                    <th class="manage-column ss-list-width text-center text-bold">Bank</th>
	                    <th class="manage-column ss-list-width text-center text-bold">Rekening</th>
	                    <th class="manage-column ss-list-width text-center text-bold">Action</th>
	                    <th class="manage-column ss-list-width text-center text-bold" style="display: none;">Bukti TF</th>
	                </tr>
	            </thead>
	            <tbody>
	            	<?php $no = 0; foreach ($data_seminar as $key => $value): $no++; ?>
	            	<tr>
	            		<td class="manage-column ss-list-width text-center"><?php echo $no; ?></td>
	            		<td class="manage-column ss-list-width text-center"><?php echo $value->post_title; ?></td>
	            		<td class="manage-column ss-list-width text-center"><?php echo $value->display_name; ?></td>
	            		<td class="manage-column ss-list-width text-center"><?php echo $value->harga_sm; ?></td>
	            		<td class="manage-column ss-list-width text-center"><?php echo $value->terverifikasi; ?></td>
	            		<td class="manage-column ss-list-width text-center">
	            			<?php 
	            				$harga = $value->harga_sm;
	            				$verified = $value->terverifikasi;
	            				$total = $harga * $verified;

	            				echo "Rp ".number_format($total, 0, ".", ".");
	            			?>
	            		</td>
	            		<td class="manage-column ss-list-width text-center">
	            			<?php
	            				$htg_uang_pemilik = $total * (10 / 100) ;
	            				$uang_pemilik = $total - $htg_uang_pemilik;
	            				echo "Rp ".number_format($uang_pemilik, 0, ".", ".");
	            			?>
	            		</td>
	            		<td class="manage-column ss-list-width text-center">
	            			<?php
	            				$uang_kita = $total - $uang_pemilik;
	            				echo "Rp ".number_format($uang_kita, 0, ".", ".");
	            			?>
	            		</td>
	            		<td class="manage-column ss-list-width text-center"><?php echo $value->bank; ?></td>
	            		<td class="manage-column ss-list-width text-center"><?php echo $value->rekening ?></td>
	            		<td class="manage-column ss-list-width text-center">
	            		<?php if($value->rekening != NULL): ?>
	            			<?php if($value->status_tf == 1): ?>
	            			<a href="<?php echo content_url().'/uploads/buktitf/'.$value->file_foto; ?>" target="_blank">
	            				<?php echo "transfer selesai"; ?>
	            			</a>
	            			<?php else: ?>
	            				<a href="<?php echo admin_url('admin.php?page=upload_bukti&type=upload&id_selesai=' . $value->id_selesaii.'&id_posts='.$value->id_posts); ?>" class="button button-warning">Upload Bukti</a>		
	            			<?php endif; ?>
	            		<?php else: ?>
	            			<a href="<?php echo admin_url('admin.php?page=alert_rekening&type=alert&id_selesai=' . $value->id_selesaii.'&id_author='.$value->id_author); ?>" class="button button-warning">alert rekening</a>
	            		<?php endif; ?>
	            		</td>
	            		<td class="manage-column ss-list-width text-center" style="display: none;">
	            			<?php if($value->status_tf == 1): ?>
	            				<?php echo content_url().'/uploads/buktitf/'.$value->file_foto; ?>
	            			<?php else: ?>
	            				<?php echo "belum upload"; ?>
	            			<?php endif; ?>
	            		</td>
	            	</tr>
	            	<?php endforeach; ?>
	            </tbody>
	     </form>
     </div>
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
                        title: 'Data Seminar Selesai',
                        exportOptions: {
                            columns: [ 0, 1, 2, 3, 4, 5 , 6 ,7 ,8,9,11]
                        }
                    },
                    // {
                    //     extend: 'pdf',
                    //     title: 'Data Seminar Selesai',
                    //     exportOptions: {
                    //         columns: [ 0, 1, 2, 3, 4, 5 ,6 ,7,8,9]
                    //     }
                    // },
                    {
                        extend: 'print',
                        title: 'Data Seminar Selesai',
                        exportOptions: {
                            columns:[ 0, 1, 2, 3, 4, 5, 6,7,8,9,11]
                        }
                    },
                ],
            });
        });
	</script>
<?php } ?>
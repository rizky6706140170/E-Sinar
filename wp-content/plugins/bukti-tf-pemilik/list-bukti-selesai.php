<?php 
function Data_bukti_tf()
{ ?>
	<?php
      global $wpdb;
      global $current_user;

      // echo $current_user->id;
      // $query_seminar = $wpdb->get_results("SELECT * FROM daftar_seminar left join ");
      $data_seminar = $wpdb->get_results("SELECT * , a.id as id_selesaii , b.ID as id_posts FROM seminar_selesai a LEFT JOIN wp_posts b on a.id_post = b.ID  LEFT JOIN upload_bukti_selesai e on a.id = e.id_selesai where a.id_author = '$current_user->id'");
    ?>
     <div class="wrap">
     	<div class="title-border">
	        <h1 class="wp-heading-inline">Bukti Transfer Seminar : </h1>
	    </div>
	     <form method="post" action="<?php echo $_SERVER['REQUEST_URI']; ?>" style="display: inline-block;">
	     	<table id="table-data" class='wp-list-table widefat fixed striped' style="width: 100%;">
	     		<thead>
	     		    <tr>
	                    <th class="manage-column ss-list-width text-center text-bold" style="width: 5%;">No</th>
	                    <th class="manage-column ss-list-width text-center text-bold">Nama Seminar</th>
	                    <th class="manage-column ss-list-width text-center text-bold">Harga Seminar</th>
	                    <th class="manage-column ss-list-width text-center text-bold">Terverifikasi</th>
                        <th class="manage-column ss-list-width text-center text-bold">Total Uang</th>
	                    <th class="manage-column ss-list-width text-center text-bold">Uang Pemilik</th>
	                    <th class="manage-column ss-list-width text-center text-bold">Uang E-sinar</th>
	                    <th class="manage-column ss-list-width text-center text-bold">Bukti TF</th>
	                    <th class="manage-column ss-list-width text-center text-bold" style="display: none;">Bukti TF</th>
	                </tr>
	            </thead>
	            <tbody>
	            	<?php $no = 0; foreach ($data_seminar as $key => $value): $no++; ?>
	            	<tr>
	            		<td class="manage-column ss-list-width text-center"><?php echo $no; ?></td>
	            		<td class="manage-column ss-list-width text-center"><?php echo $value->post_title; ?></td>
	            		<td class="manage-column ss-list-width text-center"><?php echo "Rp ". number_format($value->harga_sm,0, ".", "."); ?></td>
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
	            		<td class="manage-column ss-list-width text-center">
	            			<a href="<?php echo content_url().'/uploads/buktitf/'.$value->file_foto; ?>" target="_blank">
	            				<?php echo "Bukti"; ?>
	            			</a>
	            		</td>
	            		<td class="manage-column ss-list-width text-center" style="display: none;">
	            			<?php echo content_url().'/uploads/buktitf/'.$value->file_foto; ?>
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
                        title: 'Data Bukti Transfer Seminar',
                        exportOptions: {
                            columns: [ 0, 1, 2, 3, 4, 5 , 6 ,8],
                             stripHtml: false
                        }
                    },
                    // {
                    //     extend: 'pdf',
                    //     title: 'Data Pendaftaran Seminar',
                    //     exportOptions: {
                    //         columns: [ 0, 1, 2, 3, 4, 5 ,6 ,7]
                    //     }
                    // },
                    {
                        extend: 'print',
                        title: 'Data Bukti Transfer Seminar',
                        exportOptions: {
                            columns:[ 0, 1, 2, 3, 4, 5, 6,8]
                        }
                    },
                ],
            });
            // $('.dt-buttons').css('display','none');
        });
	</script>

<?php } ?>
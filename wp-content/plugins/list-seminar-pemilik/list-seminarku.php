<?php 
function Data_seminar_list()
{ ?>
 <?php
      global $wpdb;
      global $current_user;

      // echo $current_user->id;
      // $query_seminar = $wpdb->get_results("SELECT * FROM daftar_seminar left join ");
      $data_seminar = $wpdb->get_results("SELECT * , b.meta_value as harga FROM wp_posts a LEFT JOIN wp_postmeta b on a.ID = b.post_id where a.post_author = '$current_user->id' and a.post_type='post' and a.post_status = 'publish' and b.meta_key='harga'");
    ?>
    <div class="wrap">
	    <div class="title-border">
	        <h1 class="wp-heading-inline">Seminar List</h1>
	    </div></br></br>
	    <a href="<?php echo admin_url('post-new.php');?>">
	    	<button class="button button-primary">Add New Post</button>
	    </a>
	    <br><br><br>

	     <form method="post" action="<?php echo $_SERVER['REQUEST_URI']; ?>" style="display: inline-block;">
	     	<table id="table-data" class='wp-list-table widefat fixed striped' style="width: 100%;">
	            <thead>
	                <tr>
	                    <th class="manage-column ss-list-width text-center text-bold" style="width: 5%;">No</th>
	                    <th class="manage-column ss-list-width text-center text-bold">Nama Post</th>
	                    <th class="manage-column ss-list-width text-center text-bold">Jumlah Pendaftar</th>
	                    <th class="manage-column ss-list-width text-center text-bold">Terverifikasi</th>
	                    <th class="manage-column ss-list-width text-center text-bold">Harga Seminar</th>
	                    <th class="manage-column ss-list-width text-center text-bold">Action</th>
	                    <th class="manage-column ss-list-width text-center text-bold">Bukti Transfer</th>
	                </tr>
	            </thead>
	            <tbody>
	            	<?php $no = 0; foreach ($data_seminar as $key => $value): $no++; ?>
	            	<tr>
	            		<td class="manage-column ss-list-width text-center"><?php echo $no; ?></td>
            			<td class="manage-column ss-list-width text-center"><?php echo $value->post_title; ?> <br><a href="<?php echo admin_url('post.php?post='.$value->ID.'&action=edit');?>">edit</a> | <a href="">delete</a> | <a href="<?php echo home_url().'/'.$value->post_name?>" target="_blank">view</a></td>
            			<td class="manage-column ss-list-width text-center"></td>
            			<td class="manage-column ss-list-width text-center"></td>
            			<td class="manage-column ss-list-width text-center">Rp <?php echo $value->harga; ?></td>
            			<td class="manage-column ss-list-width text-center">
            				<a href="" class="button button-danger">View Detail</a>
            				<a href="" class="button button-warning">selesai</a>
            			</td>
            			<td class="manage-column ss-list-width text-center"></td>
	            	</tr>
	            	<?php endforeach; ?>
	            </tbody>
	        </table>
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
                        title: 'Data Pendaftaran Seminar',
                        exportOptions: {
                            columns: [ 0, 1, 2, 3, 4, 5 , 6 ,7 ,8,9]
                        }
                    },
                    {
                        extend: 'pdf',
                        title: 'Data Pendaftaran Seminar',
                        exportOptions: {
                            columns: [ 0, 1, 2, 3, 4, 5 ,6 ,7,8,9]
                        }
                    },
                    {
                        extend: 'print',
                        title: 'Data Pendaftaran Seminar',
                        exportOptions: {
                            columns:[ 0, 1, 2, 3, 4, 5, 6,7,8,9]
                        }
                    },
                ],
            });
        });
	</script>

<?php } ?>
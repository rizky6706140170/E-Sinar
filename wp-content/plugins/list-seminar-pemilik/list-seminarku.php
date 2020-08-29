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
                        <th class="manage-column ss-list-width text-center text-bold">Tanggal Seminar</th>
	                    <th class="manage-column ss-list-width text-center text-bold">Action</th>
	                    <th class="manage-column ss-list-width text-center text-bold">status seminar</th>
                        <th class="manage-column ss-list-width text-center text-bold">transfer</th>
	                </tr>
	            </thead>
	            <tbody>
	            	<?php $no = 0; foreach ($data_seminar as $key => $value): $no++; ?>
	            	<tr>
	            		<td class="manage-column ss-list-width text-center"><?php echo $no; ?></td>
            			<td class="manage-column ss-list-width text-center"><?php echo $value->post_title; ?> <br>
                            <?php 
                                  $cek_seminar_selesai = $wpdb->get_results("SELECT * FROM seminar_selesai where id_post = '$value->ID'");
                            ?>
                            <?php if(empty($cek_seminar_selesai)): ?>
                            <a href="<?php echo admin_url('post.php?post='.$value->ID.'&action=edit');?>">edit</a>
                            <?php else: ?>

                            <?php endif; ?>
                            <?php
                                $cek_daftar = $wpdb->query("SELECT count(id) FROM daftar_seminar where id_post='$value->ID' and id_author='$current_user->id'");
                            ?>
                            <?php if ($cek_daftar > 0) : ?>
                            
                            <?php else: ?>
                             |
                            <a href="<?php echo admin_url('admin.php?page=delete_post&type=delete&id_user=' .$current_user->id.'&id_post='.$value->ID); ?>">delete</a> |
                            <?php endif; ?>
                            <a href="<?php echo home_url().'/'.$value->post_name?>" target="_blank">view</a></td>
            			<td class="manage-column ss-list-width text-center">
                            <?php
                                $jml_dftr = $wpdb->get_var("SELECT count(id) FROM daftar_seminar where id_post = '$value->ID' and id_author = '$current_user->id'");
                                echo $jml_dftr;
                            ?>         
                        </td>
            			<td class="manage-column ss-list-width text-center">
                            <?php
                                $verified = $wpdb->get_var("SELECT count(id) FROM daftar_seminar where id_post = '$value->ID' and id_author = '$current_user->id' and status = 1");
                                echo $verified;
                            ?>  
                        </td>
            			<td class="manage-column ss-list-width text-center">Rp. <?php echo number_format($value->harga,2,',','.'); ?></td>
                        <td class="manage-column ss-list-width text-center">
                            <?php   
                                $tgl_sm=$wpdb->get_var("SELECT meta_value from wp_postmeta where post_id='$value->ID' and meta_key = 'date'");
                                $tanggal = substr($tgl_sm, 6);
                                $bulan = substr($tgl_sm, 4,-2);
                                $tahun = substr($tgl_sm, 0,4);
                                $tanggal_seminar = $tanggal .'-'. $bulan .'-'. $tahun;
                                echo $tanggal_seminar;
                            ?>
                        </td>
            			<td class="manage-column ss-list-width text-center">
            				<a href="<?php echo admin_url('admin.php?page=view_ls_sm&type=view&id_user=' . $current_user->id.'&id_post='.$value->ID); ?>" class="button button-danger">View Detail</a> <br>
                            <?php
                                  $d=strtotime($tanggal_seminar);
                                  $mydate=strtotime('now');
                            ?>
                            <?php if($d >= $mydate): ?>
                               
                            <?php else: ?>
                                <?php
                                     $cek_status=$wpdb->get_results("SELECT * FROM status_seminar where id_post='$value->ID' and status_sm = 1");
                                ?>
                                <?php if(!empty($cek_status)) : ?>

                                <?php else: ?>
            				        <a href="<?php echo admin_url('admin.php?page=done_sm&type=done&id_user=' . $current_user->id.'&id_post='.$value->ID); ?>" class="button button-warning">selesai</a>
                                <?php endif; ?>
                            <?php endif; ?>
            			</td>
            			<td class="manage-column ss-list-width text-center">
                            <?php
                                $cek_status=$wpdb->get_results("SELECT * FROM status_seminar where id_post='$value->ID' and status_sm = 1");
                                if(!empty($cek_status))
                                {
                                    echo "selesai";
                                }
                                else
                                {
                                    echo "belum selesai";
                                }
                            ?>         
                        </td>
                        <td class="manage-column ss-list-width text-center">
                            <?php
                                $cek_tf=$wpdb->get_var("SELECT status_tf FROM seminar_selesai where id_post='$value->ID' and id_author = '$current_user->id'");
                                if($cek_tf == 1)
                                {
                                    echo "sudah di transfer";
                                }
                                else
                                {
                                    echo "belum di transfer";
                                }

                            ?>
                        </td>
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
                        title: 'List Seminar pemilik',
                        exportOptions: {
                            columns: [ 0, 1, 2, 3, 4, 5 ,7 ,8]
                        }
                    },
                    // {
                    //     extend: 'pdf',
                    //     title: 'List Seminar pemilik',
                    //     exportOptions: {
                    //         columns: [ 0, 1, 2, 3, 4, 5 ,6 ,7,8,9]
                    //     }
                    // },
                    {
                        extend: 'print',
                        title: 'List Seminar pemilik',
                        exportOptions: {
                            columns:[ 0, 1, 2, 3, 4, 5, 7,8]
                        }
                    },
                ],
            });

            // $('.dt-buttons').css('display','none');
        });



	</script>

<?php } ?>
<?php
function Seminar_list() {
?>

<div class="wrap">
    <div class="title-border">
        <h1 class="wp-heading-inline">Report Pendaftar Seminar</h1>
    </div></br></br>

    <?php
      global $wpdb;
      // $query_seminar = $wpdb->get_results("SELECT * FROM daftar_seminar left join ");
      $query_seminar = $wpdb->get_results("SELECT * , a.id_post as post_id , d.post_title as title FROM daftar_seminar a LEFT JOIN file_verifikasi b on a.id = b.id_daftar LEFT JOIN wp_users c ON a.id_user = c.ID LEFT JOIN wp_posts d on a.id_post = d.ID where a.status != 1");
    ?>
    <form method="post" action="<?php echo $_SERVER['REQUEST_URI']; ?>" style="display: inline-block;">
        <table id="table-data" class='wp-list-table widefat fixed striped' style="width: 100%;">
            <thead>
                <tr>
                    <th class="manage-column ss-list-width text-center text-bold" style="width: 5%;">No</th>
                    <th class="manage-column ss-list-width text-center text-bold">Nama Pendaftar</th>
                    <th class="manage-column ss-list-width text-center text-bold">Nama Seminar</th>
                    <th class="manage-column ss-list-width text-center text-bold">Harga Seminar</th>
                    <th class="manage-column ss-list-width text-center text-bold">Tanggal Seminar</th>
                    <th class="manage-column ss-list-width text-center text-bold">Foto Pembayaran</th>
                    <th class="manage-column ss-list-width text-center text-bold" style="display: none;">Foto Pembayaran link</th>
                    <th class="manage-column ss-list-width text-center text-bold">Status</th>
                    <th class="manage-column ss-list-width text-center text-bold">Created At</th>
                    <th class="manage-column ss-list-width text-center text-bold">Update At</th>
                    <th class="manage-column ss-list-width text-center text-bold" style="width: 8%;">Action</th>
                </tr>
            </thead>
            <tbody>
            	<?php $no = 0; foreach ($query_seminar as $key => $value): $no++; ?>
            		<tr>
                        <td class="manage-column ss-list-width text-center"><?php echo $no; ?></td>
            			<td class="manage-column ss-list-width text-center"><?php echo $value->display_name; ?></td>
            			<td class="manage-column ss-list-width text-center"><?php echo $value->title; ?></td>
                        <td class="manage-column ss-list-width text-center">
                            <?php  $harga_sm=$wpdb->get_var("SELECT meta_value from wp_postmeta where post_id='$value->post_id' and meta_key = 'harga'");
                            echo 'Rp '.number_format($harga_sm,2,',','.');
                             ?>
                        </td>
                        <td class="manage-column ss-list-width text-center"><?php echo $value->tgl_seminar; ?></td>
            			<td class="manage-column ss-list-width text-center"><a href="<?php echo content_url().'/uploads/bukti/'.$value->file_foto; ?>" target="_blank"><?php echo $value->file_foto; ?></a></td>
                        <td class="manage-column ss-list-width text-center" style="display: none;">
                            <?php echo content_url().'/uploads/bukti/'.$value->file_foto; ?>
                        </td>
            			<td class="manage-column ss-list-width text-center">
                            <?php if($value->status == 0){
                                echo "Belum di verifikasi";
                            }
                            elseif($value->status ==2)
                            {
                                echo "Upload bukti salah";
                            }
                            elseif ($value->status==3) {
                                echo "bukti baru sudah dikirim";
                            }
                            else{
                                echo "Terverifikasi";
                            }  
                            ?>       
                        </td>
                        <td class="manage-column ss-list-width text-center"><?php echo $value->created_at; ?></td>
                         <td class="manage-column ss-list-width text-center"><?php echo $value->update_at; ?></td>
                        <td class="manage-column ss-list-width text-center">
                            <?php if($value->status == 0 || $value->status == 3): ?>
                                <a href="<?php echo admin_url('admin.php?page=verifikasi_pemby&type=verifikasi&id_user=' . $value->id_user.'&id_post='.$value->id_post); ?>" class="button button-primary">Verifikasi</a> <br><br>
                                 <a href="<?php echo admin_url('admin.php?page=salah_pemby&type=salah&id_user=' . $value->id_user.'&id_post='.$value->id_post); ?>" class="button button-primary">Salah Bukti</a>
                            <?php elseif($value->status == 1): ?>
                               <a href="<?php echo content_url().'/uploads/pdf/'.$value->id_user.$value->id_post.'_verifikasi.pdf'; ?>" target="_blank">Lihat PDF</a>
                            <?php elseif($value->status == 2): ?>

                            <?php endif; ?>
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
                        title: 'Data Pendaftaran Seminar',
                        exportOptions: {
                            columns: [ 0, 1, 2, 3, 4 , 6 ,7 ,8,9],
                            stripHtml: false
                        }
                    },
                    // {
                    //     extend: 'pdf',
                    //     title: 'Data Pendaftaran Seminar',
                    //     exportOptions: {
                    //         columns: [ 0, 1, 2, 3, 4, 5 ,6 ,7,8,9]
                    //     }
                    // },
                    {
                        extend: 'print',
                        title: 'Data Pendaftaran Seminar',
                        exportOptions: {
                            columns:[ 0, 1, 2, 3, 4, 6,7,8,9],
                            stripHtml: false
                        }
                    },
                ],
            });
        });
</script>
<?php } ?>
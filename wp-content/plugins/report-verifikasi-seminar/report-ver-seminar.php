<?php
function Verifikasi_list() {
?>

<div class="wrap">
    <div class="title-border">
        <h1 class="wp-heading-inline">Pendaftar List Verifikasi :</h1>
    </div></br></br>

    <?php
      global $wpdb;
      // $query_seminar = $wpdb->get_results("SELECT * FROM daftar_seminar left join ");
      $query_seminar = $wpdb->get_results("SELECT * , a.id_post as post_id , d.file_pdf as pdf FROM daftar_seminar a LEFT JOIN file_verifikasi b on a.id = b.id_daftar LEFT JOIN wp_users c ON a.id_user = c.ID LEFT JOIN pdf_verifikasi_daftar d on b.id = d.id_verifikasi where a.status = 1");
    ?>
    <form method="post" action="<?php echo $_SERVER['REQUEST_URI']; ?>" style="display: inline-block;">
        <table id="table-data" class='wp-list-table widefat fixed striped' style="width: 100%;">
            <thead>
                <tr>
                    <th class="manage-column ss-list-width text-center text-bold" style="width: 5%;">No</th>
                    <th class="manage-column ss-list-width text-center text-bold">Nama Pendaftar</th>
                    <th class="manage-column ss-list-width text-center text-bold">Nama Seminar</th>
                    <th class="manage-column ss-list-width text-center text-bold">Harga Seminar</th>
                    <th class="manage-column ss-list-width text-center text-bold">Status</th>
                    <th class="manage-column ss-list-width text-center text-bold">Created At</th>
                    <th class="manage-column ss-list-width text-center text-bold">Verification At</th>
                    <th class="manage-column ss-list-width text-center text-bold">File PDF</th>
                </tr>
            </thead>
            <tbody>
            	<?php $no = 0; foreach ($query_seminar as $key => $value): $no++; ?>
            		<tr>
                        <td class="manage-column ss-list-width text-center"><?php echo $no; ?></td>
            			<td class="manage-column ss-list-width text-center"><?php echo $value->display_name; ?></td>
            			<td class="manage-column ss-list-width text-center"><?php echo $value->nama_seminar; ?></td>
                        <td class="manage-column ss-list-width text-center">
                            <?php  $harga_sm=$wpdb->get_var("SELECT meta_value from wp_postmeta where post_id='$value->post_id' and meta_key = 'harga'");
                            echo 'Rp '.number_format($harga_sm,2,',','.');
                             ?>
                        </td>
            			<td class="manage-column ss-list-width text-center">Terverifikasi     
                        </td>
                        <td class="manage-column ss-list-width text-center"><?php echo $value->created_at; ?></td>
                        <td class="manage-column ss-list-width text-center"><?php echo $value->update_at; ?></td>
                        <td class="manage-column ss-list-width text-center">
                
                               <a href="<?php echo content_url().'/uploads/pdf/'.$value->pdf.''; ?>" target="_blank">Lihat PDF</a>
                           
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
                            columns: [ 0, 1, 2, 3, 4, 5 , 6]
                        }
                    },
                    {
                        extend: 'pdf',
                        title: 'Data Pendaftaran Seminar',
                        exportOptions: {
                            columns: [ 0, 1, 2, 3, 4, 5 ,6]
                        }
                    },
                    {
                        extend: 'print',
                        title: 'Data Pendaftaran Seminar',
                        exportOptions: {
                            columns:[ 0, 1, 2, 3, 4, 5, 6]
                        }
                    },
                ],
            });
        });
</script>
<?php } ?>
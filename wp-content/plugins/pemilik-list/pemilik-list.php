<?php
function Pemilik_list() {
?>

<div class="wrap">
    <div class="title-border">
        <h1 class="wp-heading-inline">Pemilik List</h1>
    </div></br></br>

    <?php
      global $wpdb;
      // $query_user = $wpdb->get_results("SELECT *,a.user_login as username,b.status as statuses FROM wp_users a left join user_esinar b on a.ID = b.user_id");
      $query_user = $wpdb->get_results("SELECT *, c.file_foto as foto FROM wp_users a LEFT JOIN rekening_pemilik b on a.ID = b.id_user LEFT JOIN profile c on a.ID = c.id_user where a.role_user ='author' order by a.user_registered desc");
    ?>
    <form method="post" action="<?php echo $_SERVER['REQUEST_URI']; ?>" style="display: inline-block;">
        <table id="table-data" class='wp-list-table widefat fixed striped' style="width: 100%;">
            <thead>
                <tr>
                    <th class="manage-column ss-list-width text-center text-bold" style="width: 5%;">No</th>
                    <th class="manage-column ss-list-width text-center text-bold" style="">Profile</th>
                    <th class="manage-column ss-list-width text-center text-bold">User Name</th>
                    <th class="manage-column ss-list-width text-center text-bold">Name</th>
                    <th class="manage-column ss-list-width text-center text-bold">Email</th>
                    <th class="manage-column ss-list-width text-center text-bold">Bank</th>
                    <th class="manage-column ss-list-width text-center text-bold">No Rekening</th>
                    <th class="manage-column ss-list-width text-center text-bold">Registered</th>
                    <th class="manage-column ss-list-width text-center text-bold">Status Akun</th>
                    <th class="manage-column ss-list-width text-center text-bold" style="width: 8%;">Action</th>
                </tr>
            </thead>
            <tbody>
            	<?php $no = 0; foreach ($query_user as $key => $value): $no++; ?>
            		<tr>
            			<td class="manage-column ss-list-width text-center"><?php echo $no; ?></td>
                        <td class="manage-column ss-list-width text-center">
                           <?php if(empty($value->foto)): ?>
                                 <a href="<?php echo content_url().'/uploads/profile/null/profil.png' ?>" target="_blank">
                                    <img src="<?php echo content_url().'/uploads/profile/null/profil.png' ?>" style="width: 40px;height: 40px;">
                                </a>
                            <?php else: ?>
                                 <a href="<?php echo content_url().'/uploads/profile/'.$value->foto; ?>" target="_blank">
                                    <img src="<?php echo content_url().'/uploads/profile/'.$value->foto; ?>" style="width: 40px;height: 40px;">
                                </a>
                            <?php endif; ?>         
                        </td>
            			<td class="manage-column ss-list-width text-center"><?php echo $value->user_login; ?></td>
            			<td class="manage-column ss-list-width text-center"><?php echo $value->display_name; ?></td>
            			<td class="manage-column ss-list-width text-center"><?php echo $value->user_email; ?></td>
                        <td class="manage-column ss-list-width text-center"><?php echo $value->bank; ?></td>
                        <td class="manage-column ss-list-width text-center"><?php echo $value->rekening; ?></td>
            			<td class="manage-column ss-list-width text-center"><?php echo $value->user_registered; ?></td>
            			<td class="manage-column ss-list-width text-center"><?php echo $value->role_user; ?></td>
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
                        title: 'Data User E-Sinar',
                        exportOptions: {
                            columns: [ 0, 1, 2, 3, 4 ,5,6,7]
                        }
                    },
                    {
                        extend: 'pdf',
                        title: 'Data User E-Sinar',
                        exportOptions: {
                            columns: [ 0, 1, 2, 3, 4]
                        }
                    },
                    {
                        extend: 'print',
                        title: 'Data User E-Sinar',
                        exportOptions: {
                            columns: [ 0, 1, 2, 3, 4 ]
                        }
                    },
                ],
            });
        });
</script>
<?php } ?>
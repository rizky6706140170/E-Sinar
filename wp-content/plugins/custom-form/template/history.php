<input type="hidden" name="idForm" id="idForm" value="22">
<?php
global $wpdb;
$id_user      = $_GET['id_user'];
$query_seminar_h = $wpdb->get_results("SELECT * FROM seminar where id_user = '$id_user'");
?>
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
                    <th class="manage-column ss-list-width text-center text-bold">Handphone</th>
                    <th class="manage-column ss-list-width text-center text-bold">Nama Seminar</th>
                    <th class="manage-column ss-list-width text-center text-bold">Foto Pembayaran</th>
                    <th class="manage-column ss-list-width text-center text-bold">Status</th>
                    <th class="manage-column ss-list-width text-center text-bold">Action</th>
                </tr>
            </thead>
            <tbody>
            	<?php $no = 0; foreach ($query_seminar_h as $key => $value): $no++; ?>
            		<tr>
                        <td class="manage-column ss-list-width text-center"><?php echo $no; ?></td>
            			<td class="manage-column ss-list-width text-center"><?php echo $value->nama_pendaftar; ?></td>
            			<td class="manage-column ss-list-width text-center"><?php echo $value->handphone; ?></td>
            			<td class="manage-column ss-list-width text-center"><?php echo $value->nama_seminar; ?></td>
            			<td class="manage-column ss-list-width text-center"><a href="<?php echo content_url().'/uploads/bukti/'.$value->file_foto; ?>" target="_blank">bukti bayar</a></td>
            			<td class="manage-column ss-list-width text-center">
                            <?php if($value->status == 0) : ?>
                                <span>Belum Diverfikasi</span>
                            
                            <?php else : ?>
                                <span>Terverifikasi</span><br>
                                 <a href="<?php echo content_url().'/uploads/pdf/'.$value->id_user.$value->id_post.'_verifikasi.pdf'; ?>" target="_blank">Lihat PDF</a>
                             
                            <?php endif; ?>       
                        </td>
                        <td class="manage-column ss-list-width text-center">
                            <?php if($value->status == 1) : ?>
                            
                            <?php else : ?>
                                 <a href="<?php echo home_url().'/editbukti?'.'id_user='.$value->id_user.'&id_post='.$value->id_post;?>" class="btn btn-success" style="background: #0733f3;">Edit Bukti Bayar</a>
                            <?php endif; ?>
                        </td>
            		</tr>
            	<?php endforeach; ?>
            </tbody>
        </table>
    </form>
	</div>
	
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
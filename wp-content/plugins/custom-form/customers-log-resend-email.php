<?php

function customers_log_resend_email() {
    global $wpdb;

    if (isset($_GET['type'])) {
        $type       = $_GET['type'];
        $store_code = $_GET['store_code'];
        $prize      = $_GET['prize'];

        $customer   = $wpdb->get_row("SELECT wp_register.*, wp_register.time_created AS created_date FROM `wp_register` WHERE deleted_at IS NULL AND unique_code = '$store_code'");

        // echo $customer->new_email;
        // die();
        
        if($type == 'resend_email' || $type == 'resend_new_email'){
            $dataMail            = array();
            $dataBonus           = array();
            $dataMail['name']    = $customer->first_name." ".$customer->last_name;
            $dataMail['email']   = $customer->email;

            if($prize == 1){
                $unique_code_table = 'wp_unique_code';
            }
            else if($prize == 2){
                $unique_code_table = 'wp_unique_code_2';
            }
            else if($prize == 3){
                $unique_code_table = 'wp_unique_code_3';
                
                // get prize code
                $prepareBonus = "SELECT * FROM wp_unique_code_10 WHERE kode_toko = '$customer->unique_code'";
                $bonus = $wpdb->get_results($prepareBonus);
                $rowBonus = $wpdb->get_row($prepareBonus);
                            
                $dataMail['bonus'] = array();
                if (!empty($bonus)) {
                    $counter = 1;
                    $monthCode = array();
                    foreach ($bonus as  $key => $value) {
                        $dataMail['bonus'][] = "<tr><td>".$value->month."</td><td>:</td><td>".$value->unique_code."</td></tr>";
                        $counter++;
                    }
                }
                else
                {
                    $dataMail['bonus'] =array();
                }
            }
            else if($prize == 4){
                $unique_code_table = 'wp_unique_code_4';
            }
            else if($prize == 5){
                $unique_code_table = 'wp_unique_code_5';
            }
            else if($prize == 6){
                $unique_code_table = 'wp_unique_code_6';
                // get prize code
                $prepareBonus = "SELECT * FROM wp_unique_code_12 WHERE kode_toko = '$customer->unique_code'";
                $bonus = $wpdb->get_results($prepareBonus);
                $rowBonus = $wpdb->get_row($prepareBonus);
                            
                $dataMail['bonus'] = array();
                if (!empty($bonus)) {
                    $counter = 1;
                    $monthCode = array();
                    foreach ($bonus as  $key => $value) {
                        $dataMail['bonus'][] = "<tr><td>".$value->month."</td><td>:</td><td>".$value->unique_code."</td></tr>";
                        $counter++;
                    }
                }
                else
                {
                    $dataMail['bonus'] =array();
                }
            }
            else if($prize == 7){
                $unique_code_table = 'wp_unique_code_7';
            }
            else if($prize == 8){
                $unique_code_table = 'wp_unique_code_8';
            }
            else if($prize == 9){
                $unique_code_table = 'wp_unique_code_9';
                // get prize code
                $prepareBonus = "SELECT * FROM wp_unique_code_11 WHERE kode_toko = '$customer->unique_code'";
                $bonus = $wpdb->get_results($prepareBonus);
                $rowBonus = $wpdb->get_row($prepareBonus);
                            
                $dataMail['bonus'] = array();
                if (!empty($bonus)) {
                    //$counter = 1;
                    $monthCode = array();
                    foreach ($bonus as  $key => $value) {
                        $dataMail['bonus'][] = "<tr><td>".$value->month."</td><td>:</td><td>".$value->unique_code."</td></tr>";
                        //$counter++;
                    }
                }
                else
                {
                    $dataMail['bonus'] =array();
                }
            }
            
            $view               = array();
            $sql                = '';
            $code               = '';
            $sql                = "SELECT unique_code from $unique_code_table WHERE kode_toko = '$customer->unique_code' ";
            $code               = $wpdb->get_row($sql);
            $dataMail['code']   = $code->unique_code;
        
            // SEND EMAIL
            global $phpmailer;

            $msg        = '';
            $content    = '';

            $file       = 'images/'; //phpmailer will load this file
            $uid        = 'header-img-uid'; //will map it to this UID
            $filename   = 'banner_email.png';
            
            if ( ! is_object( $phpmailer ) || ! is_a( $phpmailer, 'PHPMailer' ) ) {
                require_once ABSPATH . WPINC . '/class-phpmailer.php';
                $phpmailer = new PHPMailer( true );
            }
            try {
                $headers  = "X-Mailer: Drupal\n"; 
                $headers .= 'MIME-Version: 1.0' . "\n"; 
                $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
                 $headers .= 'CC: rizkyfebryan21@gmail.com , syifafazh02@gmail.com'; 
    
                $path="images/";
                $filepath = ABSPATH.$file.$filename;
                add_action( 'phpmailer_init', function(&$phpmailer)use($filepath,$uid,$filename){
                $phpmailer->AddEmbeddedImage($filepath, $uid, $filename);
            });
            
                $headMail = emailHead();
                if ($prize == 1) {
                    $msg = "
                        ".$headMail."
                        <table>
                            <tr>
                                <td><img style='padding-bottom:20px' src='cid:header-img-uid'></td>
                            </tr>

                            <tr>
                                <td class='text-email'>
                                    Dear ".$dataMail['name']." <br>
                                    Thank you for claiming your gift from the Pirelli Gift Store Promotion, you have chosen the 12 Month Unlimited Fun Pass. You can use your 12 Month Unlimited Fun Pass as many times as you like throughout the year. <br>
                                    Here is your 12 Month Unlimited Fun Pass Reward Code: ".$dataMail['code']." <br>
                                    <ol>
                                        <li>Simply visit www.pirelligiftstore.com.au</li>
                                        <li>Click on the Access Your Gift link.</li>
                                        <li>Enter Your Reward Code as above and enter your details. Please note, your Reward Code needs to match your email address.</li>
                                        <li>Search for an activity in your chosen state. </li>
                                        <li>Select your chosen activity</li>
                                        <li>Receive an e-Voucher direct to your email address for you to present at the selected venue, your e-Voucher is valid for 30 days.
                                    You Fun Pass is valid for 12 months from date of issued or up until 31/8/2020, whichever is first.</li>
                                    </ol>
                                    We hope you create some awesome memories using your 12 Month Unlimited Fun Pass! <br>
                                    Any questions please contact the friendly team at contact@pirelligiftstore.com<br>
                                    Full terms and conditions applies and can be found at <a href='https://pirelligiftstore.com.au/terms'>www.pirelligiftstore.com.au/terms</a>
                                </td>
                            </tr>

                            <tr>
                                <td class='text-email'>
                                    <hr/>
                                    Contact us at contact@pirelligiftstore.com.au or on 1800 815 004 and we will respond to you within 3 business days.  Business days are 9.30 to 5.00 Monday to Friday excluding public holidays in NSW. 
                                    <hr/>
                                </td>
                            </tr>
                            </table>
                    ";
                }
                if ($prize == 2) {
                    $msg = "
                        ".$headMail."
                        <table>
                            <tr>
                                <td><img style='padding-bottom:20px' src='cid:header-img-uid'></td>
                            </tr>

                            <tr>
                                <td class='text-email'>
                                    Dear ".$dataMail['name']." <br>
                                    Thank you for claiming your gift from the Pirelli Gift Store Promotion, you have chosen the $1,000 Travel Credit Reward. <br>
                                    Here is your $1,000 Travel Credit Reward Code: ".$dataMail['code']." <br>
                                    <ol>
                                        <li>Simply visit <a href='https://euro.creditfortravel.com/'>Euro.creditfortravel.com </a></li>
                                        <li>Activate Your Reward Code (as above)</li>
                                        <li>Follow the prompts to start using your $1,000 Travel Credit Reward against hotels, car hire and much more.</li>
                                    </ol>
                                    
                                    You can use your Travel Credit Reward throughout the next 12 months from date of issued or up until 31/8/2020. <br>
                                    We hope you create some awesome memories using your Travel Credit Reward! <br>
                                    Any questions please contact the friendly team at contact@pirelligiftstore.com<br>
                                    Full terms and conditions applies and can be found at <a href='https://pirelligiftstore.com.au/terms'>www.pirelligiftstore.com.au/terms</a> <br>
                                    Your team at The Pirelli Gift Store
                                </td>
                            </tr>

                            <tr>
                                <td class='text-email'>
                                    <hr/>
                                    Contact us at contact@pirelligiftstore.com.au or on 1800 815 004 and we will respond to you within 3 business days.  Business days are 9.30 to 5.00 Monday to Friday excluding public holidays in NSW. 
                                    <hr/>
                                </td>
                            </tr>
                        </table>
                    ";
                }
                if ($prize == 3) {
                    $msg = "
                        ".$headMail."
                        <table>
                            <tr>
                                <td><img style='padding-bottom:20px' src='cid:header-img-uid'></td>
                            </tr>

                            <tr>
                                <td class='text-email'>
                                    Dear ".$dataMail['name']." <br>
                                    Thank you for claiming your gift from the Pirelli Gift Store Promotion, you have chosen  the $300 Car Wash Pass. <br>
                                    Keep that showroom shine all year round with 2 free car washes per month. <br>
                                    Here is your $300 Car Wash <b><u>Reward Code: ".$dataMail['code']."</u></b><br> 
                                    And below are your monthly Car Wash codes. <br>
                                    Remember you must request your 2 x FREE Car Wash vouchers using your monthly Car Wash code within the first 7 calendar days of the month, each month otherwise they will be invalid.<br>
                    
                                    <table>
                                        ".implode(' ', $dataMail['bonus'])."
                                    </table>
                                    
                                    <ol>
                                        <li> Simply visit <a href='https://pirelligiftstore.com.au/'>www.pirelligiftstore.com.au</a></li>
                                        <li> Go to Access Your Gift</li>
                                        <li> Enter your Car Wash Reward code above and enter your details. Please note, your Reward code needs to match your email address. </li>
                                        <li> Request your 2 x Car Wash vouchers using yourMonthly Car Wash code within the first 7 calendar days of that month. </li>
                                        <li> Your 2 x FREE Car Wash Vouchers will be emailed to you. </li>
                                        <li> Visit IMO <a href='https://www.imocarwash.com/au'>www.imocarwash.com/au</a> for venues No venues within 45 minutes drive from your area? please request your monthly vouchers pass at contact@pirelligiftstore.com.</li>
                                    </ol>
                                    Any questions please contact the friendly team at contact@pirelligiftstore.com <br>
                                    Full terms and conditions applies and can be found at <a href='https://pirelligiftstore.com.au/terms'>www.pirelligiftstore.com.au/terms</a> <br>
                                    Your team at The Pirelli Gift Store
                                </td>
                            </tr>

                            <tr>
                                <td class='text-email'>
                                    <hr/>
                                    Contact us at contact@pirelligiftstore.com.au or on 1800 815 004 and we will respond to you within 3 business days.  Business days are 9.30 to 5.00 Monday to Friday excluding public holidays in NSW. 
                                    <hr/>
                                </td>
                            </tr>
                        </table>
                    ";
                }
                if ($prize == 4) {
                    $msg = "
                        ".$headMail."
                        <table>
                            <tr>
                                <td><img style='padding-bottom:20px' src='cid:header-img-uid'></td>
                            </tr>

                            <tr>
                                <td class='text-email'>
                                    Dear ".$dataMail['name']." <br>
                                    Thank you for claiming your gift from the Pirelli Gift Store Promotion, you have chosen the $300 Harvey Norman Voucher to use toward a selection of products! <br>
                                    Here is your $300 Harvey Norman Voucher Reward code: ".$dataMail['code']." <br>
                                    <ol>
                                        <li> Simply visit <a href='https://pirelligiftstore.com.au'>www.pirelligiftstore.com.au</a></li>
                                        <li> Go to Access Your Gift.</li>
                                        <li> Enter your Harvey Norman Reward code above and enter your details. Please note, your Reward code needs to match your email address. </li>
                                        <li> Browse and select from the products available. </li>
                                        <li> Enter in your delivery address and name of the recipient. </li>
                                        <li> The balance will be displayed on screen minus the $300 voucher. Click Order to proceed.</li>
                                        <li> Our Customer service team will contact you within 5 business days confirm your order and supply bank transfer details. </li>
                                    </ol>
                                    Any questions please contact the friendly team at contact@pirelligiftstore.com<br>
                                    Full terms and conditions applies and can be found at <a href='https://pirelligiftstore.com.au/terms'>www.pirelligiftstore.com.au/terms</a> <br>
                                    Your team at The Pirelli Gift Store
                                </td>
                            </tr>

                            <tr>
                                <td class='text-email'>
                                    <hr/>
                                    Contact us at contact@pirelligiftstore.com.au or on 1800 815 004 and we will respond to you within 3 business days.  Business days are 9.30 to 5.00 Monday to Friday excluding public holidays in NSW. 
                                    <hr/>
                                </td>
                            </tr>
                        </table>
                    ";
                }
                if ($prize == 5) {
                    $msg = "
                        ".$headMail."
                        <table>
                            <tr>
                                <td><img style='padding-bottom:20px' src='cid:header-img-uid'></td>
                            </tr>

                            <tr>
                                <td class='text-email'>
                                    Dear ".$dataMail['name']." <br>
                                    Thank you for claiming your gift from the Pirelli Gift Store Promotion, you have chosen the $300 Drummond Golf Voucher to use toward a selection of products! <br>
                                    Here is your $300 Drummond Golf Voucher Reward code: ".$dataMail['code']." <br>
                                    <ol>
                                        <li> Simply visit <a href='https://pirelligiftstore.com.au'>www.pirelligiftstore.com.au</a> </li>
                                        <li> Go to Access Your Gift </li>
                                        <li> Enter your Drummond Golf Reward code above and enter your details. Please note, your Reward code needs to match your email address. </li>
                                        <li> Browse and select from the Golf products available. </li>
                                        <li> Enter in your delivery address and name of the recipient. </li>
                                        <li> The balance will be displayed on screen minus the $300 voucher. Click Order to proceed.</li>
                                        <li> Our Customer service team will contact you within 5 business days to confirm your order and supply bank transfer details.  </li>
                                    </ol>
                                    <br>
                                    Any questions please contact the friendly team at contact@pirelligiftstore.com <br>
                                    Full terms and conditions applies and can be found at <a href='https://pirelligiftstore.com.au/terms'>www.pirelligiftstore.com.au/terms</a> <br>
                                    Your team at The Pirelli Gift Store
                                </td>
                            </tr>

                            <tr>
                                <td class='text-email'>
                                    <hr/>
                                    Contact us at contact@pirelligiftstore.com.au or on 1800 815 004 and we will respond to you within 3 business days.  Business days are 9.30 to 5.00 Monday to Friday excluding public holidays in NSW. 
                                    <hr/>
                                </td>
                            </tr>
                        </table>
                    ";
                }
                if ($prize == 6) {
                    $msg = "
                        ".$headMail."
                        <table>
                            <tr>
                                <td><img style='padding-bottom:20px' src='cid:header-img-uid'></td>
                            </tr>

                            <tr>
                                <td class='text-email'>
                                    Dear ".$dataMail['name']." <br>
                                    Thank you for claiming your gift from the Pirelli Gift Store Promotion, you have chosen the 4 x Free Personal Training! Now let's get physical!<br>
                                    Here is your Personal Training <b><u>Reward Code: ".$dataMail['code']."</u></b><br> 
                                    And below are your monthly Personal Training code. <br>
                                    Remember you must request your Personal Training session using your monthly Personal Training code within the first 7 calendar days of the 4 consecutive month, each month otherwise they will be invalid.<br>
                                    
                                    <table>
                                        ".implode(' ', $dataMail['bonus'])."
                                    </table>
                    
                                    <ol>
                                        <li> Simply visit <a href='https://pirelligiftstore.com.au/'>www.pirelligiftstore.com.au</a></li>
                                        <li> Go to Access Your Gift</li>
                                        <li> Enter your Personal Training Reward Code above and enter your details. Please note, your Reward code needs to match your email address. </li>
                                        <li> Enter your postcode, select your preferred day of the week and timeslot for your Personal Training Session.  </li>
                                        <li> Our Customer service team will contact you within 5 business days with details of your Personal Training Session. </li>
                                        
                                    </ol>
                                    
                                    Any questions please contact the friendly team at contact@pirelligiftstore.com <br>
                                    Full terms and conditions applies and can be found at <a href='https://pirelligiftstore.com.au/terms'>www.pirelligiftstore.com.au/terms</a>  <br>
                                    Your team at The Pirelli Gift Store
                                </td>
                            </tr>

                            <tr>
                                <td class='text-email'>
                                    <hr/>
                                    Contact us at contact@pirelligiftstore.com.au or on 1800 815 004 and we will respond to you within 3 business days.  Business days are 9.30 to 5.00 Monday to Friday excluding public holidays in NSW. 
                                    <hr/>
                                </td>
                            </tr>
                        </table>
                    ";
                }
                if ($prize == 7) {
                    $msg = "
                        ".$headMail."
                        <table>
                            <tr>
                                <td><img style='padding-bottom:20px' src='cid:header-img-uid'></td>
                            </tr>

                            <tr>
                                <td class='text-email'>
                                    Dear ".$dataMail['name']." <br>
                                    Thank you for claiming your gift from the Pirelli Gift Store, you have chosen the $300 Holiday Cash Reward. <br>
                                    Here is your $300 Holiday Cash Reward Code: ".$dataMail['code']." <br>
                                    The $300 Holiday Cash Reward must be used against a holiday with 5 nights minimum stay (flights and accommodation) for 2 people at Flight Centre Pty Ltd. <br>
                                    <ol>
                                        <li>Simply email georgie.orourke@flightcentre.com.au to plan and book your holiday using your Holiday Cash Reward Code above.</li>
                                        <li>You must book in your holiday by 31 December 2019 but the travel can be made by 30 June 2020.</li>
                                    </ol>
                    
                                    Any questions please contact the friendly team at contact@pirelligiftstore.com<br>
                                    Full terms and conditions can be found at <a href='https://pirelligiftstore.com.au/terms'>www.pirelligiftstore.com.au/terms</a><br>
                                    Your team at The Pirelli Gift Store
                                </td>
                            </tr>

                            <tr>
                                <td class='text-email'>
                                    <hr/>
                                    Contact us at contact@pirelligiftstore.com.au or on 1800 815 004 and we will respond to you within 3 business days.  Business days are 9.30 to 5.00 Monday to Friday excluding public holidays in NSW. 
                                    <hr/>
                                </td>
                            </tr>
                        </table>
                    ";
                }
                if ($prize == 8) {
                    $msg = "
                        ".$headMail."
                        <table>
                            <tr>
                                <td><img style='padding-bottom:20px' src='cid:header-img-uid'></td>
                            </tr>

                            <tr>
                                <td class='text-email'>
                                    Dear ".$dataMail['name']." <br>
                                    Thank you for claiming your gift from the Pirelli Gift Store Promotion, you have chosen the $300 Adrenalin Experience!<br>
                                    Here is your Adrenalin Experience Reward Code: ".$dataMail['code']." <br>
                                    <ol>
                                        <li> Simply visit <a href='https://pirelligiftstore.com.au'>www.pirelligiftstore.com.au</a> </li>
                                        <li> Go to Access Your Gift</li>
                                        <li> Enter your Adrenalin Reward Code above and enter your details. Please note, your Reward Code needs to match your email address.</li>
                                        <li> Select your Adrenalin experience from Sky Diving, Hot Air Ballooning and Scuba Diving. Choose your state and 3 preferred dates & Timeslot.</li>
                                        <li> Our Customer service team will contact you within 5 business days with details of your Adrenalin Experience Booking. </li>
                                    </ol>
                                    
                                    We hope you are ready to head off on your adrenalin pumping adventure!<br>
                                    Any questions please contact the friendly team at contact@pirelligiftstore.com<br>
                                    Full terms and conditions applies and can be found at <a href='https://pirelligiftstore.com.au/terms'>www.pirelligiftstore.com.au/terms</a> <br>
                                    Your team at The Pirelli Gift Store
                                </td>
                            </tr>

                            <tr>
                                <td class='text-email'>
                                    <hr/>
                                    Contact us at contact@pirelligiftstore.com.au or on 1800 815 004 and we will respond to you within 3 business days.  Business days are 9.30 to 5.00 Monday to Friday excluding public holidays in NSW. 
                                    <hr/>
                                </td>
                            </tr>
                        </table>
                    ";
                }
                if ($prize == 9) {
                    $msg = "
                        ".$headMail."
                        <table>
                            <tr>
                                <td><img style='padding-bottom:20px' src='cid:header-img-uid'></td>
                            </tr>

                            <tr>
                                <td class='text-email'>
                                    Dear ".$dataMail['name']." <br>
                                    Thank you for claiming your gift from the Pirelli Gift Store Promotion, you have chosen Free movies for 14 months. <br>
                                    Here is your Cinema <b><u>Reward Code: ".$dataMail['code']."</u></b><br> 
                                    And below are your monthly Cinema code. <br>
                                    Remember you must request your Cinema voucher using your monthly Cinema code within the first 7 calendar days of the month, each month otherwise they will be invalid.<br>
                    
                                    <table>
                                        ".implode(' ', $dataMail['bonus'])."
                                    </table>
                    
                                    <ol>
                                        <li> Simply visit <a href='https://pirelligiftstore.com.au/'>www.pirelligiftstore.com.au</a></li>
                                        <li> Go to Access Your Gift</li>
                                        <li> Enter your Cinema Reward Code above and enter your details. Please note, your Reward code needs to match your email address. </li>
                                        <li> Request your Cinema voucher using your Monthly Cinema code within the first 7 calendar days of that Month.  </li>
                                        <li> Your Cinema voucher will be emailed to you in 5 business days. </li>
                                        <li> Visit www.eventcinemas.com.au or www.villagecinemas.com.au for venues. Present at the Cinema to obtain a ticket or book online using the voucher code and PIN, booking fees applies.</li>
                                    </ol>
                    
                                    Any questions please contact the friendly team at contact@pirelligiftstore.com <br>
                                    Full terms and conditions applies and can be found at <a href='https://pirelligiftstore.com.au/terms'>www.pirelligiftstore.com.au/terms</a>  <br>
                                    Your team at The Pirelli Gift Store
                                </td>
                            </tr>

                            <tr>
                                <td class='text-email'>
                                    <hr/>
                                    Contact us at contact@pirelligiftstore.com.au or on 1800 815 004 and we will respond to you within 3 business days.  Business days are 9.30 to 5.00 Monday to Friday excluding public holidays in NSW. 
                                    <hr/>
                                </td>
                            </tr>
                        </table>
                    ";
                }

                $phpmailer->SMTPDebug = apply_filters( 'wp_mail_smtp_admin_test_email_smtp_debug', 0 );
                $_SESSION['message'] = "Resend email successfully";
                if($type == "resend_email")
                {
                    $result = wp_mail($customer->email, 'Pirelli Gift Prize', $msg, $headers);
                }
                if($type == "resend_new_email")
                {
                    $result = wp_mail($customer->new_email, 'Pirelli Gift Prize', $msg, $headers);
                }
                
            }catch (phpmailerException $e) {
                echo $e->errorMessage(); //Pretty error messages from PHPMailer
            }catch (Exception $e) {
                echo $e->getMessage(); //Boring error messages from anything else!
            }
            unset( $phpmailer );
        }

        echo "
            <script>
                window.location = '".home_url()."/wp-admin/admin.php?page=customers_log_list';
            </script>
        ";
    } 

    ?>
    
<?php
}
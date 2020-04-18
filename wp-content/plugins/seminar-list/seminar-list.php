<?php

/**
 * Plugin Name: Seminar List
 * Description: Seminar List on page
 * Version: 1.0
 * Author: Iky
 * 
 * 
 */

class Seminar_list
{
	protected $error;

	public function __construct()
	{
		add_action('admin_menu', array($this, 'seminar_list'));
        add_shortcode('seminar_render', array($this, 'render_shortcode_handler'));
        // add_action( 'admin_enqueue_scripts', array($this, 'fn_bootstrap_scripts' ) );
	}

	public function init()
    {
        
    }


    function seminar_list()
    {

    }

     function render_shortcode_handler($value='')
     {
     	global $wpdb;
        global $wp;
        global $current_user;

        // echo $current_user->id;

        $args = array(
         	"title" => '',
            "title_url" => '',
            "limit" => 20,
            "offset" => 0,
            "order" => 'DESC',
            "orderby" => 'date',
            "cat" => array
                (
                    "0" => 1,
                    "1" => 69,
                ),
            "tag" => '',
            "taxonomy" => '',
            "post_type" => array
                (
                    "0" => 'post',
                ),
            "post_status" => 'publish',
            "ignore_sticky" => 1,
            "exclude_current" => 1,
            "excerpt" => '',
            "length" => 10,
            "thumb" => 1,
            "thumb_height" => 300,
            "thumb_width" => 300,
            "thumb_default" => 'http://placehold.it/45x45/f0f0f0/ccc',
            "thumb_align" => 'rpwe-aligncenter',
            "date" => 1,
            "date_relative" => '',
            "date_modified" => '',
            "readmore" => '',
            "readmore_text" => 'Read More »',
            "comment_count" => '',
            "styles_default" => '',
            "css" => '',
            "cssID" => 'ls-sm-home',
            "css_class" => 'ls-sm-home',
            "before" => '',
            "after" => '',
        );

     	ob_start();
        if(current_user_can( 'author' ))
        {
            $id_post_author = $current_user->id;
            $querystr = "
                SELECT * FROM $wpdb->posts
                LEFT JOIN $wpdb->postmeta ON($wpdb->posts.ID = $wpdb->postmeta.post_id)
                LEFT JOIN $wpdb->term_relationships ON($wpdb->posts.ID = $wpdb->term_relationships.object_id)
                LEFT JOIN $wpdb->term_taxonomy ON($wpdb->term_relationships.term_taxonomy_id = $wpdb->term_taxonomy.term_taxonomy_id)
                LEFT JOIN $wpdb->terms ON($wpdb->term_taxonomy.term_id = $wpdb->terms.term_id)
                WHERE $wpdb->terms.name LIKE '%seminar%'
                AND $wpdb->term_taxonomy.taxonomy = 'category'
                AND $wpdb->posts.post_status = 'publish'
                AND $wpdb->posts.post_type = 'post'
                AND $wpdb->posts.post_author = '$id_post_author'
                GROUP BY $wpdb->posts.ID
                ORDER BY $wpdb->posts.post_date DESC
            ";
        }
        else
        {
              $querystr = "
                SELECT * FROM $wpdb->posts
                LEFT JOIN $wpdb->postmeta ON($wpdb->posts.ID = $wpdb->postmeta.post_id)
                LEFT JOIN $wpdb->term_relationships ON($wpdb->posts.ID = $wpdb->term_relationships.object_id)
                LEFT JOIN $wpdb->term_taxonomy ON($wpdb->term_relationships.term_taxonomy_id = $wpdb->term_taxonomy.term_taxonomy_id)
                LEFT JOIN $wpdb->terms ON($wpdb->term_taxonomy.term_id = $wpdb->terms.term_id)
                WHERE $wpdb->terms.name LIKE '%seminar%'
                AND $wpdb->term_taxonomy.taxonomy = 'category'
                AND $wpdb->posts.post_status = 'publish'
                AND $wpdb->posts.post_type = 'post'
                -- AND $wpdb->posts.post_author = '$id_post_author'
                GROUP BY $wpdb->posts.ID
                ORDER BY $wpdb->posts.post_date DESC
            ";
        }




         $pageposts = $wpdb->get_results($querystr, OBJECT);
         $args = wp_parse_args( $args, rpwe_get_default_args() );
         extract( $args );

     	include 'template/list-seminar.php';
     	$output = ob_get_clean();
     	return $output;

     }
}

$Seminar_list = new Seminar_list();
?>
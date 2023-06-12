
<?php 

include("includes/db.php");

?>

<div class="panel panel-default sidebar-menu"><!-- panel panel-default sidebar-menu Begin -->
    <div class="panel-heading"><!-- panel-heading Begin -->
        <h3 class="panel-title">Products Categories</h3>
    </div><!-- panel-heading Finish -->
    
    <div class="panel-body"><!-- panel-body Begin -->
        <ul class="nav nav-pills nav-stacked category-menu"><!-- nav nav-pills nav-stacked category-menu Begin -->
            
        <ul><!-- ul Begin -->
        <?php 
                    
                    $get_p_cats = "select * from product_categories";
                
                    $run_p_cats = mysqli_query($con,$get_p_cats);
                
                    while($row_p_cats=mysqli_fetch_array($run_p_cats)){
                        
                        $p_cat_id = $row_p_cats['p_cat_id'];
                        
                        $p_cat_title = $row_p_cats['p_cat_title'];
                        
                        echo "
                        
                            <li>
                            
                                <a href='shop.php?p_cat=$p_cat_id'>
                                
                                    $p_cat_title
                                
                                </a>
                            
                            </li>
                        
                        ";
                        
                    }
                
                ?>
                </ul><!-- ul Finish -->
            
        </ul><!-- nav nav-pills nav-stacked category-menu Finish -->
    </div><!-- panel-body Finish -->
    
</div><!-- panel panel-default sidebar-menu Finish -->

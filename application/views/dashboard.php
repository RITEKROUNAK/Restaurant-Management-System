

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <?php if($is_admin == true){ ?>

        <div class="row">
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-red">
              <div class="inner">
                <h3><?php echo $total_products ?></h3>

                <p>Food Products</p>
              </div>
              <div class="icon">
                <i class="ion ion-android-restaurant"></i>
              </div>
              <a href="<?php echo base_url('products/') ?>" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-green">
              <div class="inner">
                <h3><?php echo $total_paid_orders ?></h3>

                <p>Total Paid Orders</p>
              </div>
              <div class="icon">
                <i class="ion ion-cash"></i>
              </div>
              <a href="<?php echo base_url('orders/') ?>" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-yellow">
              <div class="inner">
                <h3><?php echo $total_users; ?></h3>

                <p>System Users</p>
              </div>
              <div class="icon">
                <i class="ion ion-android-people"></i>
              </div>
              <a href="<?php echo base_url('users/') ?>" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-purple">
              <div class="inner">
                <h3><?php echo $total_stores ?></h3>

                <p>Available Stores</p>
              </div>
              <div class="icon">
                <i class="ion ion-android-home"></i>
              </div>
              <a href="<?php echo base_url('stores/') ?>" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
        </div>
        <!-- /.row -->

        <div class="row">
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-primary">
              <div class="inner">
                <h3><?php echo $total_category ?></h3>

                <p>Food Category</p>
              </div>
              <div class="icon">
                <i class="ion ion-android-menu"></i>
              </div>
              <a href="<?php echo base_url('category/') ?>" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-navy">
              <div class="inner">
                <h3><?php echo $total_unpaid_orders ?></h3>

                <p>UnPaid Orders</p>
              </div>
              <div class="icon">
                <i class="ion ion-close-circled" style="color:rgb(177, 169, 169)"></i>
              </div>
              <a href="<?php echo base_url('orders/') ?>" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-orange">
              <div class="inner">
                <h3><?php echo $total_orders ?></h3>

                <p>Total Orders</p>
              </div>
              <div class="icon">
                <i class="ion ion-clipboard"></i>
              </div>
              <a href="<?php echo base_url('orders/') ?>" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-maroon">
              <div class="inner">
                <h3>$<?php $query = $this->db->query('SELECT SUM( net_amount)as total FROM orders WHERE paid_status = 1;')->row(); echo floatval($query->total);?></h3>

                <p>Total Earnings</p>
              </div>
              <div class="icon">
                <i class="ion ion-social-usd"></i>
              </div>
              <a href="<?php echo base_url('reports/') ?>" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
        </div>
        <!-- /.row -->


        <div class="row">
          <div class="col-lg-4 col-xs-6">
           
          </div>

          <div class="col-lg-4 col-xs-6">
            <div class="small-box bg-teal">
              <div class="inner">
                <h3><?php echo $total_tables ?></h3>

                <p>Available Tables</p>
              </div>
              <div class="icon">
                <i class="ion ion-ios-grid-view"></i>
              </div>
              <a href="<?php echo base_url('tables/') ?>" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-xs-6">
           
          </div>
        </div>


      <?php } else { ?>


        <div class="row">
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-red">
              <div class="inner">
                <h3><?php echo $total_products ?></h3>

                <p>Food Products</p>
              </div>
              <div class="icon">
                <i class="ion ion-android-restaurant"></i>
              </div>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-primary">
              <div class="inner">
                <h3><?php echo $total_tables ?></h3>

                <p>Available Tables</p>
              </div>
              <div class="icon">
                <i class="ion ion-ios-grid-view"></i>
              </div>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-green">
              <div class="inner">
                <h3><?php echo $total_category ?></h3>

                <p>Food Category</p>
              </div>
              <div class="icon">
                <i class="ion ion-android-menu"></i>
              </div>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-purple">
              <div class="inner">
                <h3><?php echo $total_stores ?></h3>

                <p>Available Stores</p>
              </div>
              <div class="icon">
                <i class="ion ion-android-home"></i>
              </div>
            </div>
          </div>
          <!-- ./col -->
        </div>
        <!-- /.row -->
      
      <?php }?>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <script type="text/javascript">
    $(document).ready(function() {
      $("#dashboardMainMenu").addClass('active');
    });
  </script>

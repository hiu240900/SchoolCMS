<aside class="main-sidebar">

  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">

    <!-- Sidebar user panel (optional) -->


    <!-- search form (Optional) -->

    </form>
    <!-- /.search form -->

    <!-- Sidebar Menu -->
    <ul class="sidebar-menu" data-widget="tree">
      <li class="header"> Dashboard</li>
      <!-- Optionally, you can add icons to the links -->
      <!-- <li class="active"><a href="#"><i class="fa fa-link"></i> <span>Link</span></a></li>
        <li><a href="#"><i class="fa fa-link"></i> <span>Another Link</span></a></li>-->
      <li id="stat"><a href="./"><i class="fa fa-bar-chart-o"></i> <span>Statistics</span> </a></li>

      <?php if ($_SESSION['role'] == 'Teacher') { ?>
        <li><a href="./teacher.php"><i class="fa fa-users"></i> <span>Teacher Details</span> </a></li>
        <li><a href="./student.php"><i class="fa fa-users"></i> <span>Student Details</span> </a></li>
        <li><a href="./mess.php"><i class="fa fa-envelope-o"></i> <span>Messenger</span> </a></li>
        <li><a href="./search.php"><i class="fa fa-user-plus"></i> <span>Search by name</span> </a></li>
        <li><a href="./search_num.php"><i class="fa fa-user-plus"></i> <span>Search by number</span> </a></li>
        <li><a href="./dom-xss.php?default=Vietnam"><i class="fa fa-user-plus"></i> <span>Language</span> </a></li>
      <?php } elseif ($_SESSION['role'] == 'Student') { ?>
        <li><a href="./student-stu.php"><i class="fa fa-users"></i> <span>Student Details</span> </a></li>
        <li><a href="./mess-role.php"><i class="fa fa-envelope-o"></i> <span>Messenger</span> </a></li>
      <?php

      } ?>



    </ul>
    <!-- /.sidebar-menu -->
  </section>
  <!-- /.sidebar -->
</aside>
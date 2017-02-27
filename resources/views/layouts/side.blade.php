<!-- Left side column. contains the sidebar --> 
<aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">


        <!-- /.search form -->

        <!-- Sidebar Menu -->
        <ul class="sidebar-menu">
            <li class="header">CHECK OUR FEATURES</li>
            <!-- Optionally, you can add icons to the links -->
            <li class="active"><a href="/graphics/{{Sentinel::getUser()->country_id}}"><span>HOW VOTES GOES?</span></a></li>
            <li class="active"><a href="/"><span> VOTE </span></a></li>
            <li><a href=""
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            Logout
                                        </a>

                                        <form id="logout-form" action="/logout" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form></li>
            
        </ul><!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
</aside>
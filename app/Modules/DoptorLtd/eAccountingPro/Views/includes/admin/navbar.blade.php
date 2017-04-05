<style>
    @media (min-width: 767px) {
    .navbar-nav .dropdown-menu .caret {
    transform: rotate(-90deg);
    }
}

</style>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="{{Route('admin.modules.doptorltd.eaccounting.pro.main')}}">eAccountingPRO</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav">
            <!-- <li class="active"><a href="#">Dashboard</a></li> -->

            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Menu Item<b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="#"> 
                            Sub Menu1
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            Sub Menu2
                        </a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="#">
                    Menu Item2
                </a>
            </li>
                
        </ul>

         <ul class="nav navbar-nav navbar-right">
            
            <li class="dropdown notifications-menu">
                <!-- Menu toggle button -->
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                   <i class="fa fa-bell-o"></i>
                    <span class="label label-warning">
                        1
                    </span>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <!-- Inner Menu: contains the notifications -->
                        <ul class="menu list-unstyled list-group">
                            <li class="list-group-item" style="font-size: 12px;"><!-- start notification -->
                                <a href="#">

                                    {{-- @if($role == 1) Total @else You have @endif--}} <span style="color:red;">  1</span> pending Notification
                                </a>
                            </li><!-- end notification -->
                        </ul>
                    </li>
                </ul>
            </li>
            <!-- leave section ends -->
        </ul> 
    </div><!-- /.navbar-collapse -->
    </div>
</nav>

@section('scripts')

@parent
    <script>
        $(document).ready(function() {          
            $('.navbar a.dropdown-toggle').on('click', function(e) {
                var $el = $(this);
                var $parent = $(this).offsetParent(".dropdown-menu");
                $(this).parent("li").toggleClass('open');

                if(!$parent.parent().hasClass('nav')) {
                    $el.next().css({"top": $el[0].offsetTop, "left": $parent.outerWidth() - 4});
                }

                $('.nav li.open').not($(this).parents("li")).removeClass("open");

                return false;
            });
        });
    </script>
@stop
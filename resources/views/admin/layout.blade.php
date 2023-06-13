<!doctype html>
<html lang="en" data-layout="vertical" data-topbar="light" data-sidebar="dark" data-sidebar-size="lg" data-sidebar-image="none">

<head>
    <meta charset="utf-8" />
    <title>Accreditation</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <meta content="Themesbrand" name="author" />
    <link rel="shortcut icon" href="{{asset('admin/images/favicon.ico')}}">
    <link href="{{asset('admin/libs/jsvectormap/css/jsvectormap.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/libs/swiper/swiper-bundle.min.css')}}" rel="stylesheet" type="text/css" />
    <script src="{{asset('admin/js/layout.js')}}"></script>
    <link href="{{asset('admin/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/css/icons.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/css/app.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/css/custom.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/css/style.css')}}" rel="stylesheet" type="text/css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.1/css/toastr.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/choices.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.2.2/css/buttons.dataTables.min.css">
    <script src="https://js.pusher.com/7.2/pusher.min.js"></script>
    <script src="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/choices.min.js"></script>
    <!-- masking js -->
    <script src="{{asset('admin/js/masking.js')}}"></script>

    @stack('styles')
    <style>
        #html_btn {
            display: none;
        }

        .choices[data-type*=select-multiple] .choices__list--dropdown,
        .choices[data-type*=text] .choices__list--dropdown {
            padding: 20px;
        }
    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
</head>

<body>
    <!-- Begin page -->
    <div id="layout-wrapper">
        <header id="page-topbar">
            <div class="layout-width">
                <div class="navbar-header">
                    <div class="d-flex">
                        <!-- LOGO -->
                        <div class="navbar-brand-box horizontal-logo">
                            <a href="{{url('admin/dashboard')}}" class="logo logo-dark">
                                <span class="logo-sm">
                                    <img src="" alt="" height="22">
                                </span>
                                <span class="logo-lg">
                                    <img src="" alt="" height="17">
                                </span>
                            </a>
                            <a href="{{url('admin/dashboard')}}" class="logo logo-light">
                                <span class="logo-sm">
                                    <img src="" alt="" height="22">
                                </span>
                                <span class="logo-lg">
                                    <img src="" alt="" height="17">
                                </span>
                            </a>
                        </div>
                        <button type="button" class="btn btn-sm px-3 fs-16 header-item vertical-menu-btn topnav-hamburger" id="topnav-hamburger-icon">
                            <span class="hamburger-icon">
                                <span></span>
                                <span></span>
                                <span></span>
                            </span>
                        </button>
                    </div>
                    @php
                    $notifications =DB::table('notifications')->where('notifiable_id',getlogindetail('id'))->where('read_at',null)->orderby('created_at','desc')->get();
                    @endphp
                    <div class="d-flex align-items-center">
                        <div class="dropdown ms-sm-3 header-item topbar-user">
                            <button type="button" class="btn" id="page-header-user-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="d-flex align-items-center">
                                    <img class="rounded-circle header-profile-user" src="{{asset('admin/images/users/avatar-1.jpg')}}" alt="Header Avatar">
                                    <span class="text-start ms-xl-2">
                                        <span class="d-none d-xl-inline-block ms-1 fw-medium user-name-text">
                                            {{getlogindetail('name')}}</span>
                                        <span class="d-none d-xl-block ms-1 fs-12 text-muted user-name-sub-text">{{ ucfirst(getlogindetail('role')) }}</span>
                                    </span>
                                </span>
                            </button>
                            <div class="dropdown-menu dropdown-menu-end">
                                <!-- item-->
                                <h6 class="dropdown-header">Welcome Admin!</h6>
                                <a class="dropdown-item" href="{{url('/admin/change_password')}}"><i class="mdi mdi-key text-muted fs-16 align-middle me-1"></i> <span class="align-middle" data-key="t-logout">Change Password</span></a>
                                <a class="dropdown-item" href="{{url('/admins/logout')}}"><i class="mdi mdi-logout text-muted fs-16 align-middle me-1"></i> <span class="align-middle" data-key="t-logout">Logout</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- ========== App Menu ========== -->
        <div class="app-menu navbar-menu">
            <!-- LOGO -->
            <div class="navbar-brand-box">
                <!-- Dark Logo-->
                <a href="{{url('admin/dashboard')}}" class="logo logo-dark">
                    <span class="logo-sm">
                        <!-- <img src="{{asset('admin/images/Taca-logo.png')}}" alt="" height="22"> -->
                    </span>
                    Accreditation
                    <span class="logo-lg">


                        <!-- <img src="{{asset('admin/images/Taca-logo.png')}}" alt="" height="17" style="vertical-align: middle;width: 185px;height: 114px;"> -->
                    </span>
                    Accreditation
                </a>
                <!-- Light Logo-->
                <a href="{{url('admin/dashboard')}}" class="logo logo-light">
                    <span class="logo-sm">

                        <!-- <img src="{{asset('admin/images/Taca-logo.png')}}" alt="" height="22"> -->
                    </span>
                    Accreditation
                    <span class="logo-lg">

                        <!-- <img src="{{asset('admin/images/Taca-logo.png')}}" alt="" height="17" style="vertical-align: middle;width: 185px;height: 114px;"> -->
                    </span>
                </a>
                <button type="button" class="btn btn-sm p-0 fs-20 header-item float-end btn-vertical-sm-hover" id="vertical-hover">
                    <i class="ri-record-circle-line"></i>
                </button>
            </div>
            <div id="scrollbar">
                <div class="container-fluid">
                    <div id="two-column-menu"> </div>
                    <ul class="navbar-nav" id="navbar-nav">
                        <li class="menu-title"><span data-key="t-menu">Menu</span></li>
                        <li class="nav-item">
                            <a class="nav-link menu-link @yield('dashboard')" href="{{ url('admin/dashboard');}}">
                                <i class="ri-dashboard-2-line"></i> <span data-key="t-dashboards">Dashboard</span>
                            </a>
                        </li>

                        <!-- <li class="nav-item">
                            <a class="nav-link menu-link @yield('color')" href="{{ url('admin/color');}}">
                                <i class="ri-dashboard-2-line"></i> <span data-key="t-dashboards">Colors</span>
                            </a>
                        </li> -->

                        <li class="nav-item">
                            <a class="nav-link menu-link" href="#dealers" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="brands">
                                <i class="ri-compasses-2-line"></i> <span data-key="t-layouts">Players</span>
                            </a>
                            <div class="collapse menu-dropdown" id="dealers">
                                <ul class="nav nav-sm flex-column">
                                    <li class="nav-item ">
                                        <a href="{{url('admin/candidates/create')}}" class="nav-link  {{request()->is('admin/candidates/create') ? 'active' : '' }}" data-key="t-horizontal">Add Players </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="{{url('admin/candidates')}}" class="nav-link {{request()->route()->getName() == 'candidates.index' ? 'active' : '' }}" data-key="t-horizontal">All Players</a>
                                    </li>
                                </ul>
                            </div>
                        <li class="nav-item">
                            <a class="nav-link menu-link @yield('color')" href="{{ url('admin/sport');}}">
                                <i class="ri-basketball-line"></i> <span data-key="t-dashboards">Sport Management</span>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link menu-link @yield('color')" href="{{ url('admin/category');}}">
                                <i class="ri-database-2-line"></i> <span data-key="t-dashboards">Category Management</span>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link menu-link @yield('color')" href="{{ url('admin/staff');}}">
                                <i class="ri-database-2-line"></i> <span data-key="t-dashboards">Staff Management</span>
                            </a>
                        </li>

                        <!-- <li class="nav-item">
                            <a class="nav-link menu-link @yield('color')" href="{{ url('admin/designation');}}">
                                <i class="ri-database-2-line"></i> <span data-key="t-dashboards">Designation Management</span>
                            </a>
                        </li> -->
                        <li class="nav-item">
                            <a class="nav-link menu-link @yield('access_code')" href="{{ url('admin/access_code');}}">
                                <i class="ri-database-2-line"></i> <span data-key="t-dashboards">Access Code</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- Sidebar -->
            </div>
            <div class="sidebar-background"></div>
        </div>
        <!-- Left Sidebar End -->
        <!-- Vertical Overlay-->
        <div class="vertical-overlay"></div>
        <!-- ============================================================== -->
        <!-- Start right Content here -->
        <!-- ============================================================== -->
        <div class="main-content">
            <div class="page-content">
                <div class="container-fluid">
                    @section('content')
                    @show()
                </div>
                <!-- container-fluid -->
            </div>
            <!-- End Page-content -->
            <footer class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6">
                            <script>
                                document.write(new Date().getFullYear())
                            </script> © {{ getwebdetail('title') ?? '' }}.
                        </div>
                        <div class="col-sm-6">
                            <div class="text-sm-end d-none d-sm-block">
                                Design & Develop by Developer
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
        <!-- end main content-->
    </div>
    <!-- END layout-wrapper -->
    <!-- JAVASCRIPT -->
    <script src="{{asset('admin/libs/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <script src="{{asset('admin/libs/simplebar/simplebar.min.js')}}"></script>
    <script src="{{asset('admin/libs/node-waves/waves.min.js')}}"></script>
    <script src="{{asset('admin/libs/feather-icons/feather.min.js')}}"></script>
    <script src="{{asset('admin/js/pages/plugins/lord-icon-2.1.0.js')}}"></script>
    <script src="{{asset('admin/js/plugins.js')}}"></script>
    <script src="{{asset('admin/libs/apexcharts/apexcharts.min.js')}}"></script>
    <script src="{{asset('admin/libs/jsvectormap/js/jsvectormap.min.js')}}"></script>
    <script src="{{asset('admin/libs/jsvectormap/maps/world-merc.js')}}"></script>
    <script src="{{asset('admin/libs/swiper/swiper-bundle.min.js')}}"></script>
    <script src="{{asset('admin/js/pages/dashboard-ecommerce.init.js')}}"></script>
    <script src="{{asset('admin/js/app.js')}}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.1/js/toastr.js"></script>
    <script src="{{asset('admin/js/pages/form-wizard.init.js')}}"></script>
    <!-- dropzone min -->
    <script src="{{asset('admin/libs/dropzone/dropzone-min.js')}}"></script>
    <script src="{{asset('admin/libs/filepond/filepond.min.js')}}"></script>
    <script src="{{asset('admin/libs/filepond-plugin-image-preview/filepond-plugin-image-preview.min.js')}}"></script>
    <script src="{{asset('admin/libs/filepond-plugin-file-validate-size/filepond-plugin-file-validate-size.min.js')}}">
    </script>
    <script src="{{asset('admin/libs/filepond-plugin-image-exif-orientation/filepond-plugin-image-exif-orientation.min.js')}}">
    </script>
    <script src="{{asset('admin/libs/filepond-plugin-file-encode/filepond-plugin-file-encode.min.js')}}"></script>
    <script src="{{asset('admin/js/pages/form-file-upload.init.js')}}"></script>
    <script src="{{asset('admin/js/custom.js')}}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap5.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.9/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.2/js/buttons.print.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.2/js/buttons.html5.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="{{ asset('admin/js/pages/datatables.init.js') }}"></script>
    <script type="text/javascript">
        $('.new_Btn').click(function() {
            $('#html_btn').click();
        });
        $(document).ready(function() {
            toastr.options.timeOut = 10000;
            @if(Session::has('message') && count(Session::get('message')))
            @php
            $list = ''
            @endphp
            @foreach(Session::get('message') as $list)
            toastr.success("{{$list}}");
            @endforeach()
            @endif()
            @if(Session::has('error') && count(Session::get('error')))
            @php
            $list = ''
            @endphp
            @foreach(Session::get('error') as $errors)
            toastr.error("{{$errors}}");
            @endforeach()
            @endif()
        });
        @php
        $message = ''
        @endphp
        $(document).ready(function() {
            var multipleCancelButton = new Choices('#choices-multiple-remove-button', {
                removeItemButton: true,
                maxItemCount: 20,
                searchResultLimit: 20,
                renderChoiceLimit: 20
            });
        });
    </script>
</body>

</html>
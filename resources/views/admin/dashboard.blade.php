@extends('admin.layout')
@section('dashboard','active')

@section('content')
<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">Dashboard</h4>

            <div class="page-title-right">
                <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item"><a href="javascript: void(0);">Dashboards</a></li>
                    <li class="breadcrumb-item active">Dashboard</li>
                </ol>
            </div>

        </div>
    </div>
</div>
<!-- end page title -->

<div class="row">
    <div class="col">

        <div class="h-100">
            @if(getlogindetail('role')!='admin')

            <div class="row mb-3 pb-1">
                <div class="col-12">
                    <div class="d-flex align-items-lg-center flex-lg-row flex-column">
                        <div class="flex-grow-1">
                            <h4 class="fs-16 mb-1">Hello , {{getlogindetail('name')}} !</h4>
                            <p class="text-muted mb-0">Here's what's happening with your business today.</p>
                        </div>
                    </div><!-- end card header -->
                </div>
                <!--end col-->
            </div>
            @endif()

            <div class="row">
                <div class="col">

                    <div class="h-100">

                        <div class="row">
                            @switch(getlogindetail('role'))
                            @case('admin')
                            <h5>Hello {{getlogindetail('name')}} !</h5>

                        </div>



                    </div>

                    <!-- end row -->




                    @break


                    @endswitch()
                </div> <!-- end row-->
                <!--end row-->


            </div> <!-- end .h-100-->

        </div> <!-- end col -->

    </div>
</div>


@endsection()
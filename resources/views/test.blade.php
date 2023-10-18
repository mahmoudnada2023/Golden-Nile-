<div class="app-navbar-item ms-1 ms-md-4" id="kt_header_user_menu_toggle">
    <!--begin::Menu wrapper-->
    <div class="cursor-pointer symbol symbol-35px" data-kt-menu-trigger="{default: 'click', lg: 'hover'}"
        data-kt-menu-attach="parent" data-kt-menu-placement="bottom-end">
        <img src="{{ asset('admin.avif') }}" class="rounded-3" alt="user" />
    </div>
    <!--begin::User account menu-->
    <div class="dropdown-menu">
        <div class="menu-header-content bg-primary text-right">
            <div class="d-flex">
                <h6 class="dropdown-title mb-1 tx-15 text-white font-weight-semibold">Notifications</h6>
                <span
                    class="badge badge-pill badge-warning mr-auto my-auto float-left">Mark All Read</span>
            </div>
            <p class="dropdown-title-text subtext mb-0 text-white op-6 pb-0 tx-12 ">You have 4 unread
                Notifications</p>
        </div>
        <div class="main-notification-list Notification-scroll">
            <a class="d-flex p-3 border-bottom" href="#">
                <div class="notifyimg bg-pink">
                    <i class="la la-file-alt text-white"></i>
                </div>
                <div class="mr-3">
                    <h5 class="notification-label mb-1">New files available</h5>
                    <div class="notification-subtext">10 hour ago</div>
                </div>
                <div class="mr-auto">
                    <i class="las la-angle-left text-left text-muted"></i>
                </div>
            </a>
                <!--end::Menu item-->
            </div>
            <!--end::Menu-->
        </div>
        <!--end::Menu item-->


    </div>
    <!--end::User account menu-->
    <!--end::Menu wrapper-->
</div>

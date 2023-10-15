    <!--begin::Menu wrapper-->
    <div id="kt_app_sidebar_menu_wrapper" class="app-sidebar-wrapper">
        <!--begin::Scroll wrapper-->
        <div id="kt_app_sidebar_menu_scroll" class="scroll-y my-5 mx-3" data-kt-scroll="true" data-kt-scroll-activate="true"
            data-kt-scroll-height="auto" data-kt-scroll-dependencies="#kt_app_sidebar_logo, #kt_app_sidebar_footer"
            data-kt-scroll-wrappers="#kt_app_sidebar_menu" data-kt-scroll-offset="5px" data-kt-scroll-save-state="true">
            <!--begin::Menu-->
            <div class="menu menu-column menu-rounded menu-sub-indention fw-semibold fs-6" id="#kt_app_sidebar_menu"
                data-kt-menu="true" data-kt-menu-expand="false">
                <!--begin:Menu item-->
                <div data-kt-menu-trigger="click" class="menu-item here show menu-accordion">
                    <!--begin:Menu link-->
                    <span class="menu-link">
                        <span class="menu-icon">
                            <i class="ki-duotone ki-element-11 fs-2">
                                <span class="path1"></span>
                                <span class="path2"></span>
                                <span class="path3"></span>
                                <span class="path4"></span>
                            </i>
                        </span>
                        <span class="menu-title">{{ __('lang.dashboard') }}</span>
                        <span class="menu-arrow"></span>
                    </span>
                    <!--end:Menu link-->
                    <!--begin:Menu sub-->
                    <div class="menu-sub menu-sub-accordion">
                        @if (auth()->user()->can('View Admins'))
                            <!--begin:Menu item-->
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link active" href="{{ route('admins.index') }}">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title">{{ __('lang.admin') }}</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                        @endif
                        @if (auth()->user()->can('View Roles'))
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link active" href="{{ route('role.index') }}">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title">{{ __('lang.role') }}</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            @endif
                            <!--end:Menu item-->
                            <!--begin:Menu item-->
                            @if (auth()->user()->hasRole('superadmin'))
                                <div class="menu-item">
                                    <!--begin:Menu link-->
                                    <a class="menu-link active" href="{{ route('permessions.index') }}">
                                        <span class="menu-bullet">
                                            <span class="bullet bullet-dot"></span>
                                        </span>
                                        <span class="menu-title">{{ __('lang.permession') }}</span>
                                    </a>
                                    <!--end:Menu link-->
                                </div>
                            @endif
                            @if (auth()->user()->can('View User'))
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link active" href="{{ route('users.index') }}">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title">{{ __('lang.users') }}</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            @endif

                            @if (auth()->user()->can('View Subscriber'))
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link active" href="{{ route('subscribers.index') }}">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title">{{ __('lang.subscribers') }}</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            @endif

                            @if (auth()->user()->can('View Newsletter'))
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link active" href="{{ route('newsletters.index') }}">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title">{{ __('lang.newsletter') }}</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            @endif

                            @if (auth()->user()->can('View Coupon'))
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link active" href="{{ route('coupons.index') }}">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title">{{ __('lang.coupons') }}</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            @endif

                            @if (auth()->user()->can('View Slider'))
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link active" href="{{ route('sliders.index') }}">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title">{{ __('lang.sliders') }}</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            @endif

                            @if (auth()->user()->can('View Gallery'))
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link active" href="{{ route('galleries.index') }}">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title">{{ __('lang.galleries') }}</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            @endif

                            {{-- @if (auth()->user()->can('View Page'))
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link active" href="{{ route('pages.index') }}">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title">{{ __('lang.pages') }}</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            @endif --}}

                            @if (auth()->user()->can('View Facilite'))
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link active" href="{{ route('facilites.index') }}">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title">{{ __('lang.facilite') }}</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            @endif

                            @if (auth()->user()->can('View SideSeeing'))
                            <div class="menu-item">
                                <!--begin:Menu link-->
                                <a class="menu-link active" href="{{ route('side-seeings.index') }}">
                                    <span class="menu-bullet">
                                        <span class="bullet bullet-dot"></span>
                                    </span>
                                    <span class="menu-title">{{ __('lang.sideseeing') }}</span>
                                </a>
                                <!--end:Menu link-->
                            </div>
                            @endif

                        @if (auth()->user()->can('View Aboutus'))
                        <div class="menu-item">
                            <!--begin:Menu link-->
                            <a class="menu-link active" href="{{ route('aboutus.index') }}">
                                <span class="menu-bullet">
                                    <span class="bullet bullet-dot"></span>
                                </span>
                                <span class="menu-title">{{ __('lang.aboutus') }}</span>
                            </a>
                            <!--end:Menu link-->
                        </div>
                        @endif

                        @if (auth()->user()->can('View Messages'))
                        <div class="menu-item">
                            <!--begin:Menu link-->
                            <a class="menu-link active" href="{{ route('contactus.index') }}">
                                <span class="menu-bullet">
                                    <span class="bullet bullet-dot"></span>
                                </span>
                                <span class="menu-title">{{ __('lang.messages') }}</span>
                            </a>
                            <!--end:Menu link-->
                        </div>
                        @endif

                        @if (auth()->user()->can('View Social'))
                        <div class="menu-item">
                            <!--begin:Menu link-->
                            <a class="menu-link active" href="{{ route('socials.index') }}">
                                <span class="menu-bullet">
                                    <span class="bullet bullet-dot"></span>
                                </span>
                                <span class="menu-title">{{ __('lang.socials') }}</span>
                            </a>
                            <!--end:Menu link-->
                        </div>
                        @endif

                    </div>
                    <!--end:Menu sub-->
                </div>
                <!--end:Menu item-->
            </div>
            <!--end::Menu-->
        </div>
        <!--end::Scroll wrapper-->
    </div>
    <!--end::Menu wrapper-->

<div id="sidebar" class="c-sidebar c-sidebar-fixed c-sidebar-lg-show">

    <div class="c-sidebar-brand d-md-down-none">
        <a class="c-sidebar-brand-full h4" href="#">
            {{ trans('panel.site_title') }}
        </a>
    </div>

    <ul class="c-sidebar-nav">
        <li class="c-sidebar-nav-item">
            <a href="{{ route("admin.home") }}" class="c-sidebar-nav-link">
                <i class="c-sidebar-nav-icon fas fa-fw fa-tachometer-alt">

                </i>
                {{ trans('global.dashboard') }}
            </a>
        </li>
        @can('contact_access')
            <li class="c-sidebar-nav-item">
                <a href="{{ route("admin.contacts.index") }}" class="c-sidebar-nav-link {{ request()->is("admin/contacts") || request()->is("admin/contacts/*") ? "c-active" : "" }}">
                    <i class="fa-fw fas fa-phone c-sidebar-nav-icon">

                    </i>
                    {{ trans('cruds.contact.title') }}
                </a>
            </li>
        @endcan
        @can('divisions_management_access')
            <li class="c-sidebar-nav-dropdown {{ request()->is("admin/countries*") ? "c-show" : "" }} {{ request()->is("admin/categories*") ? "c-show" : "" }} {{ request()->is("admin/divisions*") ? "c-show" : "" }} {{ request()->is("admin/contact-informations*") ? "c-show" : "" }}">
                <a class="c-sidebar-nav-dropdown-toggle" href="#">
                    <i class="fa-fw fas fa-asterisk c-sidebar-nav-icon">

                    </i>
                    {{ trans('cruds.divisionsManagement.title') }}
                </a>
                <ul class="c-sidebar-nav-dropdown-items">
                    @can('country_access')
                        <li class="c-sidebar-nav-item">
                            <a href="{{ route("admin.countries.index") }}" class="c-sidebar-nav-link {{ request()->is("admin/countries") || request()->is("admin/countries/*") ? "c-active" : "" }}">
                                <i class="fa-fw fas fa-flag c-sidebar-nav-icon">

                                </i>
                                {{ trans('cruds.country.title') }}
                            </a>
                        </li>
                    @endcan
                    {{-- @can('category_access')
                        <li class="c-sidebar-nav-item">
                            <a href="{{ route("admin.categories.index") }}" class="c-sidebar-nav-link {{ request()->is("admin/categories") || request()->is("admin/categories/*") ? "c-active" : "" }}">
                                <i class="fa-fw fas fa-pen c-sidebar-nav-icon">

                                </i>
                                {{ trans('cruds.category.title') }}
                            </a>
                        </li>
                    @endcan --}}
                    @can('division_access')
                        <li class="c-sidebar-nav-item">
                            <a href="{{ route("admin.divisions.index") }}" class="c-sidebar-nav-link {{ request()->is("admin/divisions") || request()->is("admin/divisions/*") ? "c-active" : "" }}">
                                <i class="fa-fw fas fa-globe-americas c-sidebar-nav-icon">

                                </i>
                                {{ trans('cruds.division.title') }}
                            </a>
                        </li>
                    @endcan
                    @can('contact_information_access')
                        <li class="c-sidebar-nav-item">
                            <a href="{{ route("admin.contact-informations.index") }}" class="c-sidebar-nav-link {{ request()->is("admin/contact-informations") || request()->is("admin/contact-informations/*") ? "c-active" : "" }}">
                                <i class="fa-fw fas fa-phone-volume c-sidebar-nav-icon">

                                </i>
                                {{ trans('cruds.contactInformation.title') }}
                            </a>
                        </li>
                    @endcan
                </ul>
            </li>
        @endcan
        @can('social_responsibility_access')
            <li class="c-sidebar-nav-item">
                <a href="{{ route("admin.social-responsibilities.index") }}" class="c-sidebar-nav-link {{ request()->is("admin/social-responsibilities") || request()->is("admin/social-responsibilities/*") ? "c-active" : "" }}">
                    <i class="fa-fw fab fa-blackberry c-sidebar-nav-icon">

                    </i>
                    {{ trans('cruds.socialResponsibility.title') }}
                </a>
            </li>
        @endcan
        @can('newsroom_access')
            <li class="c-sidebar-nav-item">
                <a href="{{ route("admin.newsrooms.index") }}" class="c-sidebar-nav-link {{ request()->is("admin/newsrooms") || request()->is("admin/newsrooms/*") ? "c-active" : "" }}">
                    <i class="fa-fw far fa-newspaper c-sidebar-nav-icon">

                    </i>
                    {{ trans('cruds.newsroom.title') }}
                </a>
            </li>
        @endcan
        @can('resource_access')
            <li class="c-sidebar-nav-item">
                <a href="{{ route("admin.resources.index") }}" class="c-sidebar-nav-link {{ request()->is("admin/resources") || request()->is("admin/resources/*") ? "c-active" : "" }}">
                    <i class="fa-fw far fa-file-pdf c-sidebar-nav-icon">

                    </i>
                    {{ trans('cruds.resource.title') }}
                </a>
            </li>
        @endcan
        @can('slider_access')
            <li class="c-sidebar-nav-item">
                <a href="{{ route("admin.sliders.index") }}" class="c-sidebar-nav-link {{ request()->is("admin/sliders") || request()->is("admin/sliders/*") ? "c-active" : "" }}">
                    <i class="fa-fw fas fa-images c-sidebar-nav-icon">

                    </i>
                    {{ trans('cruds.slider.title') }}
                </a>
            </li>
        @endcan
        @can('search_access')
            <li class="c-sidebar-nav-item">
                <a href="{{ route("admin.searches.index") }}" class="c-sidebar-nav-link {{ request()->is("admin/searches") || request()->is("admin/searches/*") ? "c-active" : "" }}">
                    <i class="fa-fw fas fa-search c-sidebar-nav-icon">

                    </i>
                    {{ trans('cruds.search.title') }}
                </a>
            </li>
        @endcan
        @can('user_access')
            <li class="c-sidebar-nav-item">
                <a href="{{ route("admin.users.index") }}" class="c-sidebar-nav-link {{ request()->is("admin/users") || request()->is("admin/users/*") ? "c-active" : "" }}">
                    <i class="fa-fw fas fa-user c-sidebar-nav-icon">

                    </i>
                    {{ trans('cruds.user.title') }}
                </a>
            </li>
        @endcan
        {{-- @can('user_management_access')
            <li class="c-sidebar-nav-dropdown {{ request()->is("admin/permissions*") ? "c-show" : "" }} {{ request()->is("admin/roles*") ? "c-show" : "" }}">
                <a class="c-sidebar-nav-dropdown-toggle" href="#">
                    <i class="fa-fw fas fa-users c-sidebar-nav-icon">

                    </i>
                    {{ trans('cruds.userManagement.title') }}
                </a>
                <ul class="c-sidebar-nav-dropdown-items">
                    @can('permission_access')
                        <li class="c-sidebar-nav-item">
                            <a href="{{ route("admin.permissions.index") }}" class="c-sidebar-nav-link {{ request()->is("admin/permissions") || request()->is("admin/permissions/*") ? "c-active" : "" }}">
                                <i class="fa-fw fas fa-unlock-alt c-sidebar-nav-icon">

                                </i>
                                {{ trans('cruds.permission.title') }}
                            </a>
                        </li>
                    @endcan
                    @can('role_access')
                        <li class="c-sidebar-nav-item">
                            <a href="{{ route("admin.roles.index") }}" class="c-sidebar-nav-link {{ request()->is("admin/roles") || request()->is("admin/roles/*") ? "c-active" : "" }}">
                                <i class="fa-fw fas fa-briefcase c-sidebar-nav-icon">

                                </i>
                                {{ trans('cruds.role.title') }}
                            </a>
                        </li>
                    @endcan
                </ul>
            </li>
        @endcan --}}
        @if(file_exists(app_path('Http/Controllers/Auth/ChangePasswordController.php')))
            @can('profile_password_edit')
                <li class="c-sidebar-nav-item">
                    <a class="c-sidebar-nav-link {{ request()->is('profile/password') || request()->is('profile/password/*') ? 'c-active' : '' }}" href="{{ route('profile.password.edit') }}">
                        <i class="fa-fw fas fa-key c-sidebar-nav-icon">
                        </i>
                        {{ trans('global.change_password') }}
                    </a>
                </li>
            @endcan
        @endif
        <li class="c-sidebar-nav-item">
            <a href="#" class="c-sidebar-nav-link" onclick="event.preventDefault(); document.getElementById('logoutform').submit();">
                <i class="c-sidebar-nav-icon fas fa-fw fa-sign-out-alt">

                </i>
                {{ trans('global.logout') }}
            </a>
        </li>
    </ul>

</div>

<!-- need to remove -->
<li class="nav-item">
    <a href="{{ route('home') }}" class="nav-link {{ Request::is('home') ? 'active' : '' }}">
        <i class="nav-icon fas fa-home"></i>
        <p>Home</p>
    </a>
</li>

<li class="nav-item">
    <a href="{{ route('sliders.index') }}" class="nav-link {{ Request::is('sliders*') ? 'active' : '' }}">
        <i class="nav-icon fas fa-home"></i>
        <p>Sliders</p>
    </a>
</li>

<li class="nav-item">
    <a href="{{ route('settings.index') }}" class="nav-link {{ Request::is('settings*') ? 'active' : '' }}">
        <i class="nav-icon fas fa-home"></i>
        <p>Settings</p>
    </a>
</li>

<li class="nav-item">
    <a href="{{ route('galleries.index') }}" class="nav-link {{ Request::is('galleries*') ? 'active' : '' }}">
        <i class="nav-icon fas fa-home"></i>
        <p>Galleries</p>
    </a>
</li>

<li class="nav-item">
    <a href="{{ route('contactuses.index') }}" class="nav-link {{ Request::is('contactuses*') ? 'active' : '' }}">
        <i class="nav-icon fas fa-home"></i>
        <p>Contactuses</p>
    </a>
</li>

<li class="nav-item">
    <a href="{{ route('pages.index') }}" class="nav-link {{ Request::is('pages*') ? 'active' : '' }}">
        <i class="nav-icon fas fa-home"></i>
        <p>Pages</p>
    </a>
</li>

<li class="nav-item">
    <a href="{{ route('facilites.index') }}" class="nav-link {{ Request::is('facilites*') ? 'active' : '' }}">
        <i class="nav-icon fas fa-home"></i>
        <p>Facilites</p>
    </a>
</li>

<li class="nav-item">
    <a href="{{ route('sideSeeings.index') }}" class="nav-link {{ Request::is('sideSeeings*') ? 'active' : '' }}">
        <i class="nav-icon fas fa-home"></i>
        <p>Side Seeings</p>
    </a>
</li>

<li class="nav-item">
    <a href="{{ route('newsletters.index') }}" class="nav-link {{ Request::is('newsletters*') ? 'active' : '' }}">
        <i class="nav-icon fas fa-home"></i>
        <p>Newsletters</p>
    </a>
</li>

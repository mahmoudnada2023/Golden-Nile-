<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Paths
    |--------------------------------------------------------------------------
    |
    */

    'path' => [

        'migration'         => database_path('migrations/'),

        'model'             => app_path('Models/'),

        'datatables'        => app_path('DataTables/AdminPanel/'),

        'repository'        => app_path('Repositories/AdminPanel/'),

        'routes'            => base_path('routes/web.php'),

        'api_routes'        => base_path('routes/api.php'),

        'request'           => app_path('Http/Requests/AdminPanel/'),

        'api_request'       => app_path('Http/Requests/API/'),

        'controller'        => app_path('Http/Controllers/AdminPanel/'),

        'api_controller'    => app_path('Http/Controllers/API/'),

        'repository_test'   => base_path('tests/Repositories/AdminPanel/'),

        'api_test'          => base_path('tests/APIs/'),

        'tests'             => base_path('tests/'),

        'views'             => resource_path('views/'),

        'schema_files'      => resource_path('model_schemas/'),

        'templates_dir'     => resource_path('infyom/infyom-generator-templates/'),

        'seeder'            => database_path('seeds/'),

        'database_seeder'   => database_path('seeds/DatabaseSeeder.php'),

        'modelJs'           => resource_path('assets/js/models/'),

        'factory'           => database_path('factories/'),
    ],

    /*
    |--------------------------------------------------------------------------
    | Namespaces
    |--------------------------------------------------------------------------
    |
    */

    'namespace' => [

        'model'             => 'App\Models',

        'datatables'        => 'App\DataTables\AdminPanel',

        'repository'        => 'App\Repositories\AdminPanel',

        'controller'        => 'App\Http\Controllers\AdminPanel',

        'api_controller'    => 'App\Http\Controllers\API',

        'request'           => 'App\Http\Requests\AdminPanel',

        'api_request'       => 'App\Http\Requests\API',

        'repository_test'   => 'Tests\Repositories\AdminPanel',

        'api_test'          => 'Tests\APIs',

        'tests'             => 'Tests',
    ],

    /*
    |--------------------------------------------------------------------------
    | Templates
    |--------------------------------------------------------------------------
    |
    */

    'templates'         => 'coreui-templates',

    /*
    |--------------------------------------------------------------------------
    | Model extend class
    |--------------------------------------------------------------------------
    |
    */

    'model_extend_class' => 'Eloquent',

    /*
    |--------------------------------------------------------------------------
    | API routes prefix & version
    |--------------------------------------------------------------------------
    |
    */

    'api_prefix'  => 'api',

    'api_version' => 'v1',

    /*
    |--------------------------------------------------------------------------
    | Options
    |--------------------------------------------------------------------------
    |
    */

    'options' => [

        'localized' => true,

        'softDelete' => true,

        'save_schema_file' => true,

        'tables_searchable_default' => true,

        'repository_pattern' => true,

        'excluded_fields' => ['id'], // Array of columns that doesn't required while creating module
    ],

    /*
    |--------------------------------------------------------------------------
    | Prefixes
    |--------------------------------------------------------------------------
    |
    */

    'prefixes' => [

        'route' => 'adminPanel',  // using admin will create route('admin.?.index') type routes

        'path' => '',

        'view' => 'adminPanel',  // using backend will create return view('backend.?.index') type the backend views directory

        'public' => '',
    ],

    /*
    |--------------------------------------------------------------------------
    | Add-Ons
    |--------------------------------------------------------------------------
    |
    */

    'add_on' => [

        'swagger'       => false,

        'tests'         => true,

        'datatables'    => false,

        'menu'          => [

            'enabled'       => true,

            'menu_file'     => 'adminPanel/layouts/menu.blade.php',
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Timestamp Fields
    |--------------------------------------------------------------------------
    |
    */

    'timestamps' => [

        'enabled'       => true,

        'created_at'    => 'created_at',

        'updated_at'    => 'updated_at',

        'deleted_at'    => 'deleted_at',
    ],

    /*
    |--------------------------------------------------------------------------
    | Save model files to `App/Models` when use `--prefix`. see #208
    |--------------------------------------------------------------------------
    |
    */
    'ignore_model_prefix' => false,

    /*
    |--------------------------------------------------------------------------
    | Specify custom doctrine mappings as per your need
    |--------------------------------------------------------------------------
    |
    */
    'from_table' => [

        'doctrine_mappings' => [],
    ],

];

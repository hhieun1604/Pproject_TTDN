<?php

return [
    'sessions' => 'Sessions',
    'visitors' => 'Visitors',
    'pageviews' => 'Pageviews',
    'bounce_rate' => 'Bounce Rate',
    'page_session' => 'Pages/Session',
    'avg_duration' => 'Avg. Duration',
    'percent_new_session' => 'Percent new session',
    'new_users' => 'New visitors',
    'visits' => 'visits',
    'views' => 'views',
    'start_date_can_not_before_end_date' => 'Start date :start_date cannot be after end date :end_date',
    'not_set_up' => 'Widget is not set up',

    'settings' => [
        'title' => 'Google Analytics',
        'description' => 'Config Credentials for Google Analytics',
        'google_tag_id' => 'Google tag ID',
        'google_tag_id_placeholder' => 'Example: G-76NX8HY29D',
        'analytics_property_id' => 'Property ID for GA4',
        'analytics_property_id_description' => 'Google Analytics Property ID (GA4)',
        'json_credential' => 'Service Account Credentials',
        'json_credential_description' => 'Service Account Credentials',
        'credential_is_not_valid' => 'Analytics credentials is not valid. The document here: :url',
        'property_id_is_invalid' => 'Property ID is invalid. Check this: https://developers.google.com/analytics/devguides/reporting/data/v1/property-id',
        'wrong_configuration' => 'To view analytics you\'ll need to get a Google Analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: :url',
    ],

    'widget_analytics_page' => 'Top Most Visit Pages',
    'widget_analytics_browser' => 'Top Browsers',
    'widget_analytics_referrer' => 'Top Referrers',
    'widget_analytics_general' => 'Site Analytics',
    'missing_library_warning' => 'Analytics plugin error: Missing third-party libraries, please run "composer update" to install them.',
    'browser' => 'Browser',
    'url' => 'URL',
];
